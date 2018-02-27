
#include "peripheral/oc/plib_oc.h"


void configureTmr2(){
    //Configure timer 2 for PWM Signals to servos
    //Timer input frequency must be 100MHz
    //Configure timer period to be 25MHz
    T2CON = 0x8030;             //b'1000 0000 0011 0000'
    PR2 = 62500;                //Set timer frequency to 50Hz
}


void setupRudder(){
    PLIB_OC_Disable(OC_ID_1);
    PLIB_OC_TimerSelect(OC_ID_1, OC_TIMER_16BIT_TMR2);
    PLIB_OC_ModeSelect(OC_ID_1, OC_COMPARE_PWM_MODE_WITHOUT_FAULT_PROTECTION);
    PLIB_OC_BufferSizeSelect(OC_ID_1, OC_BUFFER_SIZE_16BIT);
    PLIB_OC_Buffer16BitSet(OC_ID_1, 4687);
    PLIB_OC_PulseWidth16BitSet(OC_ID_1, 4687);
    PLIB_OC_Enable(OC_ID_1);
}

void setupThrottle(){
    PLIB_OC_Disable(OC_ID_2);
    PLIB_OC_TimerSelect(OC_ID_2, OC_TIMER_16BIT_TMR2);
    PLIB_OC_ModeSelect(OC_ID_2, OC_COMPARE_PWM_MODE_WITHOUT_FAULT_PROTECTION);
    PLIB_OC_BufferSizeSelect(OC_ID_2, OC_BUFFER_SIZE_16BIT);
    PLIB_OC_Buffer16BitSet(OC_ID_2, 4687);
    PLIB_OC_PulseWidth16BitSet(OC_ID_2, 4687);
    PLIB_OC_Enable(OC_ID_2);
}

void setRudder(unsigned short value){
    if(value <= 6250 && value >= 3125){
        PLIB_OC_PulseWidth16BitSet(OC_ID_1, value);
    }
}


void setThrottle(unsigned short value){
    if(value <= 6250 && value >= 3125){
        PLIB_OC_PulseWidth16BitSet(OC_ID_2, value);
    }
}


/* *****************************************************************************
 End of File
 */
