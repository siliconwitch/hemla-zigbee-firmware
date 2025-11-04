####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 19                                              #
####################################################################

BASE_SDK_PATH = /Users/raj/Downloads/simplicity-sdk
BASE_PKG_PATH = /Users/raj/.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2024.6.3

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_ZIGBEE_CUSTOM_MAC_FILTER_TABLE_SIZE=15' \
 '-DMGM210PB22JIA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DSEGGER_RTT_ALIGNMENT=1024' \
 '-DCORTEXM3=1' \
 '-DCORTEXM3_EFM32_MICRO=1' \
 '-DCORTEXM3_EFR32=1' \
 '-DPHY_RAIL=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_MEMORY_POOL_LIGHT=1' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DUSE_NVM3=1' \
 '-DSL_ZIGBEE_AF_NCP=1' \
 '-DEMBER_SERIAL1_RTSCTS=1' \
 '-DEZSP_UART=1' \
 '-DSL_ZIGBEE_MULTI_NETWORK_STRIPPED=1' \
 '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1' \
 '-DSL_ZIGBEE_STACK_COMPLIANCE_REVISION=22' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"' \
 '-DUC_BUILD=1'

ASM_DEFS += \
 '-DSL_ZIGBEE_CUSTOM_MAC_FILTER_TABLE_SIZE=15' \
 '-DMGM210PB22JIA=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DSEGGER_RTT_ALIGNMENT=1024' \
 '-DCORTEXM3=1' \
 '-DCORTEXM3_EFM32_MICRO=1' \
 '-DCORTEXM3_EFR32=1' \
 '-DPHY_RAIL=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_MEMORY_POOL_LIGHT=1' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DUSE_NVM3=1' \
 '-DSL_ZIGBEE_AF_NCP=1' \
 '-DEMBER_SERIAL1_RTSCTS=1' \
 '-DEZSP_UART=1' \
 '-DSL_ZIGBEE_MULTI_NETWORK_STRIPPED=1' \
 '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1' \
 '-DSL_ZIGBEE_STACK_COMPLIANCE_REVISION=22' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"' \
 '-DUC_BUILD=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Include \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/bootloader \
 -I$(COPIED_SDK_PATH)/platform/bootloader/api \
 -I$(COPIED_SDK_PATH)/util/plugin/byte_utilities \
 -I$(COPIED_SDK_PATH)/platform/service/clock_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/service/clock_manager/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/driver/debug/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc/s2_signals \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/fem_util \
 -I$(COPIED_SDK_PATH)/platform/service/interrupt_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/service/interrupt_manager/inc/arm \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal_wdog/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_ncp_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/include \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/library \
 -I$(COPIED_SDK_PATH)/platform/service/memory_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/service/memory_manager/src \
 -I$(COPIED_SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(COPIED_SDK_PATH)/platform/service/power_manager/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/common \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/wmbus \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/sidewalk \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ieee802154 \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg21 \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src \
 -I$(COPIED_SDK_PATH)/util/plugin/security_manager \
 -I$(COPIED_SDK_PATH)/util/third_party/segger/systemview/SEGGER \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform/service/token_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/framework \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/em260 \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/xncp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zigbee \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin \
 -I$(COPIED_SDK_PATH)/protocol/zigbee \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack \
 -I$(COPIED_SDK_PATH)/platform/radio/mac/rail_mux \
 -I$(COPIED_SDK_PATH)/platform/radio/mac \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/mac \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/ipc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(COPIED_SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(COPIED_SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_config_mgm210pb22jia_gcc.a \
 $(COPIED_SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_module_efr32xg21_gcc_release.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-debug-basic/release_singlenetwork/libzigbee-debug-basic.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-debug-extended/release_singlenetwork/libzigbee-debug-extended.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-gp-library/release_singlenetwork/libncp-gp-library.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-gp/release_singlenetwork/libzigbee-gp.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-pro-library/release_singlenetwork/libncp-pro-library.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-ncp-uart/release_singlenetwork/libzigbee-ncp-uart.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-pro-stack/release_singlenetwork/libzigbee-pro-stack.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-r22-support/release_singlenetwork/libzigbee-r22-support.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-source-route-library/release_singlenetwork/libncp-source-route-library.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-source-route/release_singlenetwork/libzigbee-source-route.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-zll-library/release_singlenetwork/libncp-zll-library.a \
 $(COPIED_SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-zll/release_singlenetwork/libzigbee-zll.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c18 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++17 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--wrap=_free_r -Wl,--wrap=_malloc_r -Wl,--wrap=_calloc_r -Wl,--wrap=_realloc_r \
 -Wl,--gc-sections \
 -Wl,--no-warn-rwx-segments


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	@$(POSIX_TOOL_PATH)echo 'Exporting GBL file'
	@$(POST_BUILD_EXE) gbl3 create $(OUTPUT_DIR)/$(PROJECTNAME).gbl --app $(OUTPUT_DIR)/$(PROJECTNAME).s37

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(COPIED_SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o: $(COPIED_SDK_PATH)/platform/common/src/sl_core_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_core_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_core_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o: $(COPIED_SDK_PATH)/platform/common/src/sl_syscalls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_syscalls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_syscalls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.o

$(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o: $(COPIED_SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_rmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_rmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_rmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_se.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_wdog.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_wdog.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_wdog.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o: $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o: $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o: $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o: $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o: $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.o: $(COPIED_SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o: $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o: $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o

$(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o: $(COPIED_SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/faults.s
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/faults.s'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/faults.s
ASMDEPS_s += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.o: $(COPIED_SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_printf/src/sl_legacy_printf.o: $(COPIED_SDK_PATH)/platform/service/legacy_printf/src/sl_legacy_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_printf/src/sl_legacy_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_printf/src/sl_legacy_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_printf/src/sl_legacy_printf.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_printf/src/sl_legacy_printf.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o: $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o: $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o: $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o: $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o: $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o: $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing_generic.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing_generic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing_generic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing_generic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing_generic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing_generic.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/em260-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/em260-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/em260-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_stack_sleep.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_stack_sleep.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_stack_sleep.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_stack_sleep.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_stack_sleep.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_stack_sleep.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/counters/counters.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters/counters.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters/counters.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters/counters.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/counters/counters.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/counters/counters.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_access.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/zigbee_token_interface_stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/zigbee_token_interface_stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/zigbee_token_interface_stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/zigbee_token_interface_stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/zigbee_token_interface_stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/zigbee_token_interface_stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/security-address-cache.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.o

$(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.o: $(COPIED_SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.o

$(OUTPUT_DIR)/sdk/util/plugin/security_manager/security_manager.o: $(COPIED_SDK_PATH)/util/plugin/security_manager/security_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/plugin/security_manager/security_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/plugin/security_manager/security_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/util/plugin/security_manager/security_manager.d
OBJS += $(OUTPUT_DIR)/sdk/util/plugin/security_manager/security_manager.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o: $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o: $(COPIED_SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_power_manager_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_phy_select.o: autogen/sl_rail_util_ieee802154_phy_select.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_rail_util_ieee802154_phy_select.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_rail_util_ieee802154_phy_select.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_phy_select.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_phy_select.o

$(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_stack_event.o: autogen/sl_rail_util_ieee802154_stack_event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_rail_util_ieee802154_stack_event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_rail_util_ieee802154_stack_event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_stack_event.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_stack_event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_ncp_callback_dispatcher.o: autogen/zigbee_ncp_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_ncp_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_ncp_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_ncp_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_ncp_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA