#include "FreeRTOS.h"
#include "driver/i2c/drv_i2c.h"
#include <stdbool.h>
#include <sys/appio.h>

struct color_BGR{
    unsigned char brightness;
    unsigned char blue;
    unsigned char green;
    unsigned char red;
};


void i2cSendData(unsigned char, unsigned char, unsigned char*, unsigned short);
void setupI2C();
void setupSPI();
void i2c1Stop();

int sendAPA102(struct color_BGR);
int writeStrip(struct color_BGR*, unsigned int numLEDs);


void setupI2C(){
    
    I2C1CON = 0x8200;
    // | with 1<<3 to put into receive mode
    // | with 1<<2 to send stop signal
    // | with 1<<1 to send repeated start signal
    // | with 1 to send start signal
    I2C1BRG = 0x030;
}


void setupIMU(){
    unsigned char data[8] = {0x3D, 0x0C};   //Set mode to Fusion: NDOF
    i2cSendData(0x29, 0, data, 2);
    //__builtin_software_breakpoint();
    i2c1Stop();
    //__builtin_software_breakpoint();
    
}

void i2c1Stop(){
    while(I2C1STATbits.ACKSTAT || I2C1STATbits.TRSTAT){ //Wait if an ACK has not been received or a transmission is in progress
    }
    I2C1CONbits.PEN = 1;    //Trigger stop frame  
}




void i2cReadData(unsigned char addr, unsigned char reg_addr, unsigned char *buffer, unsigned short len){
    unsigned char sendData[1] = {reg_addr};
    i2cSendData(addr, 0, sendData, 1);  //Sends register address with read request to the device
    i2cSendData(addr, 1, sendData, 0);
    while(len > 0){
        I2C1CON |= 1<<3;            //Enter receive mode
        while(!(I2C1CON & 1<<3)){   //Wait for receiving to end
        }
        *buffer = I2C1RCV;
        buffer++; 
        len--;
        if(len != 0){
            I2C1CON &= ~(1<<5);    //Send ACK
            I2C1CON |= 1<<4;
        }
        else{
            I2C1CON |= 1 << 5;      //Send NACK to end
            I2C1CON |= 1 << 4;
            
        }
    }
    while(!(I2C1CON & 1<<4)){    //Wait for NACK to finish
    }
    I2C1CON |= 1 << 2;  //Send stop
}


void i2cSendData(unsigned char addr, unsigned char rw, unsigned char *data, unsigned short len){    
    unsigned char run = 1;
    unsigned short state = 0;
    
    unsigned char pause = 1;
    
    //Format address
    addr = addr << 1;
    if(rw){     //rw=0: Write, rw=1: Read
        addr |= 1;
    }
    else{
        addr &= ~(1);
    }
    
    while(run){
        switch(state){
            case 0:
                if(!(I2C1STAT & 1<< 15)){
                    //Start transaction
                    I2C1CON |= 1;   //Send "Start"
                    state = 1;
                }
                break;
                
            case 1:
                if(!(I2C1CON & 1)){ //If the start frame is done
                    //Send address (already combined with r/w)
                    I2C1TRN = addr;
                    state = 2;
                    
                }
                break;
            
            case 2:
                if(!(I2C1STAT & 1<<15) && !(I2C1STAT & 1<<14)){   //If an ack has been received and we're not transmitting atm...
                    I2C1TRN = *data;                            //Send the next byte
                    data++;
                    len--;
                }
                /*
                if(len == 1 && pause == 1){
                    __builtin_software_breakpoint();
                    pause = 2;
                }
                if(len == 0 && pause == 2){
                    __builtin_software_breakpoint();
                }
                */
                if(len == 0){       //If all of the bytes have been sent, move to state 3 (end sequence)
                    run = 0;
                }
                break;
        }
    }
}




void setupSPI(){
    SPI2CONCLR = 1<<15;   //Turn it off/reset
    SPI2BUF = 0;          //Clear the input buffer
    SPI2CONSET = 1<<13;   //Continue when in idle mode
    SPI2CONCLR = 1<<12;   //Module controls TRIS register
    //I think 32-bit mode will work, but it may require the 8-bit setting
    SPI2CONSET = 1<<11;
    SPI2CONCLR = 1<<9;    //Sample in the middle
    SPI2CONSET = 1<<8;       //Data changes on rising clock edge
    SPI2CONCLR = 1<<7;    //Not using SS for the LEDs
    SPI2CONCLR = 1<<6;    //Clock is active high
    SPI2CONSET = 1<<5;       //Master mode
    SPI2CONSET = 1<<15;   //Turn it on
    SPI2BRG = 10;          //Clock divider set to 10 (PBCLK2 = 40MHz => 4MHz SPI clock)
}

int sendAPA102(struct color_BGR color){
    if(SPI2STAT & 1<<11){   //Only transmit if the SPI register is idle
        return -1;
    }
    else{
        color.brightness += 0xE0;
        SPI2BUF = *(unsigned long*)(&color);
        return 0;
    }
}


int writeStrip(struct color_BGR* colors, unsigned int numLEDs){
    unsigned int errors = 0;
    struct color_BGR zeroFrame;
    zeroFrame.brightness -= 0xE0;
    zeroFrame.blue = 0;
    zeroFrame.green = 0;
    zeroFrame.red = 0;
    unsigned int endFrames = numLEDs/64+1;
    
    while(sendAPA102(zeroFrame) != 0){}    //Start frame: 32 Bits of zeros
    
    while(numLEDs != 0 & errors < 10){
        if(sendAPA102(*colors)==0){     //If the color has been transmitted with no issues
            colors++;
            numLEDs--;
        }
        else{
            errors++;
        }
    }
    
    while(sendAPA102(zeroFrame) != 0){}         //End frame: 32 Bits of zeros
    
    for(;endFrames > 0; endFrames--){           //Reset frame: >= numLEDs/64 bits of zeros
        while(sendAPA102(zeroFrame) != 0){}
    }
    return errors;
}


/* *****************************************************************************
 End of File
 */
