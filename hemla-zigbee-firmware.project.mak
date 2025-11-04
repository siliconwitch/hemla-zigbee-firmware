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
	# No post-build defined

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
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA