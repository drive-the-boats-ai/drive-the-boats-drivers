#include "FreeRTOS.h"
#include "driver/i2c/drv_i2c.h"
#include "boatUtilityFunctions.c"
#include <stdio.h>


void I2C_IMU_Requester(void* pvParameters){
    //Set up frequency of operation
    unsigned short period = 5;     //update every 5ms (200Hz)
    TickType_t lastTime;
    lastTime = xTaskGetTickCount();
    

    SYS_MODULE_OBJ object_handle;
    uint16_t IMU_Address = 0x29;
    unsigned char transmitBuffer[8];
    
    PORTF &= ~(1<<8);
    
    
    
    setupI2C();
    setupIMU();
    
    
    while(1){
        //Read IMU Data
        
        
        
        
        vTaskDelayUntil(&lastTime, period/portTICK_PERIOD_MS);
    }
}


void GPS_Data_Parser(void* pvParameters){
    //Purpose is NOT to convert data, but to packetize it and relay it to @Baker Jones' routines
    
    
    
    
    
}


/* *****************************************************************************
 End of File
 */
