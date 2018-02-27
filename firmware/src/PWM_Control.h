#ifndef _PWM_CTRL    /* Guard against multiple inclusion */
#define _PWM_CTRL


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

#include "PWM_Control.c"

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif


    /* ************************************************************************** */
    /* ************************************************************************** */
    /* Section: Constants                                                         */
    /* ************************************************************************** */
    /* ************************************************************************** */

    #define CENTER_PULSE    4687
    #define MAX_PULSE   6250
    #define MIN_PULSE   3125
    
    /*
     Section: Functions
     */
    
    void configureTmr2();
    void setupRudder();
    void setupThrottle();
    void setRudder(unsigned short value);
    void setThrottle(unsigned short value);


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /*_PWM_CTRL_H*/

/* *****************************************************************************
 End of File
 */
