#include "FreeRTOS.h"
#include "driver/i2c/drv_i2c.h"
#include <stdbool.h>
#include <sys/appio.h>




void i2cSendData(unsigned char, unsigned char, unsigned char*, unsigned short);
void setupI2C();


void setupI2C(){
    
    I2C1CON = 0x00008050;
    I2C1BRG = 0x030;
    // | with 1<<3 to put into receive mode
    // | with 1<<2 to send stop signal
    // | with 1<<1 to send repeated start signal
    // | with 1 to send start signal
}


void setupIMU(){
    unsigned char data[8] = {0x3D, 0x0B};
    i2cSendData(0x29, 0, data, 2);
    
}


void i2cSendData(unsigned char addr, unsigned char rw, unsigned char *data, unsigned short len){
    
    
    unsigned char run = 1;
    unsigned short state = 0;
    
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
                //Start transaction
                I2C1CON |= 1;   //Send "Start"
                state = 1;
                break;
                
            case 1:
                if(!(I2C1CON & 1)){ //If the start frame is done
                    //Send address (already combined with r/w)
                    I2C1TRN = addr;
                    state = 2;
                    //__builtin_software_breakpoint();
                }
                break;
            
            case 2:
                if(!(I2C1CON & 1)){
                    I2C1TRN = *data;
                    data++;
                    len--;
                }
                if(len == 0){
                    state = 3;
                }
                break;
            
            case 3:
                //If the data transmission frame is done and we're in write mode, then send the stop frame
                if(!(I2C1STAT & 1) && (rw)){
                    I2C1CON |= 1<<2;    //Trigger stop frame
                    run = 0;
                }
                break;
        }
    }
}








/* *****************************************************************************
 End of File
 */
