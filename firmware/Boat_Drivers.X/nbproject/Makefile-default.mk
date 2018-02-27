#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/default/framework/driver/adc/src/drv_adc_static.c ../src/system_config/default/framework/driver/oc/src/drv_oc_mapping.c ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c ../src/app.c ../src/main.c ../src/PWM_Control.c ../src/boatTasks.c ../src/boatUtilityFunctions.c ../../../../../harmony/v2_05_01/framework/driver/spi/src/dynamic/drv_spi.c ../../../../../harmony/v2_05_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../harmony/v2_05_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart.c ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart_byte_model.c ../../../../../harmony/v2_05_01/framework/osal/src/osal_freertos.c ../../../../../harmony/v2_05_01/framework/system/int/src/sys_int_pic32.c ../../../../../harmony/v2_05_01/framework/system/tmr/src/sys_tmr.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/croutine.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/list.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/queue.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/tasks.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/timers.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/event_groups.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/PWM_Control.o ${OBJECTDIR}/_ext/1360937237/boatTasks.o ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o ${OBJECTDIR}/_ext/1910691226/drv_spi.o ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/2000675449/drv_tmr.o ${OBJECTDIR}/_ext/1108647117/drv_usart.o ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o ${OBJECTDIR}/_ext/779019468/osal_freertos.o ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o ${OBJECTDIR}/_ext/429763166/sys_tmr.o ${OBJECTDIR}/_ext/1255444014/heap_1.o ${OBJECTDIR}/_ext/109632541/port.o ${OBJECTDIR}/_ext/109632541/port_asm.o ${OBJECTDIR}/_ext/686454577/croutine.o ${OBJECTDIR}/_ext/686454577/list.o ${OBJECTDIR}/_ext/686454577/queue.o ${OBJECTDIR}/_ext/686454577/tasks.o ${OBJECTDIR}/_ext/686454577/timers.o ${OBJECTDIR}/_ext/686454577/event_groups.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o.d ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/PWM_Control.o.d ${OBJECTDIR}/_ext/1360937237/boatTasks.o.d ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o.d ${OBJECTDIR}/_ext/1910691226/drv_spi.o.d ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/2000675449/drv_tmr.o.d ${OBJECTDIR}/_ext/1108647117/drv_usart.o.d ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o.d ${OBJECTDIR}/_ext/779019468/osal_freertos.o.d ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o.d ${OBJECTDIR}/_ext/429763166/sys_tmr.o.d ${OBJECTDIR}/_ext/1255444014/heap_1.o.d ${OBJECTDIR}/_ext/109632541/port.o.d ${OBJECTDIR}/_ext/109632541/port_asm.o.d ${OBJECTDIR}/_ext/686454577/croutine.o.d ${OBJECTDIR}/_ext/686454577/list.o.d ${OBJECTDIR}/_ext/686454577/queue.o.d ${OBJECTDIR}/_ext/686454577/tasks.o.d ${OBJECTDIR}/_ext/686454577/timers.o.d ${OBJECTDIR}/_ext/686454577/event_groups.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/PWM_Control.o ${OBJECTDIR}/_ext/1360937237/boatTasks.o ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o ${OBJECTDIR}/_ext/1910691226/drv_spi.o ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/2000675449/drv_tmr.o ${OBJECTDIR}/_ext/1108647117/drv_usart.o ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o ${OBJECTDIR}/_ext/779019468/osal_freertos.o ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o ${OBJECTDIR}/_ext/429763166/sys_tmr.o ${OBJECTDIR}/_ext/1255444014/heap_1.o ${OBJECTDIR}/_ext/109632541/port.o ${OBJECTDIR}/_ext/109632541/port_asm.o ${OBJECTDIR}/_ext/686454577/croutine.o ${OBJECTDIR}/_ext/686454577/list.o ${OBJECTDIR}/_ext/686454577/queue.o ${OBJECTDIR}/_ext/686454577/tasks.o ${OBJECTDIR}/_ext/686454577/timers.o ${OBJECTDIR}/_ext/686454577/event_groups.o

# Source Files
SOURCEFILES=../src/system_config/default/framework/driver/adc/src/drv_adc_static.c ../src/system_config/default/framework/driver/oc/src/drv_oc_mapping.c ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c ../src/app.c ../src/main.c ../src/PWM_Control.c ../src/boatTasks.c ../src/boatUtilityFunctions.c ../../../../../harmony/v2_05_01/framework/driver/spi/src/dynamic/drv_spi.c ../../../../../harmony/v2_05_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../harmony/v2_05_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart.c ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart_byte_model.c ../../../../../harmony/v2_05_01/framework/osal/src/osal_freertos.c ../../../../../harmony/v2_05_01/framework/system/int/src/sys_int_pic32.c ../../../../../harmony/v2_05_01/framework/system/tmr/src/sys_tmr.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/croutine.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/list.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/queue.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/tasks.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/timers.c ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/event_groups.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFG100
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -DRealICEPlatformTool=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=RealICEPlatformTool=1,-I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default"
	
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -DRealICEPlatformTool=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=RealICEPlatformTool=1,-I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default"
	
