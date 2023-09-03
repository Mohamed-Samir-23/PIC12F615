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
FINAL_IMAGE=${DISTDIR}/PIC12F615.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PIC12F615.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=02-MCAL/01-DIO/MDIO_PROGRAM.c 05-APP/APP.c 02-MCAL/04-ADC/MADC_PROGRAM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1 ${OBJECTDIR}/05-APP/APP.p1 ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1.d ${OBJECTDIR}/05-APP/APP.p1.d ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1 ${OBJECTDIR}/05-APP/APP.p1 ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1

# Source Files
SOURCEFILES=02-MCAL/01-DIO/MDIO_PROGRAM.c 05-APP/APP.c 02-MCAL/04-ADC/MADC_PROGRAM.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/PIC12F615.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=12F615
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1: 02-MCAL/01-DIO/MDIO_PROGRAM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/02-MCAL/01-DIO" 
	@${RM} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1.d 
	@${RM} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1 02-MCAL/01-DIO/MDIO_PROGRAM.c 
	@-${MV} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.d ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/05-APP/APP.p1: 05-APP/APP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/05-APP" 
	@${RM} ${OBJECTDIR}/05-APP/APP.p1.d 
	@${RM} ${OBJECTDIR}/05-APP/APP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/05-APP/APP.p1 05-APP/APP.c 
	@-${MV} ${OBJECTDIR}/05-APP/APP.d ${OBJECTDIR}/05-APP/APP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/05-APP/APP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1: 02-MCAL/04-ADC/MADC_PROGRAM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/02-MCAL/04-ADC" 
	@${RM} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1.d 
	@${RM} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1 02-MCAL/04-ADC/MADC_PROGRAM.c 
	@-${MV} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.d ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1: 02-MCAL/01-DIO/MDIO_PROGRAM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/02-MCAL/01-DIO" 
	@${RM} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1.d 
	@${RM} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1 02-MCAL/01-DIO/MDIO_PROGRAM.c 
	@-${MV} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.d ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/02-MCAL/01-DIO/MDIO_PROGRAM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/05-APP/APP.p1: 05-APP/APP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/05-APP" 
	@${RM} ${OBJECTDIR}/05-APP/APP.p1.d 
	@${RM} ${OBJECTDIR}/05-APP/APP.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/05-APP/APP.p1 05-APP/APP.c 
	@-${MV} ${OBJECTDIR}/05-APP/APP.d ${OBJECTDIR}/05-APP/APP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/05-APP/APP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1: 02-MCAL/04-ADC/MADC_PROGRAM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/02-MCAL/04-ADC" 
	@${RM} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1.d 
	@${RM} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1 02-MCAL/04-ADC/MADC_PROGRAM.c 
	@-${MV} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.d ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/02-MCAL/04-ADC/MADC_PROGRAM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/PIC12F615.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PIC12F615.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -mrom=default,-300-3fe -mram=default,-0-0,-65-70,-80-80,-f0-f0  $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PIC12F615.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/PIC12F615.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/PIC12F615.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PIC12F615.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -Os -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"01-LIB" -I"02-MCAL" -I"03-HAL" -I"05-APP" -I"02-MCAL/01-DIO" -I"02-MCAL/04-ADC" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PIC12F615.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
