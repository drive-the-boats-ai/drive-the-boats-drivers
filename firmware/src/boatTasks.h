/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _BOAT_TASKS_H    /* Guard against multiple inclusion */
#define _BOAT_TASKS_H


#include "boatTasks.c"


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif
    
    void I2C_IMU_Requester(void* pvParameters);
    void GPS_Data_Parser(void* pvParameters);
    
    
    
    
    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