${OBJECTDIR}/_ext/109632541/port_asm.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/109632541" 
	@${RM} ${OBJECTDIR}/_ext/109632541/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/109632541/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/109632541/port_asm.o.ok ${OBJECTDIR}/_ext/109632541/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/109632541/port_asm.o.d" "${OBJECTDIR}/_ext/109632541/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -DRealICEPlatformTool=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/109632541/port_asm.o.d"  -o ${OBJECTDIR}/_ext/109632541/port_asm.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/109632541/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=RealICEPlatformTool=1,-I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default"
	
else
${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/340578644/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2,-I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default"
	
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--gdwarf-2,-I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default"
	
${OBJECTDIR}/_ext/109632541/port_asm.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/109632541" 
	@${RM} ${OBJECTDIR}/_ext/109632541/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/109632541/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/109632541/port_asm.o.ok ${OBJECTDIR}/_ext/109632541/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/109632541/port_asm.o.d" "${OBJECTDIR}/_ext/109632541/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/109632541/port_asm.o.d"  -o ${OBJECTDIR}/_ext/109632541/port_asm.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/109632541/port_asm.o.asm.d",--gdwarf-2,-I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/system_config/default"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o ../src/system_config/default/framework/driver/oc/src/drv_oc_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1047219354/drv_oc_static.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/PWM_Control.o: ../src/PWM_Control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PWM_Control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PWM_Control.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/PWM_Control.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/PWM_Control.o.d" -o ${OBJECTDIR}/_ext/1360937237/PWM_Control.o ../src/PWM_Control.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/boatTasks.o: ../src/boatTasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatTasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatTasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/boatTasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/boatTasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/boatTasks.o ../src/boatTasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o: ../src/boatUtilityFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o.d" -o ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o ../src/boatUtilityFunctions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1910691226/drv_spi.o: ../../../../../harmony/v2_05_01/framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1910691226" 
	@${RM} ${OBJECTDIR}/_ext/1910691226/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1910691226/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1910691226/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1910691226/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1910691226/drv_spi.o ../../../../../harmony/v2_05_01/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o: ../../../../../harmony/v2_05_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/369999254" 
	@${RM} ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o ../../../../../harmony/v2_05_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2000675449/drv_tmr.o: ../../../../../harmony/v2_05_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2000675449" 
	@${RM} ${OBJECTDIR}/_ext/2000675449/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000675449/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2000675449/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/2000675449/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/2000675449/drv_tmr.o ../../../../../harmony/v2_05_01/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1108647117/drv_usart.o: ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1108647117" 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1108647117/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1108647117/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1108647117/drv_usart.o ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o: ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1108647117" 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o.d" -o ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart_byte_model.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/779019468/osal_freertos.o: ../../../../../harmony/v2_05_01/framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/779019468" 
	@${RM} ${OBJECTDIR}/_ext/779019468/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/779019468/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/779019468/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/779019468/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/779019468/osal_freertos.o ../../../../../harmony/v2_05_01/framework/osal/src/osal_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/712366540/sys_int_pic32.o: ../../../../../harmony/v2_05_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/712366540" 
	@${RM} ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/712366540/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/712366540/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o ../../../../../harmony/v2_05_01/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429763166/sys_tmr.o: ../../../../../harmony/v2_05_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429763166" 
	@${RM} ${OBJECTDIR}/_ext/429763166/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/429763166/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429763166/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/429763166/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/429763166/sys_tmr.o ../../../../../harmony/v2_05_01/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1255444014/heap_1.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1255444014" 
	@${RM} ${OBJECTDIR}/_ext/1255444014/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255444014/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1255444014/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1255444014/heap_1.o.d" -o ${OBJECTDIR}/_ext/1255444014/heap_1.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/109632541/port.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/109632541" 
	@${RM} ${OBJECTDIR}/_ext/109632541/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/109632541/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/109632541/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/109632541/port.o.d" -o ${OBJECTDIR}/_ext/109632541/port.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/croutine.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/croutine.o.d" -o ${OBJECTDIR}/_ext/686454577/croutine.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/list.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/list.o.d" -o ${OBJECTDIR}/_ext/686454577/list.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/queue.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/queue.o.d" -o ${OBJECTDIR}/_ext/686454577/queue.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/tasks.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/tasks.o.d" -o ${OBJECTDIR}/_ext/686454577/tasks.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/timers.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/timers.o.d" -o ${OBJECTDIR}/_ext/686454577/timers.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/event_groups.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DRealICEPlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/event_groups.o.d" -o ${OBJECTDIR}/_ext/686454577/event_groups.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_mapping.o ../src/system_config/default/framework/driver/oc/src/drv_oc_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1047219354/drv_oc_static.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mz.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mz.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/PWM_Control.o: ../src/PWM_Control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PWM_Control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PWM_Control.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/PWM_Control.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/PWM_Control.o.d" -o ${OBJECTDIR}/_ext/1360937237/PWM_Control.o ../src/PWM_Control.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/boatTasks.o: ../src/boatTasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatTasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatTasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/boatTasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/boatTasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/boatTasks.o ../src/boatTasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o: ../src/boatUtilityFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o.d" -o ${OBJECTDIR}/_ext/1360937237/boatUtilityFunctions.o ../src/boatUtilityFunctions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1910691226/drv_spi.o: ../../../../../harmony/v2_05_01/framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1910691226" 
	@${RM} ${OBJECTDIR}/_ext/1910691226/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1910691226/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1910691226/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1910691226/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1910691226/drv_spi.o ../../../../../harmony/v2_05_01/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o: ../../../../../harmony/v2_05_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/369999254" 
	@${RM} ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/369999254/drv_spi_sys_queue_fifo.o ../../../../../harmony/v2_05_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2000675449/drv_tmr.o: ../../../../../harmony/v2_05_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2000675449" 
	@${RM} ${OBJECTDIR}/_ext/2000675449/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2000675449/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2000675449/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/2000675449/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/2000675449/drv_tmr.o ../../../../../harmony/v2_05_01/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1108647117/drv_usart.o: ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1108647117" 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1108647117/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1108647117/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1108647117/drv_usart.o ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o: ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1108647117" 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o.d" -o ${OBJECTDIR}/_ext/1108647117/drv_usart_byte_model.o ../../../../../harmony/v2_05_01/framework/driver/usart/src/dynamic/drv_usart_byte_model.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/779019468/osal_freertos.o: ../../../../../harmony/v2_05_01/framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/779019468" 
	@${RM} ${OBJECTDIR}/_ext/779019468/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/779019468/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/779019468/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/779019468/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/779019468/osal_freertos.o ../../../../../harmony/v2_05_01/framework/osal/src/osal_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/712366540/sys_int_pic32.o: ../../../../../harmony/v2_05_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/712366540" 
	@${RM} ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/712366540/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/712366540/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/712366540/sys_int_pic32.o ../../../../../harmony/v2_05_01/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/429763166/sys_tmr.o: ../../../../../harmony/v2_05_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/429763166" 
	@${RM} ${OBJECTDIR}/_ext/429763166/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/429763166/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/429763166/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/429763166/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/429763166/sys_tmr.o ../../../../../harmony/v2_05_01/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1255444014/heap_1.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1255444014" 
	@${RM} ${OBJECTDIR}/_ext/1255444014/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255444014/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1255444014/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/1255444014/heap_1.o.d" -o ${OBJECTDIR}/_ext/1255444014/heap_1.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/109632541/port.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/109632541" 
	@${RM} ${OBJECTDIR}/_ext/109632541/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/109632541/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/109632541/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/109632541/port.o.d" -o ${OBJECTDIR}/_ext/109632541/port.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/croutine.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/croutine.o.d" -o ${OBJECTDIR}/_ext/686454577/croutine.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/list.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/list.o.d" -o ${OBJECTDIR}/_ext/686454577/list.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/queue.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/queue.o.d" -o ${OBJECTDIR}/_ext/686454577/queue.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/tasks.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/tasks.o.d" -o ${OBJECTDIR}/_ext/686454577/tasks.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/timers.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/timers.o.d" -o ${OBJECTDIR}/_ext/686454577/timers.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/686454577/event_groups.o: ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/686454577" 
	@${RM} ${OBJECTDIR}/_ext/686454577/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/686454577/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/686454577/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../harmony/v2_05_01/framework" -I"../src/system_config/default/framework" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/include" -I"../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MMD -MF "${OBJECTDIR}/_ext/686454577/event_groups.o.d" -o ${OBJECTDIR}/_ext/686454577/event_groups.o ../../../../../harmony/v2_05_01/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../harmony/v2_05_01/bin/framework/peripheral/PIC32MZ2048EFG100_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -DRealICEPlatformTool=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\harmony\v2_05_01\bin\framework\peripheral\PIC32MZ2048EFG100_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=RealICEPlatformTool=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../harmony/v2_05_01/bin/framework/peripheral/PIC32MZ2048EFG100_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\harmony\v2_05_01\bin\framework\peripheral\PIC32MZ2048EFG100_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Boat_Drivers.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
