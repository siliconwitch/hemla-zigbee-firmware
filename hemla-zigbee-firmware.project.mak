####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 19                                              #
####################################################################

BASE_SDK_PATH = /Users/raj/.silabs/slt/installs/conan/p/simpl418dd9bdfa44b/p
BASE_PKG_PATH = /Users/raj/.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2024.12.1

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
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_BOARD_NAME="BRD4308D"' \
 '-DSL_BOARD_REV="A01"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_CODE_COMPONENT_BYTE_UTILITIES=byte_utilities' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DSEGGER_RTT_ALIGNMENT=1024' \
 '-DSL_CODE_COMPONENT_LEGACY_HAL=legacy_hal' \
 '-DCORTEXM3=1' \
 '-DCORTEXM3_EFM32_MICRO=1' \
 '-DCORTEXM3_EFR32=1' \
 '-DPHY_RAIL=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_CODE_COMPONENT_RAIL_UTIL_IEEE802154_PHY_SELECT=rail_util_ieee802154_phy_select' \
 '-DSL_CODE_COMPONENT_RAIL_UTIL_IEEE802154_STACK_EVENT=rail_util_ieee802154_stack_event' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DSL_CODE_COMPONENT_TOKEN_MANAGER=token_manager' \
 '-DUSE_NVM3=1' \
 '-DSL_ZIGBEE_AF_NCP=1' \
 '-DEMBER_SERIAL1_RTSCTS=1' \
 '-DEZSP_UART=1' \
 '-DSL_CODE_COMPONENT_BUFFER_MANAGER=buffer_manager' \
 '-DSL_CODE_COMPONENT_IEEE_802_15_4_MAC=ieee_802_15_4_mac' \
 '-DSL_CODE_COMPONENT_ZIGBEE_STACK=zigbee_stack' \
 '-DSL_ZIGBEE_MULTI_NETWORK_STRIPPED=1' \
 '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1' \
 '-DSL_ZIGBEE_STACK_COMPLIANCE_REVISION=22' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"'

ASM_DEFS += \
 '-DSL_ZIGBEE_CUSTOM_MAC_FILTER_TABLE_SIZE=15' \
 '-DMGM210PB22JIA=1' \
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_BOARD_NAME="BRD4308D"' \
 '-DSL_BOARD_REV="A01"' \
 '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' \
 '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' \
 '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' \
 '-DSL_CODE_COMPONENT_BYTE_UTILITIES=byte_utilities' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DSEGGER_RTT_ALIGNMENT=1024' \
 '-DSL_CODE_COMPONENT_LEGACY_HAL=legacy_hal' \
 '-DCORTEXM3=1' \
 '-DCORTEXM3_EFM32_MICRO=1' \
 '-DCORTEXM3_EFR32=1' \
 '-DPHY_RAIL=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_CODE_COMPONENT_RAIL_UTIL_IEEE802154_PHY_SELECT=rail_util_ieee802154_phy_select' \
 '-DSL_CODE_COMPONENT_RAIL_UTIL_IEEE802154_STACK_EVENT=rail_util_ieee802154_stack_event' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DSL_CODE_COMPONENT_TOKEN_MANAGER=token_manager' \
 '-DUSE_NVM3=1' \
 '-DSL_ZIGBEE_AF_NCP=1' \
 '-DEMBER_SERIAL1_RTSCTS=1' \
 '-DEZSP_UART=1' \
 '-DSL_CODE_COMPONENT_BUFFER_MANAGER=buffer_manager' \
 '-DSL_CODE_COMPONENT_IEEE_802_15_4_MAC=ieee_802_15_4_mac' \
 '-DSL_CODE_COMPONENT_ZIGBEE_STACK=zigbee_stack' \
 '-DSL_ZIGBEE_MULTI_NETWORK_STRIPPED=1' \
 '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1' \
 '-DSL_ZIGBEE_STACK_COMPLIANCE_REVISION=22' \
 '-DSTACK_CORE_HEADER="stack/core/sl_zigbee_stack.h"' \
 '-DSTACK_HEADER="stack/include/sl_zigbee.h"' \
 '-DSTACK_TYPES_HEADER="stack/include/sl_zigbee_types.h"'

INCLUDES += \
 -Iconfig \
 -Iconfig/prioconf \
 -Iautogen \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/MGM21/Include \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/bootloader \
 -I$(COPIED_SDK_PATH)/platform/bootloader/api \
 -I$(COPIED_SDK_PATH)/platform/bootloader/core/flash \
 -I$(COPIED_SDK_PATH)/util/plugin/byte_utilities \
 -I$(COPIED_SDK_PATH)/platform/service/clock_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/service/clock_manager/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/debug/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc/s2_signals \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/fem_util \
 -I$(COPIED_SDK_PATH)/platform/driver/gpio/inc \
 -I$(COPIED_SDK_PATH)/platform/peripheral/inc \
 -I$(COPIED_SDK_PATH)/platform/service/interrupt_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/service/interrupt_manager/inc/arm \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal_wdog/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_ncp_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/include \
 -I$(COPIED_SDK_PATH)/util/third_party/mbedtls/library \
 -I$(COPIED_SDK_PATH)/platform/service/memory_manager/inc \
 -I$(COPIED_SDK_PATH)/platform/service/memory_manager/src \
 -I$(COPIED_SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/nvm3/config \
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
 -I$(COPIED_SDK_PATH)/util/plugin/security_manager \
 -I$(COPIED_SDK_PATH)/util/third_party/segger/systemview/SEGGER \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform/security/sl_component/sli_psec_osal/inc \
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
 -mcmse \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 -imacros sl_gcc_preinclude.h \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 -flto=auto -fwhole-program \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -fno-inline

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++17 \
 -fno-rtti \
 -fno-exceptions \
 -mcmse \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 -imacros sl_gcc_preinclude.h \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 -flto=auto -fwhole-program \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -fno-inline

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
 -Wl,--no-warn-rwx-segments \
 -flto \
 -Wl,--gc-sections


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
$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o: $(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o

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

$(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.o: $(COPIED_SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.o

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

$(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o: $(COPIED_SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/driver/gpio/src/sl_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o

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

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o: $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o

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

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o: $(COPIED_SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o

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

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o: $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o

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

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o: $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o

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

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o

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

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_board_default_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

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
# SIMPLICITY_STUDIO_METADATA=eJzsvQuT4zaSLfxXJjpu3LiPUUkk9fT1zEa7Xfb03W53R1d5586uNxgQBUl08TV81MMb+98/AAQpPkUCSLDa+83uhLskkScPEkAiASQS//Hm7v3Hzx/ev3t//zf77v7n799/sj9///HuzTdvvv2nZ9/75Zc/POI4ccPgT7+8MW4Wv7wh3+DACQ9ucCJf/Xz/w2z7y5t/+vMvv/wSfBvF4a/YSckjAfIx+TlzbvzwkHn4JsFpFt1kzrswOLqnmzP2PTT7zT3tMZ4d3dh/QjG+OTkOE0BwIhynL3cO+ZfAFLhvmBjyAPnft8fQO+D4IsthyLVnep6MYjekT3c8W7zherj+fOymL3Yu4ubyPnnmhAMcoxQfyINpnGH2pecGD+ybI/IS8tW8TWqes+pgW5OdeLaP/TAuhZ+VpLbAHS90HmwfBeiEYztMHNfzUBrGk4hLY4w1CXLDhKAj384SFKf2oxP6uiU9ZlSSHiF5T7EPeJ+dbNL+As2CTqRmAjsKn7CulsAFka5tJykijUKrmAQ7GevCFMN+wC+JZnlhFjvYjsMs1dLCCzEexpHeknju6ZzmatMjJ29khUnQIOPu9scfb7/YX+7vbTr6gGIHj75FeuURZZ6WHhklyHbilygNNWmfDy4a1U+EePiEnBf7jDz76RCedEg5+OgQP2riHyPXs7OU/CdKXV3DSJDiOM6itKyLxNQkarswjdWSlOrghnbTudHbvmJ8Ir6kDlkoimzuN7pYl3XPx9/kSUtvrPQS7c24ZnPdwNXlTqThA/Ej9FoXJ0tS4t3los4YEa9akwhSjuyInJS4EsFJq8BKVSHtrSE+EinpWVf1hLEWF2ifcqNJaoQIOGpGJ+bYMaB1c8R+XgUa9ENm2O4+135utvRUL3NBU9fX1r39PT6kni6LXqAf8KPraGmn3KyTCahPRj6U6Opn+xDFB4qdxqFqg+pYnfjWDRwvO+DPxFKQj8QEUrFpRnyIb+Z8gWZerMHM5V6cX1ZWcoRviwfYpz/oWZK6x37kEe3oWJRCWRoS7XeuSnVXYDGZoIPyTS55n7le6gbVymvX6JgmQnwkz3VQSl2w9CXCvHnA4H+5vyXzKz8KAxykCSg0G0U4sk34Iy88QQvAjxT8jIKDVw7nmsCBa7VcgMrxwVXfwtfFn/mhbpCkKHA0FoOJyZcFL8K0lqkpDLZkbmOItLnR0S0mjVGQHMPY1ySwMUvR03tcmy2x6FUcFcHR9IqqOPUuxphP9KPzi51gjwxW0M28U1y+nMtMHqg85rDE9Lsb7wCIyxc6AyciY4vn7Sn7g5uQKZFzBh4KBkRBaouLQsfaPBXW9hSr0Pn6/TS66xemQXvcaZ+oaFekSZZN1o8v3dbJ3HD+wEecogNx8F7VF6d2+bKU+F9d86Vnfcc+alB84vp03kEXmZPDg20uzOWNYd4Yo/bqycyM+hhX9uobb3zPZvK9z/e8decShmHwAe2TgVd7AD7++NHsKtF4BmzLUAChs+0S8xiTarT9k28a3Gw0Z/qtxkdqZV4oep7rb15RyJyVbZ4TnLcktM2bGOOXJMW+TsINAeP59gZpjK7U93mXV61Vxn0R7U3zVxfxoQdISZzhvCVCsVqJxvM1NT10a/CKVFnRbeT4kUbVlvgwZMtZpB6uOTwI1X12dHRyLfCByMbI18uWC4Cim2pWLhcAQtfxM51kOTwIVWpcgmOok25FBAxlHxHMxIndKA1jrcxbkmAKEHmeVtocH4Qs1tuWMWBbPiaxo7UllwJA6J4iJ9Zq1EoBQHRdrcot8MHI2lEYp7oZl0JAaJ+PmltwKQCI7rNmts9wZF1Ta2fj8DBU0UEvV44PQ9ZBzlnT7KcpAYSwR4Z1nXQLfDCyz3uk1c2pygAlTTf53UDvFK5LFkwhMIv20cr9IgKGsu7hwwMdPjzNw4cHOXx4j6eDVrIcH4Ssn2gdPzg8CNUo1moeODwUVTtxTwGhp5lyVQwI9Th1tLaIAh+EbIJ95Hr78Fkn45oQGNp6Z8oJ4Ew5eUkugcR62JYSQAhrH4phB+JM+0icwQ7FLHJLK99CAAhderpKJ9sCH3LLTwvdpgQte36jHh14aOjn9il3GiMiurvtBs7IXe1WyHAa+q7cEJlTnRPZ8xrQmLroiI525fphnQVHkaPghAdsOx5KEvfIw6gBKPWgSlF09XDshZXTIw4OLgrInFTOXayrrw4mSyiT2/RrUslGb+119LQkwZJjTaOnlUCyzZyigbTsAkiaSOR6kv5Ni0oJJUsmllvMaxKJR6/YdRy2SunJQwAaFyBJIp6bQLTVEkdWHyjNIKzIBeg6kXFDfisALpYefvO+LBMWxQtIZM9rQPLNn/4nxc8+AJ0mnFJ3UKdzAZIkQmZ1yPMSCCoVKJW+CcCkwNHRJdIw9Jwzcodc2Z7Xxzq0fTriaQnydAQq9qMsR2FJWsgCU48emhr4qRI7OY4dxZhHNIMSbEOP6gavMBfbh2HqhfRYheh8rJ6sQmZsqCNI9fYL/Xkdbd4G12ECUOTKlLx2Ml+94O68BShhduvpApI0jNEJnlwVWIJk9fhvpXplOm+DZT+ypC5xHIcxnXRCsGsBqlYwFKkaoHKri1CcSE6Wrja6Cy5YxwDnWAGWJBnjBNMzupIxnx3s6og6LCj1ouX8p6OHkrO8B1UqP0CezbBUbR0typwhzbvBpb2VDjjFCr7OFdJh6S0QPXMLUowqmFITFXWeiEmROadVSyAq1/bHzsY7ld/KYVrJ0yFWE1wB8xpcOT/ulKHgsbsdkDTVmFQjukb9miCVGUc3qp2YUyi/IgqsDJp5A7eXKZoKeCuZpoGItQ0huw+86tFhVeDqtFjg7pQB12v0Elbk6mom24E/1eJIT5PkedNedUAucrdR1Sh19nphit7ehFdpyxyLnenQxrRAByBKZvJudMYxscza6NZlfO02tNYaVPp3QyfcGjXhoRqbNqbix5PGNDZtdOsyQEmzlHpyy2mC1C+SdPeWXPS4FerxiqIeEz7Glvl8ksz50KMwTrdbaS2przx0tjJ+v8ro6bYzjys14RZa6ex3ylHpge2U6Sob1EMFuC7uaxu2mnstVzLojFS44yduYgdER/ajG6eZopVuq5laO0Q3BjsFac3aMtiyNBS1T8xrWyWeufJ1XPlCuloP5iBlx62AKtmbIqkny6etheIFGoQovanATX17q4dsDR6EML1CSQ/XAhmGZqKPZwJJ9FGfQh9FNPqaM7ay+yvZ8EINhemugALaFB0UL9BKK1sdvR6QbR8+sBnUol94wpnsqaNBrpnwcaNrTQGaZwc0oL3Wo1DxA1yD9loL0UdQjZI2r60zfQVecOvSjldwh4nUGT9CoTKAt4rCRvI6+Fc9hFeoqrS4th7YhLMGLt01KEwUh2nohGrT4n6WVfivo3eckfcK3YLm7gLoD4Q86wgcTj68CCV4FmMixsH+JeU9CLcubGmiBxedAmJlXVD11VGlyWF/j+NZdH6B5FYDlabGruNJbhI4XhdEaVIxCg6h2ipJg9QFUZpUftFAjgtJrYn7tY1W7cg2d6RlvKLMHAViLKFqZF4WQ5xfgKdMhM2Xyi1VtVTsDaBqCnbzOvyUCho7mF7RjWqMVkMp9F/xkCzFxXeUqK3TNMrA4eRH9zJcdoYx8cBAyXWCy1PN0hTGRS75lYjSpGQzufb1U9G8rU034+hbpu27Tqw2e23QasAqeEHm8/OMnRuYHfBRLZagybEDW4Fofrdo5Y5JIJJ1XGmC8KZQiU650ZfMWFuB5NaFLU3Uw3LJ/Hq4cThpOqxLAU7+C15NXEWC6oE/nfyEonz66YETU6JUSJjVLs4GIdcBrTrBAmR3QZQnVVhvUF5VUPm1YU3TFSVSbOI4q93aPqOwOJmBmuAhOZAF0MxbdYPgIoFFt5zi/FDwOQwfQC3kCFFfzSIpS5v3OvE0DRJAqzIMqwgI6BDxtS3QDGkFpl3mWmk3TpGkifrbI7179PX2s4h0iDbIC1HuZHHYr7rdFTwBGltR/GJriMO+cgPjmW9e9ShQnYNSU6tDFdauLUA9v08ZT3x4IT+5DsscED/mWRZ1F6FPqFKASEMEwC52Z1GuCAKslRinKD5htZ29UVVRlQSofyWTM0rxMHmuSj1EYehpazQDwoCLMQ1/8BZ/msT0XOR81SN32+wDdqh62jg9/UkhzZ0Ia8GkdxpdkSh8InQm9URk8nSPqcpaUSCMYg0wD4HhaR/7hanme28iY385URm4pCl3chMP48j2wjCCrn5gnV2ItvSmo9LVT80IFUHmKM24ggCkFREriUz2mZ6iuA3oKHaJzy+XkW1kYa6IfL1rGXr6rqqfUO9EcErl420LXsVJ6OotehkDnUTRq+QO/Ff2ZvLLTF5nQYVfpKKc5SzHqSS5rqKqtGIOFcWhg5PERo7yqkkn1Tb+1z5lqepYpY9wdRSJ8uuo8DUHTrWN/9rdmQ6O7F6tV+rSpXy1blLCXBLGV4GVmkaJxHwfdoueLq41CYCkSbsjqHppX2QAEt9n2nmXIgBp623RdRFK7ksdVM3gNRl3oX/1A9XFbADporxcpgoMVGewHJvIrzw05SctXnUHL6dAw5FUunKtIEVvrkGrWJ4aui6eQFuMJVglxkcf47oQYN72CQc4Vjy/NpZ/VdjXbkFz+ihylYxTXTPchtag4fqMJp5AKyM1MBsd+RcAEavD3LvEQfd/fSWACyTs6pIaW3inIGj+eUyorRZ7OroQVWm6LPEkBakIe2X/KDtgD728jmOUy1Ya+3KIYtC7AKq0jhzFRrH/uPbp5V03d8AMG9hf+2DM1arSM7gWeJe4AE7V+kXv8nj38e79nehNHu+kL6/hl3wrpJBgGSaVrpdlRZ7TMpR3jrdR5Y9NMqhHHCeyS6K9/Cqg8scSfqNn9FL8LLey3MGtjqioN2ooQHXGAeVpsdtOfcsCo1UFlD8dFmXMtsqlReugVQP8Wo3VIXYfxW9sZDuXr3W9ARHN8mLJjP15cecM5JJ4v4L4tY+nF7IyrbRW/DKfegXxlT1Kmj7/dZqV9B0UXKX0/aJBidw48ZptSfoqhGqZi3tqBS4+eA07h/1D/Chs5nw0/JaOBpkLlmqPrKDzHCDPSVVifW3tsakx007cU0AKqZwWhxW5QJNq4jU1sjZespu34afLCMNrE6RIF6xXNvsC4cGwRhBLX6qbK5PH2bJkHULX6erTZfA4Mq0UrCapWLqZRJO5KSiUwjB1NvGk3XoGpLJA10VMcA2ulxgUIXUNOcg5q/SEun5KNDVSsgEBXZRUk9YUIAqX5vbQErspt5+c9B1cXbyUb9xiKOH+V+zA2YMLnBqtSPbW7S5SBZgapTSWvUm9i1OJpkaKXoWs4j7VSZVouv1QJde7OvAUiYdZ2eVCGyqKoM74dXS1sQSInjIRbv2htFWiQZluKGI1RADTDcVL+WbOqq2FInWBAzDdUKQKMAgrCcWpRNNtJfO8goqGUiHpYaXwOcq8gfj1LiV57l50KWnsmNRKLakQgMyI8tzfYkHGbRaOn6lz4CCSDMJYtudXKXAUOQ4YQgtYRQvS69Q1CkIr1C0O3sFH6hwKFDkOfgLQJziIHIMoljX6FQYcRI5BDNEaY5XWKH0UpU5B4LhJm0N+sEmdxQVHjof8iYsaDaFTFW0W8nfx1VgI3bvXZiGdXa9GYlwCPdnrhtXGYzmPhxYuz+x8gZEcDc+uXPK0GokCRd4nUKeQg0gzYCFGSHaNqU6kgiXBh55fAdFKHUhOMyhJsOTdaTWtXHDkeOwz2QWkWl8Zv27U4TdK58uutw+h/NgdYyXyj1kAYDkqQHJMVCLpakwEo+d6fHqAmonH77x1clDcIGpwEQ7R7pxnKFPBKvZDOjakRkEoKqR7nqHMoUCRn2coU+Ag0gzAxrg6lvy8R5kIB5Gf96hbUZXewWYs6hTS8ZG0nfMe5yi79FZhccFRmn9B8OA4KjzgLHkbT2VeqExH7FB0z7xQmYXQ/b4980JlEuNSiAOv+sboMBib2vGS69nDq8U9b0dednJFsia2EI60ylJX/fo9zy6gpKb1THnzQhvzvGDzAnLegFfPUFeiybQ1AbK6Q/+6mhMVbLsY4+3CNFZLgKrtgrWTFDkPNn6kF63CabFL1HwkBfVm0SklOr/YCfZk41QAyllnMGWDitDMCQM+jZMJu21ujR1jy3w+mYYw1HCVRch2svhR8mqp7mqql39e0p/3SxZuhaKV1KkJSuFC1GZEAS1xQw990hR7YCestsrskwZQCNoYbHYf2RSF6JIGVIjJ+EtRhxww65k3acI+0IGzDQ/YO6+JmY+gATlwdkjQMWpKFPT1mlbqwral1NXTeFJ33iUItHmkcjlJpLi/Wo3HR+ITpGfQWueYWmqeY8/7BEK2gAJWRyu4Wo5Xaw0oSO2DO+6Y4FgtckwtrYFjz/sEQraGAlZHa7hajolbgxPiZzdJceCIJOLoAYviMA2dUHzVpgevMtXMRCLjB6u6UupZLgCwwVbA54VG5rWizLvli7ZfsQLCtWS5Ako4/yMLmG9wv3o5WzTkiis775adrsPceDNUSZqqhZ9jbQjSvtQx0TUWwnXR0D/VHITiuZYLOOlTBwzQP8rtufVzKiDVeOUBQzaO45DemXSAWa+r0uyWoMZa/s76K0TVb6xnMEeM0iyGp1fF1X3YRMKlaWHsPRnfqq1PggNiRouhjODNq8BT+p1w+0CsBBc4UA1V9kA6xEypryd/nymnF2FlYEigWmKI8zr4lLr57Qk9wvQwhgSqG4Y4r4NPqZvEPeAn5D2AqKcAA9VQATpvidCiJyV/7OyKXAbYvcsIt1n5DOOlM73TotlJhB33KBmD1BywCWC+L1nuTj7Pu0X9V3HXUZaGJ6wU90I0x3QUYw+jRNmoFXD52VTbP/mmsYj2pvmri1g6TKRe0bzU8wb1+RjZiit2hQg/PGQetstdcApf8JiiiEPyX8+QyZ0x8tHYM0Zda8t+JmKYehZhCQjRIP1SwRiRcswLtHk3skrO7AJOA0MtU5safzc4uDF20tnfM5ypKrkNJhFm6dGt0RmBUyRTw1HhMZO/TLODzUzo1sxmjl/yPhk3vYMimxqOLA8yFUcBCJMLkiSXIwGeKVzoUefTQJPkBEZHmUmEnAcMqJ8Wniyvs1xi/Qab8/hs+m0OqgtnBQuhtbImj8xLXQCLV8OR1EeOEeD0KYxVJniFXlp4MgdTHSR32O9CpYCQkJ5FEch4VMNRGo8UToR2DUhjD4YCH0gg2nCjM47R0KIq1Nl34lflt1XK9fcL3yJndAVN6rg1A5A+qNjNZ9yJRcmrbuVyAFWZyWyvVwrKE5RX4SZtswl2CNF06M6gjkuC2bHFMMDBuLjNLgR/jw+pl9gJsSRhLBL/qZ47q6di3ZIUchwy0Y2Rwq3PuWrnVV3N28Uukm1dE64cAXSBDv3AjWKcyB4jUSlWQzZAqaIEvU5NdQmedP1bKKVmj/6KAkre2jVSa9zGVWSpB7RR9TvxS5TKWWBR7nVxQO12Ov5NeZNuiAolMR9qqFq7N/c6KrIUaxphYsol068Lsa4IUqTsOP40lCuCVCkTn38izhVJqkYA88MSvvaBmDXrpjhV+mdkTKPzqiR10uZqPRntiix14ivDnIx4RZYi8dNU1uQEZk2w82uEHvA0tBvCQP2iKYbKujhYv2gC/k15MPp/RF4muQQro/+LuK8uroQzHHWl4XUgiNlOXttpHMhlwuytm0sRa+52IQioV+QS5E+yitJvyIMtBV+hnbAcF4kAJSHeFD9QbR9whIMDDhwXA0+jO8pzRS6M6XLTxJa+umJ8SVqyYOqEV/U+c73UDewH/DJJlfSIBS0TAa068NOVqi0YvFzE0ruP+SLatOWqCwYtF8LoMGFpCnGgZaA7e9MVgUsDLQG7EJIeqZiwHDWZoKVx2KbRhEW5CIQpRxqjIIlQjOmR4KnLdFW4tvKdZe83Ui/dWfgiJMGyTWXjrojWVraJbF+/ZPiSTT/UXpcOU8IwQn/Pph6yOoWClmf6yuoVrKOepjP7fXJ1lGoqg9gt9evf1GvGSyUI5qCPG6Q4DpBHDE6WpPhgJ2kYy94oOqYu6Oob+Ti/JlgySUK7mb1a6YaEg5SQHRrXXpRSyuski+xei9JZ6F6JGle/dJfnilzY1Uml8/2SNSR69n+4jqrDwwRV0xCnY+Y7XSkuAnWudk1XnrZgnauT05YLNq6htSY1XWEEIumHS8B9RHovEa3ySaxzl0zQ0sifbZEriUS+mGulqM6HJ62YXsHw5ZqsijqFfn074EXc1etvf9sXLpCT1BK02Nuri1Hfl7zgyV93Ic4d8O6LCij8use1IgCudlRhidw4jF6mKkVFHGgxoJfmr5UBbC2+CqpvjfBaUTQsEDbhzyg4kHKAhukMFakqE7RAWvYgr5UGdgOyiozSFCfppK2tIRLGXynAfeR6+/BZZ1n65H39i7VXvAdA7+6iLx7RWBcD2nwP+OgGsM7pFfpVcaDFAPewrxUCbgbU8q0mKoH4tWBjTIeOJcJmKXoFgtZFucLP4tYmqpSWUNjaKeAnq52qQNgJwxk7DzzV2FSV05QJW6Bpi6KpEODr0VcLAbcY3TWvmqgUFXHw07iJylDI0jmNm6goGnYEeqdUExapKlPTNG6i0tQEapvGTVSYhkg907ipBvuKvK9vvZntKmPHDpPBNERXgUAmjRUuoFsCFdzKXnpFEkg8AMez9yjGPk6nLENd5lebZrX35/4fmu3sjOLDEylsb2Nr3zoQkleE8xVJZ3pi4oSP3RXFmrPXi4WtOpZciq0cgzi2xJ0Sz0F1jVcTU0fGLflMZzWOIj2xUWQ+OLXgVGpD9NbNa5TGXZ0JnAZs1AndnqRbWZ4AyQ7Z6ZenUDIdmNAWZ7sinFDorF9ZA3xjubsoRf/g4LrvZBEbc7t1INMKr+uAt04ODqYD/UMLXfkbP6zkl3CJdoH9S4rZEqObunjcPSaNeqMIsxJBpA3Tl4q7w+o85m1QCfPWABFoWeOZ6UrsyJ0uoeCLVoaeOoZs1TRxWl/I+gJNGMkKGuY39WiUnl0yEEYoFs9LyfNkyI1B7NqDeEjmlSohFpTMcmlAkusL7fey+qgUe87LMeeU5i1k6fz+6TnG6CC4uz7Ir4Yqza2YNIFSq4IqMxMOQRpNTyLgqMkxQRroVUClmSHPPQWiocGD1Gqo0tz2ge1nQhOKQWIXSHlWKMHrpdRG1jC9NrY8T1IFmU+cQ7GF0WGOdVxVfnr02MZW5emHQmc1xlLksADs7Bg9aWJYQAOxJPXyiBJX7No7Qbo1GfK8vZDut7JdPk0ttU+CNGe+R8wyp0ns6Q77O9348nzzsj/FKILlWceV5yd8JHCEyyh+5u+aP2u7fgTbLLvhodjq6Ej9IuRZp+Izt6sUU8FQgQYfdpuTHu21oaVZYie6BBEJpuoc5NkFrshUw1DUBJZnmEdm2FHowdZ3E1iaoeeHqfgC1DVqJaI0J/9ADyaBkrpAqrACH+MqmPK8okTi2PswtRqsEjvhRASjyEkkHujgFgtfdDaKXCx031kvuzRGDqxpq6HKr4egA/V7QZlVMOV5PegZXhu4KvzAbUgFU4HXU+ymsC2tgqm87qapVrvQpbnG9NoaL7XP2ItwDDumdmAr8dSiziawNMMk8ezcodWhy050Ja6O50IvwNZh1dixeXSSkb6Y6Kn4q1KUuPtuIpQmYhTVAlSJGQE1LD2zj254ALaix1AEmIofNmmwfF4tdnpaZwtZaTQq1s3yvgm9HdRCV1yVg90olTjzfmWtEJ5aiQtQw5qqFoidcD5EkdYnkfWwv5/AN8NOdAiuPFcQbUTULbCD0GaB9UJ5T0XoXxUIUaLEC1PJ3PYi5egQA8Ke50PUxfoCD8EWO7AmrQ0NwfJ4PAhl5hChWWBD8BTNICLCUzxjSD9PwazIIjSFcx/3s6QXYemiWWBD8CQzSF00OTSIXdJnksA0KZqaUtg/gPKjhY/7SvgHUFyhI3E6sKF46tgR6BehwfvSxbxDjF7fcZpy1AVC+TOauHNoMH9GE80CG8yf0cRT/Oh8P08tC1o9+CB8gTev29BQXqImlsKZbQe8RE00C2wQLxEFh9CHj5nqFwHl2+piqxjZUPdANZFMwOq/udygi3BbDOSqhi7WYpdIKJ6p9LJD//HyERAiZ4quqBdJnKHr0icvUfkZgSQFQ7EL0/Vb9DiwKr8kMPTw48AA/ODCE7pISgQqdDLNj39ooXmBVuXIwuz1cCyhVTlWgur1MG0IUOWbuR5NL3AUulp9PNsavCJXh/zjeZosUhVclaejp5FyXFV2Z0T+Zy70UKyAg/CMQk8oGZ0g0wJematcQkYBtqDZFzXaJzDL5EBNPVsMYa5UoWmbUDozb4RyjI1nWYNX5kobjo0Ov2ZJanv4hJyXYltfD/mr8nSU5hiTWS9U7P2o8lQlgpaIzokYeC5oghJ1SAQvUZLR1V6cTluqDqmgJUsSmJWc6yXhUkCZ0+CyCagXYmC4a+7gYL25kpZDE926BFXGaWwf4r0m36UCrsiTBT9rIVkiKzPUs55zAFnPOZz1zEw4riI77ADtiDXpFcDq/DSZnxJZmeGvYFshbY6/im+F9LCE2Z9tMxTcnO1mJ54BfTxDsHTncAcTWxylb0WuMzxpWgU5gayCnB8ORy30CmBVfmSSqm9IrqErMvV8PSMex1Vkx9F0rs20Rahyhol/a/GEuILZP6w0kVtBsMN+GL/Y++x4pPnlPS/Us4TUI0eRfUCmqUnoPGCgyJAm6wa+KluXzO4eYPI+tZhesBVZhq6ezsRxFdlFWM8YyXFV2cGckm+REzwo38PNSQxTE78CGoCjHmtZIgMw3GhjuIFgWOTp1EKyAg7EU9+aT0sCFGPKQC/jQoIq49B7MayFpi5VAVflyS5QwjZyHJzoGcrbIlQ5FxldtbCtgCvyjF0yth2MtZ7t6xq6KlNNa0XCIZOd7JIz0hM5VQCr8zNXa10MObQ6R0sXQwuG30qTj3SBVuWoaf8MZseMpQdBzlnPiF5Dh2BaSWSij3BDCATvMHxwNaq4hAfgmrp0/qyN6wVekesl9b4OqjV0Vaaur41mCa3I8ZG0eMGLEUeTrGArstS2ow+0h8/S2TixHoNfBYfhqaeXV8FBeCZ6toGq4AKHR8YfyiiK1LxxKUGqZyo0BLYRVnO4+DV+GD0PkEEZPVcaoL2HYZcqL5z7RIGWg4fQHHCEgwMOHJnbocSK0yNRR6noLcIRcmM7fYmmKldbpo6SJS9BGLwA7+H1lqkq7es8uUCpw55ayPVAMVM3yG97TcBd9IrGuyXBliKKiWuVuo/6S1GXBFsK+UvWZUoCfrl6mdGCRorrYn9Bh2ILvhFfYwt1QqKWqwIwJUkH6ZYQYO5Bip/TZALLc12inlJN04eHpeopnX47e10iTKkIcAy7GF4pQAkOw1XD6YQKWbhTCDw5hY7t0QpfwB3SMpkCb3K6KNcEAHF2f9PXAUtwIK5pnDnavIELOgxbrdMp4HnTI/IyfWQv6FpWWyBu3y6U01yxid0gPb7CBe9uSJojRr6dM1BKbZhDsKvdO2AnyEcCpwaVBsrVQG9374AFV0MzbAKoFgUrrpMGgBbHKk72NvPT+DvMm+++JCn2H138pJIC5+72xx9vv6iu1uYo9pf7e6Wqz9Uxv5RsngPP6/iKQ0EOptQ4BogCjFeVEmskWuCrbqp6dpymRSi1Gxyw2nn6XtY9gr7a0Xbo51afdj2XzOJsD+2HslJ1vUveYrlR5QwK12qec2ycUepsDfn8aBYhug0+y1GFm0NVE/NK0eZ1lvM+YdK50nKI2d8znImHM4xl3RSiylYhHZ0gZfGMdCo+FX4kgmymJvn2yECgK7TCbN4QAKYUWePS/0Pb7Q/T0Am9XuW23vjNPe3xUGW0bVNK+qecVTrG5N+nMB73emcDyDnzW7ecMwoCLBS/UGhpngPNWWnmJbF5H750r84BZwxwhp9TujUqtK88jnGHAFXKeVfwQjp+zwij/eyEAxGfcCTzXjnSBSATpTA4zfLUqzMUuZCsO8H1T0jzS6dUpgdic/sekD2KyYiRCjG5UlOnaEb0/fwyS2kQxKxEn/Fs5OoVV2iOLSWU+PMxgkU96b4SsnWvact2RSRUqRLC+zWqbUguSPkS7BCm6YtdirAd5Hl7Qi3RVrghobpKprvSrosEKRUird33wwlb4lWJIGXiw2OhPe6uxxOWUYgBTOsMs9jBszjM0inNyrBYkNLt3YAGaU9uNUfI1Vo+/aZzlGSYFkppzGgs2qQFHBarr3Tae9+AUJCS+ThJiPGadEAfkKmpXLqr66pEkDIFOKVTrRmNdGABPZN2tdHStZdVd02OlA1jWTybr63wG1HIzHlKH3S0eJDSOmcasTylrbkqUUuZdFfZFXmQ/vUBP7rE98sHocl962HpIGXl17tMWHtXJYKUKUZPMz4WTTo+jJCrsXy6621QKkjZ0jhL0pmDKYcJCzcsVmfp9DfNMYJhvM7MS91ZdH6ZsPIGZMLMYMMw9UI05TB3XaSuUk0wJR8QCuxVHrL0xXZeHG/KqdB48VOUdoJVCAECMHYGOTMPvUw6SAzIBK5JdDjEZLhlpxtfpeUOE4Dxtj2PbpZO6WFfk6ipTPq74IBM4eg/0QQBhSJaUSHZYJjb2L5xWQ4sdDB7wuiBxQZAK5ZhzodFvpZe3Uh80767rea9neCVZtpmkRdCJyhGaJRImF8XBjh7z0WEvo+Cg82nLboL1CFNe+tQz+MhdqShU+WNmImypxywUHj+gMrpWYcBSaqZ8GtBBHqLcUWQeinyKA+9BeiWoRpkXkQEFLg2PPdeGYrci41/jWrvE6HIvG87X2NJxopUbU/V/XuNxbkqR7EMVbhkFqHUEbp8ZwT7Hgmquu/wnTRovl+Kepb/xiaYxmIMC1O+cSHfnNVoWPtEqJ7qPedJfrTx7hagmvWoFniiseVcF6RaimKtTqP6e2XAjGq1jTT9I9pVcao3+PCtM42V0SdC1fqUS/Qaa6BfiPrRx/bqpk4PdYw81RopFzN11kivELAaqURtTFIjV+Sp5qGvbLBqrJNrYkB6eeHKaO/pfYLA2lZtBXyS1nVVomr+5uoesMbKuSpHtYUdT2SE0urEdkuAmsOVa/J6J3IdYlS9Kb69oNOD6hHxeif/C020l0xpViD5w6rF8hmEAvMERVVE6eORFCR8wMFMPPfjMLsGsArJyhIwKMcGrgrFy/IuKMM6rPw5WL7sBsetiqh6vri5KAjH8ooAaNLQHXxQjHQB+KIyHNUKoHwLrSyoArbSBqo8vdJjA67mDmD5lknGU+hWWIWE0l7pbGlTY02COm0NPIH0yZI96FBjCSxNkq2ywlEr4QC0hjzWOlJs+0joHuKx2msJgKjqcmlIS33X0KXp8oUGOIYVQHlS1dUDQGpNWEWC0RnQP6tBShNr7VLBEeyEVkj0UuwKAnaOGqY0teryCBy5Jqp6WqLLNga4E9sElyZbWcuEI9kABTDVlzVjHaa6ji5Nl+/8wDGsAMpbwmIDAdASViHlc/LxTUs4XlVEeSdr/4BneaLqGQ5ObgDYL7qxQZOJ0fxe0MamS4B8e2Srw4CNscRTmuWBWpYKoHz3qAYlAPaRJiyE81/ZctHi+zfwIWbN3iNLUKllvlzBhpilvJCv3Dw42k3o/ZmCd4iOnrD0CQIoBJNpJxF23CMRQVSkowTdUgDo/3agl22Ar/j24kM0G+/BDvApTF3gacZVERBNpQgu5uuzTAx2tKwqXJOlsSh2ipPUfsROGsZaVj5HCwbqG/mmVBZra2qdQoDIT9BTesQAFUAurbUI92nTWZ8i+X3hxHNn0Pubp2jeDatQfwwOcovzQlJ8h1OlsgpTo5p3ur0v94gyL50lWRSFcap+NrHA790HbMkD39CsS1CucsESQW3R4tkDfpklZAihAXBZdIrRAWuqn15ZGkuip156ZYHv9WvvKVr6BtwO5mC3gNnKLFD57HTmIOcM2Q36BQCubbFT2ICkr0iAZG2srQdjAu51OZAlMLfTlKAuB7IEhwTNHnHsHl8mKEaHMOiyJO4pmKgkNVGa6mSqBtYrUrfjmTOUdztRlNAhOZkdM89T1xH/0EKVDyqrISmPip38FOcwtdm5lyVkWLXJQyDbssWHISkg8XH86F8WHRBEsFzx4ZoETXqHaseDUnR373y1R2UhoOBfXzdSVlAON7+CD7CsU8O0keMQB1A39YoYiBIUyWmAUgu1ubcEALDGwSEKyfxAG+u2APnxH+iIAecIcLAgP6EAFPHCaTUwFbmBRITVmKkGhPV1xgM+0tUbgO2BgV5fFaTfqI+8dXNAVSwWz+YBbzaMk8vuKxwSoRqQiKCmGIxtGxSAH93+hRknawwvsABdpVY5ED2kv+ohwlBJ8WFPhTV0C3YyrISEpjjJToRgnkSxiAsojyDJsyKOFQYRO2laNoF2bL4RoKsk/XIACnGM0YnuP+ZjlqYS9AjR3XAjD6U0aFv56lZmB/KTOkfkYKCBsaA3H5CifcHHE7ujs32SC9QGE8R5F6puNfhIJNtkp4EHOaNDQOY1OLCCj3uofS+76x3kLk8+OWIqbXu1KX6e+Zalfgks37PKrxzeo8SVz1HbQI6xh1FCuisZXzzMvRtJ8M625bn7NvsbJN/OWI3OSeXMLxqet0XMO0s276UjmSNXMuswULLiWlGKq6h/t02jvEtba+sopIxsIFVSv8s2EjgRjf/hp0Z+T42jzhy8VdTh+5tDm8bvsh3wVi0URvfqTaAkrcsmnKJBO5AL/13WOW26RBu/185foa6l91fwr3f/BpHfZVvgrZkWJ0Nx+ntqCw3qumxBgT9oEapEfs9tgTZrNm37HTaGkruu1lAKGGwONSq/5/YQm2YRF/w7bBEV9rraREXEYKto0Pldtgtq6GrxKr9TR6KrDFo8ii5B112LPmq/y/ZSxFZXyvR7aiod9HVZkqqMQVPSJPS7bBu0sdOV8d+pCalQ12I5KvjXDUaDyO+yLfB2LbZ38+rN4MJal1Wgu0dDxoCL/7rrHTphsNzmD4rGLXa1XjzG5F/BFtSxgZud3EB98ydfh45iN5D3yq+lNbQZtMqOMNHzvFTZPC/3vEK7me/wIhHkZsJudIWtTMnyyCQDn/5ewjzkSvVqwjJw9YwCBx9s6pvQxCBgrSinOb8iB+QaG5sMqXYp1XaUIiOulaBLDtiFCslLkmLfVg/S6yzBFTkwdcAztHgYR7rU3xChSfNgNmdA8zKWplPzRGqlVbKUXuCFuC5KRzmKQwDTFKUqTcuVCkXBG4acGEJx97l5nOzIFrNZtBKctiizeRP6q7ttAvvmeiEfNMWvJZ6Rgeng4TiZnWJMI//DpzwfHo5Rig+q9oyRnI+XJR1UyQQBhHlfSDcRFQ7Vxy7yZmVsYb73AsKxF1o+lS9d02MZbVXjLC8s25gKx4PyluSEpMjPysa+3jwroGCVDcOwC1W1qxRXAcEw7ABVruTSXNAT2rBV3YKGI6ueC/QKXYDEoC3MInumbqPfKQdQ7yw38xQF6ZEEVxS+ajZFWfpEwRWmTPmiuyjdguAKUrvATndh+oXBFeg3tRQMV9j/ppiGoc92aKJbQYdv95o4g2RWbVdcGRKiq2XUBIC2Ze19siVD96mYZ+I5y8/wnnO/W/FQGdUHRZrX4aRrjsKotq2SzxRHkwTXKdrz9N8S8ZjlpstOMGaFJlS1x5Y3KOK8Bau4msXwcJD5wBQLSAh6bJlnRgW4qat2B1oH0w70KdfUJPKWdmoKauxi2mkl/5taK06YUTdK5Bh1p1YKHFVzyrRSgM2rqIoNvISCqLY2wVddBR14qPfnjh+6vmreL+OOXkUkCvwVO+m8eGfeD0t0K4rKX7kCGmN08PGNfxADrrxWA+e5sj+j9Nz7buL6kec6NBc7aUK2uTCXN4Z5Y1xOVX/PrnKa3xE76ITBB7RP5h9//Gga8/fFHckahPJdDgIGCX9G8eEJxfQmHvIXNHpJvrjnhxguvfCkSbm6RbA8GUcPJWdIScws8XCG/UuK7XKc1VKeBMesETte6DwUlw5oq/9uaUmsR9q7j3fv7+bvaDVp6JFllznE7iNrDtXcTCH5yk6eQm2q5FJZbIv2+sovrdPePLB/iB/nBx/Rf6YSMk9Mm6Z1JUOJRnl6zHZFiOfutaHHiLxA/ut6NhXDrdMR+3Y+b9TXvE+Rq68LRTh2ozOOkae9A7FNrTiL0slMbKfEOaK5anRKDZOUOF2+9uJ5+IScFx5rY5MxeCqJ5wlay0WU/XQI9Zt3Lo+Gv+nVZDFH9mjFRWGA8zhNf48PqZcU6afmRQbZ1+dAkHGC09elAlwfzMNMz258sCMUE/lcXnGD0CSyyhMmGpu1j/0wfpnM4jbE6fJqc38iePQtzS4SE6G1K+Z6YxFSumqp1QBZGPhxAhHTm9EoQTb3mybyBIs49Ql8zmIFb+/pWVfpk+dijLcL01gtJxX75O8zPfORPom/PaHHSVTrnN1ojo+xZeb/fT6Zz5OWNHEP+Al5DxPOldhnaijsidtTLj5CNO6PGAaapXSaZtUluKxv41VUXxtobDdw9fh1gzRSPUuTQ3LjIxmfUtDFyqExSduSUXWVtHllqtaxPcEn5tyxox6PLn6a393++OPtF51r/WkYes4ZufqWjwpXLC+WfjH0iE/q+lqd8m4nySVeEnbsMJlgGp+n251q+kGQPPQCLqYzg2zl7K0+UUMnPPUXU8OEuFsQTfinvzD53Ym6W0gZW6ZbSB44pldGGfkyXUMHX1IfClnR3/Smk5R/mM690liiSdrAJWpIc81orBKazpxVi5/pnEey7O3AnmWSh47YHo0dIR/IP3Z+047ujjKNFGCdDQxsSezM3Uj74NY8cTyBVfOaIwJRbBx+j490Ektm1r+UgVJ3H+x/ff/jd7e39ruf7+4/fbQ/vn1n//D+w/3tF/v+7Xcfbu279/96y0KmHpGX0VeM1VhwFt20+Pydaf7f928FGL379D3h8+nj508/3f50b9/97e7+9mONQz7xEIB8+/mz/fnLp8+3X+7f394JvPjdp7dfvrd/evuxroT//vcsTP/Pd1++Xy4Wxtv8kzDql9t/6QB9uzDF8P5CsP769sstR/3+9oe3P3+4t7/8YH/39qfvbZNQlIS6+/nz509f7u9so0BTBZIhNaYWrMX2e+BaMITxGu32u7/d39o/37//8D5vcxUZVyO1BES8+/Dp3T+TPvvTW7amUJFQC5kSElBiv71/++HTj6Tb3N6Rz/Ikv7/9l/fvbm3S995//svtl7cfakR5rNAluEJB0Me333+pV2YetyMP+Ze3TCUfP/1Ug6Vb7Z3WXBD6x8/vP7WAaRDLWFgWs2b/RBRs/8v7L/c/U+XKvmn/5fbt98TuE/Pf1c0cP3ETOyC1ZT+6cZoh7+Ys2EXY0pf95f7efvvh/Y8/fWTNqjq0kIFNXqEfbn98++5vVK810Et0xGjVEFN1+/8+WqLP27c/fLRM++P7d18+Sbz7xTLHvvX5L3+zv7x9P7qyP394e//Dpy8feRV31G7hvc7OmEarClfth4r67dufmOvw17f37/7y/acf63U82nv47vb7+w93pIJ/+uH9jx2t0kv/TyX6obiX6c/yDejzp7+S5tllTWtbAaIF+Hz31n735W+f7z9dLQvdjs1vXJcqC20O9of339kfyeD/nvg695/effpQjLw1aSIjb0NFTAod0+z3t7e3+caUTVvj3e2H23d1MV2bWHZ0Jj4s9ohXC0zi7v4tGQpv/6VpUzpZ5KmjWMIiURUzuZ/fFlXZ1aHyhlnZwUEQrfPutrNpXjZNxkJT+/szQXt791GyWVzs+B2p9PeNwTG3HJeHVP0oYiLrvaVjMiqixw+3t5/v339s6rHcZFAwIEQd9qe7xgBU7iCMHhPyqdj9p3++/anfYpMmVtsxsNGRfyFtwhvFyQl0Nbqa4LECaJv76V/GD6uXuenbH+yf3n2WG0ZuiRn+Qtrpl/dvP5BpzP3du/vR87/bf737bP/89ouC8/vdzz/80DOo7LPjUXxUaYugRtAmhs02VvaSTuBrUqjVu/zaXmEREMRrg1namoxqQj7x2mUDlv3T7f1fP335Z4JOpgmfb0fPNC84l2GIDwZdY9/odnPBzcGoGj68f/sTmcmQGeP7u6bVM0c7bwUemR33d+6u64r53eiC3ZpJGxDEF6EusuSk3P/t8+2dsCw7fYnoseBOiTzw84f8eB/QYjzK0vCEgzyqlIY65PmZy8/5aG37J980FtHeNH91kX1yWpcKvg47PzxkHrbL4BjKrHhogCGvLXYN5vBjox5qrsJ1PhSEyUtzmUNNd9PfIDk1YaBLDSegDXPr3nT6lbogbiI9RgD3l02nSeXrtaajGqnf/TQdWaBLiSZqs3puyJlO22AXt0ykb4h7RabTruQFGN/SMMZPEXcz6Yf3BzbzLL69yZybMtSReZsh+/7aYzdOlDWXEsobvfVLPzakH6PH1awVLKRHtBei1EZ7t7HdEDdzXYyRTiMkSbuJrwsvnrph8TyYeNUHXF9FiLPmOo4G6VGMy8C8iqiKwA9ukpZCL+tBzK++vN1M9fLt/CJQtAgoSbC/HyxD+dhXWQiWVmWgBPkz/J87J3ajtNYE/lthai6THvokzeZy403QNI9Z4LAEDKSNpvlhh8kb6AGlCFS+QMUEKAhth047X6Pkoe+medZ9OwpZXM4rkCAKwM8Ojl6r+on8OE3diSu+yNn4EUXMBZi+3A5dzwoObASqjsjGdgLZz8890v/3/zY2+uU/oTggrlByg2io1uSqL8Xj5zRGr0kgwgcUpK5Td4vyNF3TVQJxTnAch3HyGjToE777G8sDVN+Rcn+bYvRht115+BHXW+IBH1HmNbdHuwn46AGzIRvF/g1dJ01RfMJpk0HPYy2nfOaTb/4k6JorckjPmb9vsODf6RfenBfMfPLNn/jsYHYw1pOQ6JwhECr0+xn5/k+jZwstERfDO8jm8mjfCDFL0sOfxg4TV/DpTYKjydCUg32DRk5o9MgBTKnLf5gdg3CWf/sqhHocKkar+tt0banwd+y+ySgxOv5Icw+or4loiWiqGBbtpm8y+ytqBZZrV5BeNlJ6aTtNs7/y715JN9oYiein14+ZfVLu6aKa0clFRCf9U/vZkf42u/w2rYImIyaireuLMbNj8furaW1ygkL97/piyuxIH+DJ2MsHJu6W01MU6q09U6FZM6GV/u6pjYmIPr6ORWdAtX6lBerdDeh/8mstSvcKZM9j/dsC8rsBiozYenhrNXxGpuHYSf5Ef71hf07BpZwb5J9tH0V1Vv+P4/3yh9lHFP3pv/2PTz/ff/753v7+/Zf/Of9v/+Pzl0//9/bdPT019z9v2MsjOOdbwDcuaRl8a6ZJlx/YCqO6Z1ULlgNVj5s4Qm189lfvj7PZU0xUQgYbjG2mocqXPpk5hE7ra6f76xgX39cKNY4Fme9SL30WPz0Tp+Dk4yBNBHGOXhrKiD45fW6IXBc/h0n6/99qElMaGXVu8vP5rCclrmXmo9EhvcnjvQ8sZIJt0N+cguym7PV7xK+oqOi2And59iZ/gBjGo4dOXRe5/FfRvUQX0V5dxJsQqDD+dFFl/6gwxQrrdfPUrRJdoqSVnbrBrCv5qxBAIodAtPMn6gLRWjs+nUOPBSWeyLxIEGnAbxmub1KWLMgSfJhFiE7LWjOyURCkFmjk1+zoYu8wY4cHkOf+1kokIwS2j5HTPDs/qnLcgPTF5pKqdvNeTkRGGfja7iCxGLQd34TpGcceKdc/WvQ/WvRQix58sfNqtWuC8iue8czDwSk9/6l5XHSCEVeoD1Wfh+hF/2jC/2jCv1ydGME5If9oIlrGbYGVN+EqeyYfSrjZk5ueZ2x98mucRIrCOW7sZB6KDziiZ8wC50UuZuzrKVFA+uyhtc43PuJLZcYIUIzL7FOgar4tznWwT3/49p+efY8+mmdbJw8bNwv2MkEJ6d3v5Kuf73+YbX958085QLEieLkH2rnJT6PeJDjNopt3LCfS5/yxz0TH3zHiZ+x7qLjm/OjGPr0I74adQiVYBDXCcfpy55B/CWi57lithoiAMS3cpTj6MylK7fNExYMq2FwfRR62d4fTlMU2fn0MM4erEaJZNK815hsHXaa7+ehN4rEAs7RrB6V4x62eYr5xYqfI5OLEOUs+Lyq7GvmqWLc/dJrGYiS4fgNvvTG/+eMbvphvf/n06f7NN2/+45c3X24/vL1//y+3dvWnX958Qzi8+U/yxt17mrDg3fv7v9l39z9///6T/fHT9z9/uL0jr//bf9A7cv3wER/IG8zs/ZEmpGBluX1mO0PENH7zb/9++fqOHXxj31Kbxa67qmSCeUe+oZtJfyx/RFFk80p08SVBU/WRferZbJv3SHwC2zkO/WwnpmPUn8kzvHWis1sOWYJUO99Q7XqodTPctafyvG/tn+ndRzbvep0PkFlzSP9kf7DbB/hTxQ+1h9uZoKo/J57N0xixxAF2E7L5MLujl/6YxmE3fZr0vpov0A4Tx/U8lIbxuOdTuiTZ92QY9/+WJWnoU5iMVHGaxcSiNJLYdL9x9Zm8spOnXvUVV1H2/d66DJG0u95n+RWGdpagOLUfSUMafPSRHoXue6pxm1/fY828Zz0/8926vqfyO8iu/1roYNxTMT7RCJmeh+t3qvQ81Jk5q/+Z1jUtI95J3eGH+AUofQ9eEkb1PVFPz9TzEM+BkrdZtrg28OSJ9LWAl/r6k557Oqds93jgQWKleUq068+VV6cwzAf80tv8ihfYmGGzw9KdjxbPUV1WHqDDTu40sAGtcCq++fiRffkH4pUEyTf82z+RIfLNOU2jb+bzp6enwpcmHXGeJPPC2cAsaxh58jJk/8LHZ/qle2Cf287KO06q11ehb0cHvwb3Z+o88dzO7CqjP5CWRNNOs6du/hf9L3UKLuN8UbQ/M+1wiqTwFPE//6g6XBfxFF/ub8lAza83SXhV9ARbVH4hFUoGc8918suqab6exrvlMFMMgrQf0mij+jPl1So2gUJeeGrDsKR8xPoFBx6vdO3n1tulic2fSNoArSf6MZgtcQMa8+8MP5jb/8vj/ZI7H2+h1+1ar0IGsiyOfKGSELH1htsYa2z+U4ty68E0RkFCUxxdeYU6O7zJDuMzz+jaQ9yeNFLhNbXLn+I+H90j3dPiH9yEdFPn3FLz8POd+PSC3NHgfQ93InNjPRa7//Gvy9beY58mxcL/RawtbZ6XCdBXpGku4iNOEQ32/r2rm+70MGSfpfhgfxJDe/DxjZ8PZL2JTOiRNlrYORu92J3nzRkT74FSEGwUFHuf3krRmrTRlOC8YFI4ldF4+H1+J2xuZ7M4H/NJ9cR0SlWUzwmT0QW7DsiJUsABhmXCPJa7fP6OZkd8z7MJ5tnJyw2/AWrDSHQBVhmEL5spAbHZs29ZKiB+lNko9h+3KiDpb6w54ufBFl2ifM8mn/O7/NqaD/TWGnYnSIlJ5uH5BBUOshaHCgxrI8ePwDHxYE8Shdxnx/GtdzRmjHwNoCk4U8fPoCFpIw2OITisjwh0wuLfw/FGayx65A0OXqKYGF63RzIAgGv2FDkxeMNio7AGTJvl7gMGPh81qPV8fAbHdE3winLRAR7TQWTGBI3qEROgA/N5j8DtSYFL13jcAH7U8jBbTQWH1dERPA0dwXs8HaAx/QS8I0QxeM0TSDtxTwGZ+0FDE/8CXAMJJhNNbx8+gwPDj67JS3LZVgVD1dJRMy09la2zQoPSjTk4zPw2wzzdvDpqvjZCr4KM0yziqGNn1oOoVapjQfdhmHohXYido8idV7cSLstjowveQKMxAix5F02dogJSBhrIlqsOAsHEjlCcCHS0q1gJmWKgE0zpSjAFZjFOMN0AEZhW1VCqwSWNjzJlZHdtUF50a0SGEQM4eig5X3RFRjSbfSXNqBdwLMN806JYtqMRqgLmsPFyGvru+NG0/vJ+eCW0503asW2HFDpxj9xuSCPRT/Ivi60tNl+Px3eX+qs4OLgoIB73eCPZBMjGL93UX03oSQnZd1OUZrKck5QGA8m97EK0Gb4uzXvM2P5bf5nHPtFEhr4kRF4Bku/mOpR8mXiOyPPGG1P+Oo1SZjnHi5psJ5xQgsvjjYBgeLjSaDS+lcGidQqkMtxMDoWr+4IyVt8cha4glaoWWaGqvs9JjNlnKt/H/iF+rHY8LOSC5a/n4Zvs9fxP+fcTs5hEFkGhonPKGiRVCackphEaDDqvBobWAp+EUGix6B8q79piC1ddCDyoRwmDRUULeA9dGGc03jPreV/Qe+pCoZGvSgDhPg9/V4CIRJzvLoA0FpmkdCFQP1m0azEE2rFYo5boVsW7vFGrIFzCtVlUT3GeRgHxLOztd6Gw5qUCwJuXCkQkMlHsAsgbx3gEeu8dG0J80SlK7V2x/cTGqyKNufKic3bH7wnX3xRY7mu+yKYjSFJNgvOgxrsC85jWmxLDQAVBZPex9qKQX1R7U2iDpvamyNJ780Wl2hVZoK+9GCOfZrCUfFm2boRW6GtvCq5tN99N8fhJcce7ak1ZbAW99qrYinbtVdGApNrLQovelzfpdFzK2NHBpLTpYkMJf5XKlHuRGjmpN7GsSMGpV+VNZqKk3qQmSupFamKkXoxl1cOshNSbvKdLvZv3UqlX814q9SrraGPfjIgNis44Rl6xCEDdUBFvphtBaMisQPCVhBJibDnyS5B95BASBzcmHuzs7xnOxvsaFwCPnpyYkb9mgo5OFwRbl1FBkHiXUT+zA+Zy75Jio0D2bTKFSWe1o5WiCEov+2RS5s74HZGSGBFyHrBiIaLz+EXG+pv8PnPxd1nJ5ZpMfjN49lye8CF/A8HYMaYH4CXQEgfJdL4siqS6Dsj97jrkDd3YLiOTTjvnDHFe4D7nv9JfbJo1iG59yKqQL+vSzwAQfFKfb9SzzRnR/tGJesQozWIYLP84fjZwBUam75dAkZed3IDg4WeXOC2BgwvsyleA4OU1vpWTgJlTfWSWfys4isPInLScuZ5hRBfpBaqpBhQ12AmpxjJCpNABnxEmpREx2ifws/hRuU03pOUH+4uPuWVUVNEYCeBloKrJ+7xOCTDgl0pFQWof3Md6TfMvFWthpBCoklw69Jiz0BNKrR6ohhLbznQxlAkDrDIlRIOVOnVbyTvgytUFDsWcJxDpzCoCVoKrQmRLUoyXew/n3+49eb+jPfjmP14+K0Mn7gE/Ie8h/6n4pAz75O+zJP+e/akM+NsTeuQaZX+OBiwyr9SSaJBviy5XRk2V32iEtulxbxrcJbKULCHGOeNmSho9ctjalVYJ2ssgeiZHQgSmZ9Gj8YsiEiLOIrEZEvhlDC3NXaRTEMEnVRK7j9o7CZXEksOIREtKyGGxVHS2rVOI2OxZQoDQvGkkvlsVILwkISOkaMZahYiecRqUUcSVXoaosT6QOHRtiNIohg8dGiUUVlejiLNIyJIEfsMYapZUGkONci7GUKMQoWWjkfidPVxRxiXZZJJF9Ch7EfxazQiGHIfMwWOQ4XCUwNAP3IieMRKYgMvIoynJ9BaO2maE6Q3YGkpCwR3H1wjuI0cfOnZ+jdAD1ifgpFM3ZV/0tbRSJuKMDI0FOCNztdaKvzJMjfjl19rwL8mctYpgCf+1lcLVWgw+9BU1AT4ccfxKETSJcEFlUCx+RofWAvk4Z/un6hXQgVzOjNM4S1J8ED7hKyKMamoygUW15F+Jxj5LSoGaBnbKIcMGF4MwGh/lIycCZnFsQAjscskIYZDD7lVhIlEsghLCCP09wzYN2Wa3/GqWA7I20yeDZQqOUEyTO2svUFWY1lLxjVy7vJxHJM/FGFmVkc1NE1voVNV4/C77qVmK0OalqIw0Vl8d6ARvGGa9Ioqk2WwpW68omFWuASGwq0QjhFXGAL3C6BigVwLYelSfHD4GTNC665L0try6LI3VxAVN08Srw9sEFdYhTm+tdQiEWMEWEKexpVSlTdNcOp0UVVl0oMWOHSbloZLKN8ou0FV0e0+05+NUSE7M0p7VLrUqE/dUv9QAKRYtdQ3XBeVapLCpQY5vF2Mh2UmhZHzwpwCyoBMphAtJ221rBKTumrgFb2FwfolYgZ5/TKhi+C+X819ML2UssbB6GpLKDDv5JWZCmTdGQQqdchuFeFGFLlzhOWsnepl2qKJaxdqqQwqd/huFWFGtKG7rRr98V408kd/UEJCn7Ec3TjOJeusGTzruEQSA5ippX1EommZsSIQLQZ9feVUqhH8GA7LFjmcOwolk8RoDZrupb4+/dmMQMhM5+j+MJpRJYBDuEYKdq0F/LpQCi85XNGPhvtYDxJsxGNxFc2CQmchx9mE0odPxg3CPUuxaV//mg0JyFj03PgxYRIADQNKyVzhKFvrMp04oETfGDYhLytoZxqSg6oBZmsprv0Dh46E1P7joFJCWInAYtg9S4E6RHgh89C3T9l0nFh9omlC++fw8Y2mUZwd8FPcIW3j5ddmCoeqdWDKzjDYEBEzpxCQzpntVPA+L7Lh2QrDaV7QxdSy5GUEXlCpI8bto7oUeuBgFB3WDUvYRVSDytaveJHMUKLDajeG0tZ/4DXvnMHxQbhTsGtVZ7YL2GSWOk5lyV+rAVoGkA+MeJZiYRPKYI7qz04lHLb4iRGX4UUTC/p6MsTQviSIQS3yZ3CRqKLxvKnLJ7+nNv1TAYkmTOjqEUNKyPljubjZhJdnSm36rviH5LMuwgCp8Qgolyoonwm4sXdS/FeY3BlQ093YPdhE9WCesqIVOUPvwEiAySrKrK2LhXRkBQVEYiq9xjUYWj+EQEMArVRN2iuITFrfqnegucCPvRpVVdu1EfRnpW/1SmO8wpORyWhewC0qWjcX8eoImZxAFXxOA/fEJcPrRE4/Mjm0vDKN2TWpFl1xcEpMhuR02IKTRiOyIbYaLxAjnYhgoS+ZYngktv1EHc4HQyhs/SjBRdV4D43khRZKpjoaN4lALrlDWz9GoQLp1G7jiVc8yk5YtMs8qLBUN0IlEKsXBCT16JxhUXcO83AZTshPWXBdSg50oZj5taIxl+ZcoGp/CZQSc7AA2DGmjI/9CcrHkugiFWfVYYA26roCLJtgWFpAvZNjiCxl1Cbxh51/SVSa1xlyDk/UQrkNWmoYu4LL2RAVkB+yhl6La8k/CFcRBOD0OIsmkBmKj2H9c+yxb6N0AXpn1xz3tMaZ3FNI1+/VizvPz0lxvKX4eNveDQOzMO46T2Z4mTw5OM6Z84ikNR30KYwOydfYPw77ceLhTjHEwYx6jFgX4ZLxCJ13q9Y8nz90DqoOnUNbFtwjO1AoOqA52znDmYLofpIVz/gTd6gVk/Zvn6SHrDfurvWjsvzN6O+AeOSP2GIaAxk3ge1ECJ5qxfIvkv9leHiffkJmVt9zORkUVjIaTUdMxRj6mvbiyOJH/XPjR8sobjQ3BmwPTe3rL3+yiBemTMC4BpwA8DkgXcvDBjsMsHeM/CWDT1fyKcqRach92no+UTVjVYHkCSramRGydmx8t4FLySyzZtxNJUapallEZHem2yYy5sDJwDMQJM9rNk/IPmeL3IMlywr8lEfvPbNT9v8MwTHEz+qU76sb2YcTRYVF9UJcTIgoOwzOpf/YfNn5IVV0JISqfnuI8zMlsgscrzXzLYgPaKZqx6wPilzm/KcBOiL3xMHfr6OUC9ecGbxIYK5o8OE525UEw4UmYxWTopeYVj2PR9QYYHep/jWJReRBEOPcmcwu4R4nr9MtvPwtPgcxT6fGww0gWxeOQRE7RoPBTBCmQ1iv1AQfFFg9CCqedi43ag9LLJyHFx6Y5K7LbDBGoPAtJodqxBzlUH4YkQfr1oGw6mRIUmdcszyM3MubyGsTFOyqcaltqMOsDZV9k8biYBwlMlkMv0UK3uOlX2GHpASd2LQqJ7wmg4DwCbsxNU8MouQWQxIkxv30qQoHkfLwTSmZC3gmUl1Gto1QBFTAuLYGh2WOvKhNGtOW1d5njJGkcBqdZHqw3o/s1ioDdw7xU4VugbLo+88LTCces7dC1LxjCfNbokOl7gIUnHDnmicUkUJeb/P78MkvRmHsRBqDIoPKgguQGjpcdME0ROiP9Vg2k2D8A4FMcC1FDoVsEszyjHpnGntxAkdW4axWvQkBUfwULqv5PEYCRrIKNOlNwFaWYDymB0BsVPfQyYnv8OgzbvFHUsdweTQND6H7LEVDS7kMBw7nM6ObnuAR8V+Fi9DQD0bbsmk4DpRhcgWBsdDjENHLFDY6K1raC6bFsmCkelTBwJOi4YM6xYN4D8UtOYeoCNJEKbEZedV4cVetXQeRB2tSLdROa2kZi07oPPHejRoW9jEQsGvklWpMoGjtgjaAP36b3I9iP2ElD8TXmXmH5LgO/e9ROveGb3kYiE6j8VnYoPPXRrQE2/laOkai/HcLGvBsQWFN3ptACuVUFUIEGg+oqkRoS23BWHwOqYQlqSOXEjAYvqSwHNABrk7KT+CZZJ2gZPcLNEoS72QOtCOp5M2VzT0GUCphblvzIWD7PmxVfjjrXOgxbm/mBg/O54CXrNwwum81Bg9bnd9CqqM34NICzZgaNW8KVMT+zCKXO8F1tAtA0hQEYKp95QjeNci4KrWA+XwLny+ar4KjVGSy4Joo5LTRwa5YLLaAy74WGLp144JrsntTqk3KZ7emTcZmigcuoBhpA13DpTkIj1+JegbE7XE5NIlr+IrSY3M2DhM3zUfBctKXbVn4ze4pRFI042iEipe7FXWRdYnWnkKalZIULWX5laypUW5CO8uSuq+7CNKXoKEnDX9bbDOrus3ZZuTetV0zhq+qtpYvrqrc0hSeru2W35WgpTemN6tVa2znVbbuvSdRRwqp3rLts3bJ0lKp0zHU39w5BWsrTPSGYSmhlfqBdodeF6i1nZY6iWWR1yqK5K1xmMLr7d6coHWWqzZ10l6pHmI5ydc3bJpHYmsZplspndbqrri0HrjRuVEyCbfLnJbyXbcuobih0CciPitp8AIWQwAJlO5c4njB6kDt1k4shXi330aTjJspj/8VmLstlUJ7aVAjCLA8ntYPYZsbaejAUwmOvYZtbfdiHBM3obWMa4R9x7B5ftJeCi9EjAAC1NJXcEyOmyzkPX/B2HbRqhvHsAdPys2t3Z1l0itFBP75UH+3E71oN1AT/SM8PlEdc4FTUL0NLOSSZ59b7eoCVymGIpoAjaTA0fCQ/vQEIHJuWTSg7xbXdKtj8A4oS2syT2THzhlN2jkeSqv/ig+fWYog8esF2bB9dGmSoxPE6shLn6kQlX9zLosOYXH/dqF7ulIlERLMDxfzg+f4lxXZ50pl9rBx8HlDheCABRs04vtYXIqyGwcYwS0gxiGptD9Fe5tJ/WIzefJ8dj5W0jvnH2fi4MBn0v2c4G2wsQsB5juVZRNoTTmf5j2oCmMtuM6b53wKs07MbH+wIxcS8+3t8SL3kEgfOP6ORTWoUVuwiOLAkMEDBnkhjhdMbzRq/XsLBEf94OOHCeDh2iR+/UxUMNMsjp4bDF0dDOsjHngfYahwHTonOmXjPyFwAA0ahNxiRKgCJaUWPH6xGgcK2G2fEPHs8WOhHKJ2ZN8+AkFR7Njr8SlyTImN/PjfTK+MYhz69YVeTFHp3LxPBb0rQJ4X4xjhOcKpXUpIM+riSyM+rxQ4aGrheiY9K/ACaOBgONY3tQ7yHsxujDg8JoMF5Jocz3LCAncNguKkIGGA7wc6vERrOjymAN5icaDxWkMZhBGcbcByHcGPUCdBvOD8cBuPAxoORwRO2l3o+XL/i/0I7IP7gcWsBqBUcVn5LB5/zIY842WDYARk9k5BOG+FqJ3DJ2PbwBIYXunD1EmG4DhcNHloSgHISYzC5txAcXPujaBs4NL6JBQ4I66WUqPQNOFQyCTOsBWDd5NeMFDmJwGCJdw1a8NglPe9grOFmtTGgA5OcEdyiDwEzV2tIOAsSbAVoZyCnRgTLzvcNQRHZmkKSuSmgW8+Aw/DBheWaunQcBoNMzzFGY9Lgj0d0fUi4R1IxIw50j8YDnU5TMNuJ4do3B4Sr3xwwUZ+MEGMPuchK4YCWsS5QxZIJysjfOKC7bupOYRueL6IccERzhQXO2J0vKSkP+IW84sbjMjzIy0legjB4AZh+VSTQ9pK6Ad1Zj8IExLp2oFMNHTBzcSAMRYcE4j/5buo+wvLPV4thEUFmuhXEA1Hr5UpCHcDsxphEUxNpStHXVJqS9DQZAh2rO7QVQKA18Qoi2Mytgplgrl9QUPc32MpJ0jhzQPszuMl/RF6mgFgkDkeeewpGBz5cQ8p3qkenGhrGY1vVozIrjcWC5uaH8j5JG8qOkfwaWjccKfEjSkh3U8et7PQD6jGgaWWVYfjuNMjIWWLmm9NjIpeGYdgBGlAs5eKpuQEXmOqOoXIBq2g2hYElCNdwnVR+ACsw8qy/YJSwE12ySiBP3aDngED2g2/L2VE4HEE6COb5ocL2RYHiH5Q2zyswID3SjxJV57wKpbZvWUWKR90AOwqKuLzDl40NIkXoQEcjdZwHuN5HsEBaQfSgFj9Y4hS+u6pNru+LKKMlqAh5goOyEWmh4HjKNXDBA/Il2oiQHD0XD1+NJoQI4bk38KAsZAWWT/f5qUj1YaUf2g7ozBKlwzcPwwgBLAmN0AHkrBLw0wF3PB7OkPQYHiC/M0pA+TE8QH5gXl4VE8BDq8DR2F5ADaqECnfAsWg4QHpK0XUdeDypA8iMqgpL3GfAUqvs8HfAJaBVkoBWSOKFaTUbNSTRBjQk6/zALChbDgnBEsxDpQ/BTQ1Is6bzcfuMPRAHg+KBkWvGTAAj504lBFS+WgKlQ4pIj9uCAJHPhgU3iF4g6ZlbZbhLWIhq12ABCNLtg12KfJyzxMphkhJSfn5RsngQM4fib4sWq/62pGyWnaRRDFEiCT6xA67sRvNHFz/N725//PH2C/9HmNoAnv3l/h6aI8ME40kafpymReCzGxwwO3317wTdDw+Zh395880vb76N4vBX7KTffPzIvvzDs+8FyTf82z/98ssvb85pGn0znz89Pd3kh1xvyLyRdKz55/yhG0wnk/TJP/DAAPZaGmf5l+6Bfc6cm1zuTYLTLLphO9sBsWh37OMZ+x6a8YQGRzf2nxCZ8Z4ch2FEB78G+udffgn+8Idv2VYeDYNK/hChlPYl9tTN/6L/ndOHvp03Cvhnpl9OlKiAIv7nH//jlzcx9sNHfCBfHZGX4MtDt89svzAhv/zbv1++vmMn2ctvvwqdvmMTeo7xmfSo7zJ2Ddo/dKuu239oVYdW+Z2txAaQN07J71qpv7yhAXYnHMxvEs9hC0d4fuPETrGNSv78igxw5hTvv6rS//3NH984YeTiww+uh5M337z5N1INRIs4JvqrVgRH+4zSM1MdvxaXOAwh/ZP9wZJbcHUXPzCp5JeTS1yt8m32LY+iJV8Yf2SAKRmQyKflcrVZbZc7g7WJKhnKuZ8L9YTzA0e1nXMx4bOVaWzM9dayxKWXblSWEPfAfiQtRYXKar0xjO1yIaGHIosQm2owp05JJ7uFYe3Wq+VWQSeP9O52FRZbc22Yq912I60O8gC/PU1FGcZqaex2W2srXy8Js1s2S8SjxMVar9aLxWq1kqZyijEO7Ch8ygMFZZkYu7W12FnWQqLbFEop0uN4bvDAZoxqqtlstuZ2vVxKE/Lc0znN2aj04uWOkFgZC0EehVY8jCO19mptVruNtV2LMmDLHjRYqrjVMEwc1/NQGio1lRmx7cZ2sVmuVfkQw6LWfcyFtTGWW0O4ci5zRvsd+UZKurWyFgaxaaJGNXj0LZu7boqGbLVdrExrJ14P+cCSPIVKBLY7a7lbmhImI88fWrQDBQ47a2UudpudhAF1siQlA3xO5VwNLRGth+3WMnfrnUQ9cA5EEdkROSmxn8FJnZGxW5H/bRZLiZrhe9sKfdIwzfVya61lHDC6pBdnUVo2jcRUIbMhjWO5XZkSrSMfUQFa6MxYWtvdamWZokaqFnGgYiSJ+J2xWEtogfvjIGogxsIko9hGwgnl6YPONAH8ITwpOTprYjPXW2Mj6v0dfHSIH5VUsNkt1uZyJ9ExYuR6+WZQlLpq1bDe7rbGdrWT8Kv2IYoP7DhKHHpqE5L1Yrsg/ycxF9guTOLBE40c3NBuzlqlyCx3u+VyQSasyv0jxieajVWleRLDuSPe5kq0elAU0flRhGOaNFOFwnK9XK82O+FhvdJJVRRAyr7YrciQqtRLatbbDVwlT2tFvAwyd5VZUqhQQmpWfLVcLdZLiTnAhUJ8JCzSs6L9ILNEY2GKdpZ96lXyxTtHOfFrkwyjm52wCW1JJ46FY0hRMHebxXZjyQxjR5wHrypWgLlekDmpJTr9wj695pT5d7n7rzSUbbemSWam4kpgE2J6BkLRnSCenbFcS82K+XayinxzYSyM7WYr7EZUxOc3i6hpwbC21m6z2Yk2hiLpI9vzslGiaBR2C2NDWuT4adiYxX6JwXO7Xi/WC2v04FnQKJ2bYl5Oh4wbGQ4zooilZaw341fSKiTIKO65Tp7TnR7UlBtCN8bK3Cw229Fdo2Dw5f7WfldsLSeSlmFlGSapB+GmwCafXLZNdIC8UHJNYGmsVsvxk98KgTz59BkFB096NWCxXa8Wq91i9AjZK1+u/e0Wm+XOHO9AVsSXi/05A8kWQLohGSRX5mjTeI2BjA52ZJZFOsFi9BDdRYA5jS47s+dIasJYbnebLZn4yjTFOpF8R+pCR0YtxCRtiedmjh60R7ORs1Ibc0va6kKiobqNIdzmP0nW0pIQIV1W2Fx2EEljFCTslJIKJTKuG0syoC4WpkRd1Sc/SsbEXFirJV0ukOjLLsuUDFFBZExf7VY7mSElJ3HJGaNMZrYk3vd6ZWwkWktlKuZijPlKRnR+sRPs0VgCKadnZ5EJgbkzRruAQ4TyLVY2FMkxMld09VnAKS0Y0b06MkdzPXzjHeQMLpkVbJbCDYVv1gVOdLk77uAmZLbsnCUdgfWGTI+W66VwDx7gIucULJfUHzRXwra/uOn0WNuWkDT525212JjLlaxO+OY/UA3NDGux3hJvdS08BA3ykakli0zrSfMVt7WcDZ/Mwalns7GY4RV2X4YJSbXizW5H1waFa4va+svaqIzk9Wa12i47XJW+8CofuYFcIcnsYU13tds2rE8WmTRKiSID+2ax7fCS+wTR8H0f3/gypnm7teiqbkcIUp+03jDu8jLK79kCyvwuv0roA71J6OOPH01jnscV0muu4jSLbP/km4acy0wGetL+jfZcTiNrFo2uQHq2JTPghbHrCHDSwPp9kRyS8l1Ee9P8tbzeRtST2dCQinVHhJhG3kTV+UKc3ChPutBqbVrjeyuUqm3k+JGkYV+R/7e25qLtoOlnLbuqQFe0VmSAbPsO2jnvs6MjRXpjLFab3VbAlgNyjpEvu4JFHMXFyuoY96egnUrq2jI2RNMda7/aSTt+JhurTMzdmkyXpudMbd4l567wdIK2D2vdEVijn7iPCPnEid0oDSXjo8ytsbTM5aTjDGcflVmnBDkbq91mTdzf9rqDdtJYtn0bq41pmevVJE5fnfMxiR3J1r021mSSuunYa9fO+hQ5sZz5Mxcr07TWRse2xwSsXTlVG8aSWBJiAl+hgVDSduUaadFlQGI/dtvda7hQ56Ns0yYme0NmfetXIf0s2UaWO2NhWeb2FQZ215TrjIa5M83FwurYgdXPGR3kSG9Xq421IZp+Bc7V6zcE7R5xUw1z+RoWxCOuiKSmiaO6WXQsO07C+XmPpPe2SbNebdav4DgVxGmEhhvI7jkuVsbOJM3lFRxuD7OgJ8mFcxqxvN6+hsfqSY82M3oIYblarjevQltyvJkZNJppaS1ew//zHk8HWV2Txk2GnGkWWOus/URymFwsyf8ZVsdJYe2cI9k9rI1h0s3W17CBhLOduCfCVZL7ekvtn9URAaKde5w6km7JdkEs3/o12kiCfeR6+/BZcoqwXZqb1W73Cj0ykZyxG9uVtTV3VseZQv2cXxLZsPAZcbittbk1O04La+ctP6wTmbvNYrHriJTTzjqTH9cNY7XZWUujI75DP20aeSa5gbDcbqyt8RrKpofWJPujsTTXq820K8S1HUgZ2qvVjnhQmy3kVDIPJmBZ22igdBr6rtyAQhw8k4zi6yXorm6d3t6VbKT08BMxZOuO8zVQ3JzwgG3HQ0niHnmsuaweN8aOVHJH9gogri4YWWKyaKNcG9q42jg4uCgILpfhCh+cXi5o4hzIaUeTYSa3JUhm/NvFYg262Nnoz0mCZQ07mfoQamSCrK9ua8nehcPh13Rdfmvqs4b03IQre2LBWNA4bHNtQM4KmvxiydW9HY1BW24hXeg6tSSNLzfLip/styxiAjX2C2IDE9luYS629ESUqVN5KM0kzd16s9sSe6yj09KUqBebIhVCtdpa2816uYLcTauz44k24hQ/+1Ict8ZisbBWHQcgoSjyviF5DGm5WZqm0ZH1AowemTAiz5M7DMPOadHsIB0B2mAEWeeVC+EjVm+xMEEDLDi5NAw954zcshfzJAZ58gLJpQ56FtYEXXu8zlY24NtaL7aWZWow2C2iJ8exoxjzGzOlQ7CXC2O57jhtIk94H4apF9Iw/kbWiMZHyX613Rhbc7ftOGoARNmtH+eXM57mbrHYbEGjxa6RbNxYIH4cbLNe09arj2716HGlDUiukdN0Q7uOtGyg2mU3y9EZomT03XKzXmxWO8gB4GpDldKlaS2XuyXstPBqS41QnMhOJYg3QtM8QS5ejOpVUvVPxoHVzgJ13jvIxjjB9KysZKwlTWa72dJjL3poUjd0fvRQcr6olpCz2Vdyx/8WS4uMWV1nzSZgLKNj4gcuiMECDdNuEqZU2bUwUtNgYk+XhmFtIE0V6eRsHbiWk7OcndQSdcpnw7B2xHYRmwC56H6NuNvBnKakkl1Zoo4M6X+QNkJQ7yyhVmLKdcX1ktqPxWTqr/OXnHrvFqs1aTev1WSkW8tmRfS92YHO2QQai0I7mW0WNMOxBbqS3029WBFs2xc572i3WS1XsKH844lLBxjRKIwl6F7ENdIuCOvVamUttusN5JSpYM1TYTXad5Egi92xLJUIxjC2q5UJuvI+ijKLiJdhbBoWme3T0zVTUyYTPnb7GvLkTMiaOHxby4JcAurhzXtirXVIGQ8yuhumSabWU3OWPjCxIzPrtbEFPQQ5inGldUguZFnbxWK5Bo2+EGTOMqpJ7lbsyBBj7TryHYKzzz8m3SWgYzw+xpb5fJI9HG5YdEFhZVqQCwpFWVoJvEsfq/WL3AGW3YpmYgWN3Bji3pGVXGXbhgXQrxdd6dF0lIF2BkRXqf3ETeyAPGU/unGaSXZkg8Z0rzawK+jX2XfVgOSW485YGHQnXgd3niCtbDT8s6Q/ThdRVluBhCPqTPOssJJ5wtbWamGup1Qsu73CTX17K5fZY7eiRyq0zDJ7KdMrlOQm8iuaFGa37bhLSifdRJYvzQHJznaC7q4OEn6UVzBpwfQSj45UjYB8C3NW2AYpK7bdbJY7YoW1jIE9TLltkBoxrPWKnvLQa3WLiW6HdZBSMpmH7Ra6PL5eLauRpsfWiRWemHMmG5BNcxStLQM0289wu5CmS7PFbelVLtNqVzre3dgY1tKkA8eUfB+l9Utag7nYLZdaZuPXepxsazC39Fy6lgGjlZ2djXTk3xkPRJUa4jZbel2ZlvW7NmE277gQltx+IYTNxWatw+vpp0ww09AJJVc6zOXSNGm0tD7OZ+SxBkFzhchtsSzIFNowdLbdguMeJXgWY/KYg30sm1F2vba2NG5LY9stCB9cdAqIeXAldWusdxtzvdp1XI8IzhX7exzPovOL5KRiu1gtd0stu5sNpuxWheRGKvkmGRa2m+XWAj1v1sMzRsEhlJu0L4kvs6Z57/WzzFPx5l/KVf12ScbataG7Q7HhFscu5c3+kb9RYE2zLOrYXWjQ5Wt7VtUQyA0EdK1pud2BRu70kKb/yu5bb83FartbaZmfNWiiRDYl4XpNJjcb2KNmPSQvkTszjAmqLOXNerU2yaCl0XkpKWdpKutkmTS9LWmpE1S/bG4zY2uRgWrVldcdnCM++pZp+64Ty00MTJpkgQZsTkDVN5+fZyy+cHbAR9nbWjaL3Xq16rpTTQPj/Aoy+dsBN2Q+S+/j1rH41bapsgevTGNhLqbgWG6MJDPWcGXPsS3W65UFepKoh7CHZfPbmCvTWtKbJfSTZL1fZeZKmumWJvIHDdq+SlZha5vwXCzN5QY0XvcaWUmVLremtd6AnoTpYVn8PlO5g5u4VCa9iGoCs8onLbKrmsv1xlgYE8wEyqFK8rzGZm1Z9MzjVHMWWV/VYFeEgubs6OHJJoKz2vXxM8odJzO5scDYbVd0D0H36kUPeVmNE/u12GxBEyr2tYzabeR0/D3F+aGpcxg+yJrg3YpexAF6Gq3Nn6WhKfZMG19LXj1Fmvluu9Y8dcx5t5UvnVWHuOebzdrQOeDR25uq6/bks9xy4nJnrJbbbcelN+Bci/VvylWqGa/pdbzbBWjCs4Jr/ab1ohXXv5U7CbpbWhYxHToUPIa0fXgJEPGL2EGx+DFPcSPXG42VZVrbhQ4PubMkbrMoCrtTxAZa2w1x8Kaj32Qf4xTFJyy7RUE3flarjnvrJ9K+5InN3Xaz2S5er/lHYeipNRyaaHtNJt06XJbRRZDcgVkahPoaNLe5YJs/ydqb2Xqz3m1o0JR+8vVMFWrnWBaLnWUa1lqHez6GtlKiDWNFp8DW2tAxxtYujs13mHk+k+alskr91bSsHV1x0GEpxxcB+0vZDV7qqlsiN/Sp8E88jCPbC8OoVQbJSEeLHnXeaVntE6KvEHDMcqqR+ZKWUDexQigcuyT0zRWZb+uwRAOFcBuliGKXuJ6yWWrW651JZ1Q65oH1gnCLWu8GcvtehrWyFjRL1auQVomo3a0Wm81yC3oV1DXmLoS+yfRkaew2u47rbdVZ5xlrK4nBaP5a+awFhmHtNhsaEz4VVwLn4CSxkSM//1vQm5QsQ8vRUU66yPtXUbBUC15uDTKArrVs53dSbehXatVou12vaM5bHZypbWaJxC+544pvJBNvGMvdjsZXT8yWjYcs2b/ciLi0LNPUEpY0yJpA08sn5Q71GWQetNATXDtIPL80U86P2q6IwvVE2A7ylm/exsrc7RZm183tGni7DeKSOdGX9OyqXr5l1tjSeEiZZzLwrXeLnW5TV3gXqnSXdKd9DZpJtmCbR1o21lDyL+k+ppx3sTGInTMtLUlLrhBWmjWuzMWaiF3omKtc51zZHZRcb1gQ3outlmnWWOo2EysdU77dUHO3WOrokPUicAuSf4kiV/qiuNV6vdSTOOsKYaWlcJq6yVhqMXrDlG105F+oBJ2QPro0YVMajyuC8hY+vduYTGqN6RtMpZPKt/fljl4MtgW9M06Yfh75YctFflhbc2Ut9ezljy5BYSXlVnQWZNpuWQstjkB2wB56KSx8/kluirMl1tzSEurRxdFGsf+49mk26ps7mZnNjthE09RyKpPz5e2B61Sq6ld02rgyQO+ufffx7v3d/B1N3llcjJQnUVG8bcNgOZxADV0vVc5CdsVuTQaUhQWawr+DavqbzaQ+yx7MXq92m+XGAk0/0qvSk+Q9hjTIfm1aoPHLXSTZtRK+ZcnuL27Wu+XGBD2V30HTjzJmmSTTMxirnbXaAqchOsTuI0vAtc/KMDn2gZ0Sl8o/uN2Yu/USdHu/xrJMdVawlBr5d5vVYrkFNfGcJU10V6hSOifihvSaJd3w0MSvuK9BNikfDV0yiee62UL2bewf4sf5wUf0H3Ywmf0pGZy0MkyLXmmjiyDToVncTsu/VbqslvjUa3ND5r2gidJapLlWJRkulrvVEja7dc6wcs8Slr7hgF53vlzQUQecX/DoW4wd/YMuhdHz3bK+m0lct42Gaq6TVJpbWIa53GwN0HtxO0hKZoQytwtjsQQ9ed6lQQc5Z8kQAWLALZq/AdKGd1GUPrS33q5Xm8UKNMN+D0GFmwpmpBnSi1WIj6aZp3RW3eWaTMK3C9Cjb10Ewz0FkR2waQDaag16n04XyUj2cpIVMTjr9Rr0GE4XwTSWvZhmudpam90CNPqziyG9NEPag1gY1mq3Ak2jWeFIvbLq+FckE/Lc4EF2396g8diLranLmBecJaMKrB3pOybolZJdCs1HGrmNqgVdxV9q8MXrFM9Kl+SY1mazos6tZpbSqfNpblRru9yA3mbRxZDbccksNlua0xc0K2oXx0j25jZjtSVu2W4LutXbxTC3knJh/NsVMTc70LyGFYp5tgfereUzP6zWZH693YGu7bN0FDyRlkIQDanj7Wa9As2mVqPm+JkcsQ2x1NZ2DTtEV4nRe51lYyBIt9gsQNdsa9ywpNKW67W1stagYao1YtLrYAahZm4NEzQLVo2ad/CR7CGszYLmkQK9RLzGzU8kgyeWW3q32w40cUSNWRTLWV5jt2bRd8ArHxVmsWQf2Ky264W1AF4urBKTDRCl6YpoMAzsyY8atzxiWNZ7N4ytaZjayClEBNPtUWtpgsa31LippItf7ZZkLDAX2jqpdJKD9YLGqpugezg5szwjFnc8pNZ3zeXOWNPEaLq4OWdXLheAsTGJ3d2td7ALplVqxLZJrQqYpBuYmyXwxKbOjMUIIMnDEaTFUYdcwzBfBNyqqI/4bas19d50qQ8lCZbN0b5Zb03S8IA3ZGqdVfJKbJrBcGPApqiptzqFdGUr4lZa1hp0N71GLkb+MQsk916Wy4WxWxnAS94VdipRMuZia27J5A94vbtWsbHcCu2GjAymZekbuVisicq2Gk09tyIDGOh9XjWKWNLMGZvNZrtcm6ARZTVmCuEG66VJBgjQc341amwaKNUZdsu1tVmCxh/XmNFJoNygv1jQlAMm8FJhnZrKqD/b7sgcmkwetNlgOk2V2xrdrdcraua0jQ6SnXRlbazlYgd6j26dWCoZ7LehQV9r2HjUGjMySXWOksfHjS3xfrfEwmkkR2fQch7cwjLNjcYpDT8QrBZpbtG0bBZoqqoaSfnDcDODbtqYS2ulzSGRv5NotzOt1XK30GZJpFMCGkt6vd4KdHiI0cENyX9dz6YUIy8jhOZHqsHU9WjIYfG3bJaCxWax2+5Az+QJkJZzl+kxn4UBelCmmzP7TInaLsZ4uzCN1ZLy7/reTlLkPNj4kbCUDXCytrvd1oI0CQDlis4EHXvSkTLrjfX/VffuPa7jSKLnV2nU39fHej8aPfdi0VPb6MUMZlBVs8ACvRCUMp1WpWypJTnPyVrMd9+gXtabFMWH7vSgTqZTFn/BZzAYjHA91+dq0JwXKwtPUG4DUpy7LMdD0bIwiJ75J3Osa8vxfNvmG9iDSh4M/vq1TuLMGL8J1ESctEf8VEUjAuMa5cJGAbbNPJVdahlw/6lzge+QQbcN08GGYWUi7KK3HMfH4fvEj+ve2B3EP8LBY0Zje/J3pgFiaqal2x7XYFQCRGMbOLppmrbtSpiPe/BlPJKmjBmPoKDDeYAvc/GfpWerfM2ANV6zuEbOI+HnV1jzyttQhOZD1rM22J3Cfl4Xv4BQisG4hvieZ1gOV2MTSYzwUQaX+HMoRvMhY+Z0WM+xPmLK7FSrYrBt200Qw+Qa0nNeiChFP2LYwT9wrLomUee5p/A+o/4jp/pTtst7rmb7Jt+DLp4ysbQTjBbDd2yux+xcZKpPr/aIdnJs37cNvjl3yLI1F7V6H7GGo9Rd08Y2Q3H4DSv+nfUQUzcN2xOpNfYYg/uVNamNB91csz2Pp6FpBbQ+sg5Qnqc4NvKFcXvquJquYQ97OdTsOaMs34BxyjeE9groFYXlM2dlxbGaXZdrAo3xtNDOb28Jqj+FHxizRmHXCtPk6ua8RNszH1V/fP3OujnBCU9BSRa5OWnhv9/fnkX9efUjqz1aA2JP5BLfAv/xPfxsekf1I9u5EkwOMPS4ZlhZAi7iC/oeJh/1n9rfmLOMwdoMez+Bew7sq1abDTvj4Y/6r/gvQZGhKL4y3/81bB/7KQhcncNnmcKLz/Bz9VmOEhQWqPu9vjwR3N/vhq5lb4bxexxW0UhCJicz19Vcw+F6hLVRoHt6eSYo6Cy9WJj2ISah/CqsvSZgK3UPo0Ylef7odk3wM+A+wjtr2HTf1U3L4noJdR2Xcc6BLYOpc71E+cKMH5c4hy+f/vlET+ZF04H+bAiwJmPCBNvuTvATa35lx7FsUzTciT2e/MkzHRzbQNC4wXAwAyesiV8t0/c03xJg8uzoQNcMH6x8mmc5tsP3IvSQ7wof78lFCvshx7NwSlphiHuCVlqahW8PcU3HN6TLwugD7atCx9Zd2Jxxvcg5gryxBb9zbFtzTJtrzPQh2Z7kwtjiVGW5EkP3TMqYeW7Wcc5QU+fr9zysuhrwgcrvac6mOzs+zrPF9yLFi7GIQsbogLbmmYYpwJKIsZ5ZtmfNxeHAQRn0uAZZnFt0dznd67ZteRpXwwTUWpzd4EVdsto6PwDjpQXfsyzf8Lhmsp9HZPaGhjFsGo6tcb193WNsgtd1jIwpt2Dx1VzO6WSiZw5/x3TY7zh9QGFVtrk3dCmTIihgEKV52V7ArxJGNn8Kowi2WXnInAvlZDuG75nuUQRK7484wwlUGd23QBLb0H2ugdJY5MmKkEPjwILmw06Y671iamnaPJP1x4xxC3RH03kH7N/Gj1siyr+ykm3InwAB7/t0vgHBN8kQ7xXCgi5keg5Xp1hqGdrcmU0/YhrVmmu7oAko4w8RzLWscRF1DZZe37BMvqk+N+BH0Z0ZXzcdUzMMjXOGxi30oKCx174B2z3P5xt0dlvfR42/2J19UTNg8PINcrdNhFuo7+j/HqwBlqarUTIafsN2mCUwXMtydL4OCVv5bd3YMwYsx8LJPfkmK9ggwfueGQhqHnq/z9UJYBM9in7Pwg/E3oFABzJxFh2F629PhWDb5WqeV4XfUSdDvFeI6vaoi51zFEpRCfEZJk9W5xLdhP5kcD3rXhQBszYh1vu6aJkzJvFyHcPDkcykTEQL8PVH7H7pum+bmmnrXA8KGIXYlb/dNzXftC2uhqstcoBm1MAFF5ShxwU9ohgxxuCyYbNs2q6c+WkiTPVJXBYBe0hWmJTwzXau8U43tkbTqd6ecVLGj+ADfbE1hu/rvubz9a9nEwVE6GvfbDkXTNgDweqtvmGwNBdUZXiPGUc9VkN0zeOaCohNmBCFF7aR4oEyYrkW5xysLDLggw22uReawfWgHfhmaWORocrtgd0yGa8CwbxruY6ucBFp18LK1M8YD9s3DMP0uHrsbpSizMNHkYU5wtc3dkuk65brm67F9bhxv0Q31jjboLq7tq45DucEdnsFYp/FdAd2I6CDqZzGZgRintIsE6ep8blGqdohDoe1EifOcwycs1fhLJ1m4T+fHBYcU7NsrO4r7G2NKBxaRoe5DeYCw1eoxgwbZs/io2PzrudbcsxzNNIwz2q6YTuehm9wSRYF21bgV/i3RDngwlzwLKDgoCjTnDV5ywl0AttxucYC2SIMbhuuAum6acF2RtL5+IxE1c0qVtsdDjRh6ErY580uTHJYngvdSvpuspViyejC5ldk+aD8c71Zy9giu66WnXzNsgxsQlLXKP2Zl+2YzfSqXKpcwwGwCdEshmxiVJt7fGNbuRgjRYWxZ7mmrrtcr+ewS7PzIPpUhSwxbK7hENmkYXYpxUHDsa6lUIRG18KBlHHHYp17cYRFx5FuvZ8Kwu5WDnOWZcGehKtj6kYh+pvGfU2CTfi25VpcIxbtkGaHu78De17PARzxkrTuMd1RyusTtu2U73oGTpgrYR1cYd8TDxJGtef5vgyHnzUJdu1pXdfSNNPneq+AQQZ4IE+zL0Yrg6sZvmlyvaXNIAO70VQ3qvh8Uo6q1yTgYYyDbauJ48JI0AtJotzCxyWJGV0gToaJrT2Gp1iQvec+vsE5aSyDDGFZoqLcY+GFBRv2G5YMq/VYkLgvyT2Mk7f0B+vZCEBYli5jl/GSonFn6i3XTO5MoIx7umGpRceZf+MHs7bk65ZtOFxvNjPIwK7vGboGawTnaO0MEjCHoz7pvuGYsCHiej2fUoLBQN5liNId2zA5h0JkaIbO5lx5ALEI4urYNqikP8VzkjCHBMA3Byy5Suy0PaIbij72JN0FSWCOMk2+F2lZJNkjg2V6nqdrlmoZdlg3Dd/STUOT4S2zJkK7K2KRAevhOHGR1O31VIRqU8RmAdR02/VkXCZb4+dgXIYpVrNNWLUVD4jBlohJENdwXFO3uCbAYBDktSViG9y2a+swSyleLfqbIqbWwOEMbM2TcWVudfFu90Rsq4VtGIbnmjJWi+ooEkVBWnTBEHqfMAbTsU0dXzOQYUtexQ/ewhzdUcmqRFmmZeA8Sxx60y3ML9+B5vyWwk+tPaD6hf06B+hGFlbyeBykrAHiEvN0R/QJQ3Md2OJzmSVHoM0kMgBlDEFmQWW6Ng+XgDVG5swLJo5e6fk8QhJ0fM0pTK3bPuuAD0Fa+VZ/T9tOEKVsdylOPr6y5hk8cm1REjc1jYnZpl6oX93xPYeDTadKVtWE6377KlFlIojLGBXVr6fuV8YhZfk+DCseG256UraBBVsHy/J43CHtk7ZLwss2OfqA9eDBMlzQTXl4cWzDZd0em7pj8ojQUNGWtxgmqSzMYa1tboHW0VLzLzzoQDvDx7Pxnc327umGDusVDx9LIm15y1F4YT3r0D3bsnzT5+FtQURt1RzG63c4BYkGGqNE0h1nxLAe6KBXeRqvAbbKW4TsqAbsiAzsFiwBNExgB8fu3oQ1LN93dB5KN5H17RHcn6yGSV13bdvjchufDBoWyLH2mVJ1mF5t1zG5qQSrwNAJnjvyreu2o7k4YhKHjTwt7K7atTSs03IJQE3Le0+Z3VRNHSsGPNLaboAN8vA7W25qyzVNm4cj1EZa6BKfYREzJhiwcehMjUseXDJ3kuLjicosvvPExYDNjq/B5CajdzTHKlU8kX0nE4bmQIWbPOLPkqnrev6ehxnrVKxZtiFlcttzT0Kvbq/avsnBLrNNKQ/wa9jykHim5+Koh/KRd63Ovg9Kmu3wuOhE5i6ZbwY4OBKwxeMCEJGyisK/9/gY6+eGyyV+JxEYRdnr3J45UJWl+5rGxcJICbxjifNc08bXp2VsLJoD0yBLE+bOYHtA7PK47k3ETe5pyWhnsmAOMzSTx+EPEfN+wV7szFsgHzYVLo9A/jSg7OutoVmu5+hSdur3rNhzORE0c891LYubPZTEuuM+qO7DFg17rclQZDBrviPrhGnimdXmEdycirXMQ8YEllCjno6Dm8mYALLwgvcOrB3A1jUdZioppB97VSwcwMQ1eKTcpIFln65cG7bnFo/bMxSc3/O4ZPS2MH3bcxxTigmsNYDu7AOG6XieY/AI+kREznEE+qQMbijJgIcxZYmvuZ6pydjOYN596rYFmquv2zxc+Ym0RZEE9RZhT/2ebM3SbawdSEKOkpjVOK67nm1ppsnjHJqOtbJzFE+YIIq9c69nwQ7X5JH5jgr9HheMiYyqKM3YgiCJFH7XzX3bsJNtOLYDCo6s2q2ZmV3TLdOzfUfn4YJLxP1ha/5+0wyOayqD9hVduZ0o2HwqHFB2YG8m5TB9R4Q8S3d9Saa6nsmWCVXzPHwOweOC0YZewOpO58FeR7dcKWf+ry7LHLPKBI3XdR1pimQ7xNi7ruXhNIE8EgVuAW4ib+BejDWe4JEGlZsxY0Q6Ey/J0K1l2Jx7UhRJWu4NCYyDiPg+rNSy2ZvQX2x+hCYsepojZfPRY0YR45zne4ane4Yjwxbd471eL6yX7T18h0E3eHg6byHeER5Ag07hu44ly4moIWaNYun6sFfikz1gCy7O/cHopaVrtmfoDo/UN1uIYTPNthSaBmzyHBk6UX9aY6tdfOHXt7gktdysZ7AeYHqm4bs8oiYwaBqszKYD0KbkWmZ23oJJzfYNEzbSCoh3nb1AX/Z8zZWyMV1W61j9dgzfBz2aRwRFPjopW9+xNdfAQcYlz9dYSWIDdk3Pw4qH5Cml0pIYq9jVQX22pXh4jbUkFmKYTGBG8WUvirtscrpbJZLX5Jzi9KBZvQ6wCVEHbUny3LcjMblhm57B4xL5Zk2U8bBUwylHJJ0/9jTR8HFJ7+wedbpj6RZsUqS4K440aKYjM9s3TU03JO8BC0YvYRvPxTzCue4xwTAqph7Mb5Yvxf1jxgbDBO0Z8D/TEnrJKH5EyfOCut9DxhuHnqlrrmbaIlWhCWseM7qDwerhamJ9gSawxUNnjWTjW75pGEKPqudw2d0tPN/EgWuEegiPieuLR8zTg4azAQq9uDEBri5wsLq7247v62JdxCbAvZsbzLl5Lc3WeYSgoad+xgkOAXBlTGXrOJrnaBqPMM3UzFF4R0nCOLvpHtSzZ+tCfYcnxBFbT4Y9tK9pvli/7AnsLYT/NzTG6vWhcnVX6IHaPHGWJmxRuHTsmuV6Yi9DTJn3xqEzLcvGpiKZ0Husn5qPM01xiU9PD8y6K4WRp/mG5vPI8UVPm96zsDwZ31jjNBmgC7n4LFgqNO7CQXj5/VmUQYLew+hrV2Jx3TQtxwO1TuqkNyfFNYftNvOtCkOHLoTzSqhrDbzXqoSoBWK1z+DQEyCNUjGKJzZKo3KPKLqP76LDZkzq4jQQpSiYwxRY+FRD7j5nyI498FgN1ZYFNa+r6EPst6Is27Bs17EkQ/ci2rDOO7BywZZYak8p8+CSvzGqMoamm47lOzJtOZXLOetYNF3LtUyhBuApL2sIMd03bdvweCQzo6e9Me7dDRh2vqdrPCJ/UtOiiPEIztVhmFmuUIv6DCzjlKZ7ruHAjl2oA8IU9/cdRy0ODjGo+abMkcZ6ggzbSBP0b6G3aCesO6JP4+5g4oAsMg1Oe26pOj7ORWVJ3Ri8s5puTF93PUuu9nD7uFx3BIsxXItHiF96XNid79AacMxubMqTukdP7qzLsGabmu/bQj0ux7TNv3vsTHqVRcNxdZnT2p3NLdB1fM+25Z6z3S82W71qMNxgKZZ6SHFH9zT/Ct6e1yuObp4kKaPThqcZ+LRC6hnWA3b/RRp9IEbPGHysaTi2LXWb8Yhh5/zBFi8Nx23C8d0soXGbxsRpzOqT63t4k28Lde8a02aIeaNhup7uaUID1U5o2eIz6KBV4rCPUo0/2UdUwDeYeC3P8jxX6J2eOVzWmVjDy7Kny9wWYVyXcZGzXcuWu83o4gEzDTXftC0L539SQMxuSINuoVuOY/lSB90gnDFT9zB9UIoduZ05Tb50U2McfqZrOqBNSD21yqpsQSgIowgVjBq967qeaUrV57vo0YxbENiO6q7YS0lj5DyGJfqiO2z+BCffNS3PN4Xe85kgMx8Z2PhwybZlqhTFLWR0nTM0y65ul8uclwHXsB1GrcLQPENzpZ4iAa/JWL2mYzueL/UYBmhtRp3N02zftvglGqHCZT0NhWFm25on9Wi9CqQTRjfWYznHM3AGB9nEvdA/rGqQ6cDiLLlfBFGafsRsde0aHugUci0rVTSdGBsnGB0pTd11JLsxvxKSsCCbro7jqPBIXklPHN9ZcXFuMl8zdR4JaKl5GxjW9dmG/qDL3YAwO3nonub6eBctU5uogkJFOWuEfN23LN2QagFqiJmzqsDm3/d8W34lF4xe7S6OMwFrtQxi2B6d97ge2g522jMNGVPEi7X1rwqf+PryI3xLEJsFVjcty/EcoYkqlvEbf6sLytDjgh4Rc3o2HYf2dHVXaKA2ohw4E28WxnlQfmWsqpPhmo7rejwyJLILUnw90scX67GlYbiW4QuNYt+XYOd9FHzKauOYA57kKsfcZfyoU8EWzMr2Sfcd2OP60rtMy5/loGGV8Scjv13laRAarm4FnkMecOhArm3huIsyNg89GWrff9a7CraL3Tckz5d7nApcHYc5MYUGlplBbmKc7AktAzse03B0KZch58gB5EdZ7J9oHOyqZhtCw+NSyMFhzMKcabmuLza7EYUoO+dOaBLH0x3XExpHdUYOgM9Z77homuE5OCmlXORd91kc3fFtT7aWvOsIVXc8WJNMR5NhhetBF6jp5YwGe8fXDceRckexTx3/scNZ3vM8w5Jih+sjl/kzYlz+fQen7jGkuDX1kHfsi0wTNBZXzlXQHvFnmDyZO4blGKDdWkIOImHleJTXKr19nEJXQOE9qD9jDEbq25ph2p4QR/8GFme2H8OydQbH0FxLTMbVhnVHXeqaBVtg7BktHI91BXbtKnynAL4CvVeJ4b+KEt0/Y/T9/OvPf/vbz780/wS//PYbY1x7z9ZMqFgRmywCNOMWy8L/E3NDjaaW2cxP2HNCt4QE0FqELpIgL8vWxTh+XBDrbXYTpz6wHG4J1IoY/pY+giR8K/Av8E8VafTcsNZhtPJzrVyeshCf5p3qPzJGdHE8X/dNl1cD0EpQ/3r65xM9WU+r8fph4xiqatD3hjQzYVNiuia3yJiL+OgTSgyqmq5/3lPruue7rmt5Hod5ER4s0yhNzn/E728InYsS+vP5mod39D3NP5qPm8xL0S18PBBjWEHNs0xsg+KwN6GDPlXQJ9i34pMG1rMSG8dx1HiEp6WkrrtHkuKJ81SUz7cTlMqq4MHE4tk6DwWPRA8qXvp4P9XRJ09hFrMt+brhuiZWoEURt7mBKjX6Lcxh9ijht/fsBM//+DqV+GDt1P3h1AQ6ZmsAWJZs0zV4BFndKk217+IkBzYq+LZr8LB2b5WjiB8ffBtFx6FK+NxU2yRMgaJnjt/RfRREYZK8wVcKRklMX9dgAeNxtXGvKLuaxNcd0OJcHnb+TXKEMETu95RTz8KRc3UfFDlhS9yCGM3K0bZKoxbl3AYMdDAbB3eUPY0V6TOP0ClPnyWv0W9ovq5blsYj2e4mWd5gjxPDAsl1KjM0EAZH0juKNHsnNE1zLRtvR2X3NPzHE3Yo4CeMZdgWbEzlT85zsuzqZrbt27amSV8x76goYCLjtmDqhuFq2NQheyKbCrKnPfAFWtcyeNzP2STFA5VY1T/h86nqHJbbWLFd24TtLA9HfW4S7dIEPA+fENmubIWmSIJmx96kAYCNGC8lDRYbD9+skb50Rjfs7cVNazZc7DJtG7Ln5bEYuzoYvugNapn0hbIzrXzGoJnVSw2nMQPrPmhmPg+32k0iNSkHuO1lXNf2LIEWowUx8vD7qVlnuM3L+Kai4ZgGj3SFHITZ170s04fVX7otpsyfRXmKEP4rr02Mruk4aaB0K9mCLDs7me/DZOxwcUjfppU9kzI+ZbcvTs3imLCxND0eXk7bNmNpWiZpyGttOVmub5qGzyOV1V45di71tuEb2O1PnRp2ecKboq8o4aX844g0nm1bPKJX8ZRp5xygObrraJ70lrqH0SkJvzgay0zbcbG1TPYs8Gqf8HLJYe2s7kfw0jdNmKNxWl3Z6maS4LMkXjqAYTsGDB5fdttMxdg5sXnA4TqWIccEgE8hi75dqf3r6TsKP6pDSlaDn6u5oC+bPPKsUAgSZ1F7og0/dnNWUJ25Mrr8WTijmy3LOD6WIL3fYaMfNLoyo6OlDaPbdx1D/LkFdgccHbV2femCGJ3bPMOBdV7j4SZGh987k9xNb+OM2h6XTDh08PXB8P5aN03NtH1NUqfpThzbTwPmCvd0nCBBvBELY7cHjPurW9csz3Z1g8etOQrwpSPF3YIYsAi7BvQb8Zpe1W/6R4g8WgG0B1h3efh3U9D3gYtTFpYRaw5oBzuNwU5bTrefUxVY69zRcWRTLsnNKMinJwL7Z3i8nfZlGGuwAO1R0+558mRopuV6oKHJqfnaPL4bGx+94Bw4PMLVU1APD8I5TDCOZQG/J0EhrvBbk8v+7qLbhmnhO1FyFIK5gwgOSo2tWb7lSjDhYRnakwcOY9U3NVfnkmGEZo7pDKcc1AHYeRiaJ2e0ztqw9k85vqW7juNJUmleJqvdta8bmg9apaZLUuLnTqc5zDw4vBhMP5qcDWD/bIrDhK/js2iYc+RsAOuh22o5+zuQ5+PNt8UjlummDjSwce7vQpbrwh7ck2DfxGIMjtE4dCHXdx3b5HIbmaYLXd9h4eJQ6T6+dGZakvTLrp470+ueDZXtGYZu6pK0zNZ+vLuvmJ5vuiaPHG9L1PV16tbOxBgeCN+iFulz8IJMP9DjtCNEjaX5pm5yuUFGhO1ZTVlvp+sOtr3wuKVMpH0ZSZnzhPia79oiDYw1bGvkYo6PDUqs5Yj0+q85F2xyjKFCYOGG+dcUuNNZpd4xP5xcx3Q1i0tui3X2xnzLurx5rm94lvj+27NxsvZh33F9x+YRfpPA2mlwO9rfsQxQ2FyR+62m78K6u4MTxxIG5cwTeW9utlo75YzN4mrAjAbgwqeGjprNdKBZsJJ5pi+xdtnTAcPK62gGaDbCNYXKkMociVTTTS6pHmhrNEyqnlqi4B4yZpnTfdMwfUOkQ/ekH3TmI9bAhi5WbYTrYY2dgk0Nxw6mriG+MwxsEmxZKUCtdSydRyh/GtTsxppK13Tx+SeP1CTrnJNjLNYNg+fg0GziddvXiSHbvtbGiaVckc7dNWffdMNoLNYsHHvYFd4HZk5IWD09DBO0GJG2jpq4Z1lljTGCk/QZ4u0bc5ZsNl3LxvEaHR7JqteJm7MmRoXb911X1z3hGmF3tsFmjHEdD6doFN5R22NT1vg9OIuSpvGI3k1QBd8+0KkOa3hCD2BkzJSD0zKamkgPhsGUNQiBg6PfsCmzpqU7mq+L77SVQZw16aXjaLYpvss2JmTGqrRd7IMj8oZOM7D67hSM3qCuC0uVxiMeHPUepncYxZr+xPN0W6TbwcROkHxWockYt96uAcuWySPuG/WW6+sR3uPa5TkuMBZrjifHwYEAJNiVO/bq86DIUBRfQQSoe0ZNDDRcS9d4ZG2lRf/jguM77zGQ65Zh+L5p88jzTN1Zko/ggd7TMt6x+zF1F+8pZHJ3bs6NlbwSBEWMhhHH1VxN00R6BdEKEJSoKINPKCvN2ayphoZTDML+WXLnrw8Hn/mOzAOmbmMHD/FbviE5j0GA/T8NzxUZZ2AOfW9gT13XTUvzBXb99wyQ4xOXY1kbJ9g1TXHbqxfs7lNZD2BBqxbXl9sZZPHg8DN8JuWpeGZZmpeM9wCrZDi+dRQh2IwdhmZbOKaqVCHQ6QN9nQqYxrH/2zN7z8MLYrz8Z1uuq/uWIUyL3CAB27kp9CRfg42RMPMNqSOxhvIxDMu0BV7CIQ6AXSeUhoPvi+u6MHNvh99xN3u8U53bmWnWwV4ijiHwxlxHPbX7VJd0WYep4dqa44i7krDGrTvmh76D3nB819NcceES1uANbxe87hj4XMu2xffzGfhLEZ6ALL5+sUtgmKCJ4RjUqgQo4vfHjt6Dw2xZhsYjT+SuBtjZkVzdc/AFBWGDoPklzAq8uBan6zNJGFUzH3OaPBLJb0BlWv1hXJqw9PNIbb6KCqr7YEOaPAtYO4NrnLAeQp4sy9J9gRcm2l/6t2/rK3LP7BKyuqm5tuP4hi0uTCRVhbN0a+ympPm+OKN0baXo7aKHZgu2yQ80W8P0xZ1NrkMHYRSBxsU2jbimiy+WifNhm7K3wUTYw6E4jub6jiXuxGoCjR6XLAVVfAc0DkJv2Fwynq1C73DSP1Xx8nDKFGE7zQayvk+ww9cCNpSabYCuLUzjGJCyejKdTFj6fE8XZ0EhzA0XdMUWFFYHYlAxXEfjkZ13iT7vmzQrt7GgccoK2NVR03UNHCNdYK3nnZNbuEdx1jXTMTzfE7niDVCbZM1MsA4OCQZzmDCdc607MHvq2o7niwsuP6re3Rel8AUDzbd5ZF+mAWbN9gQLmWaJOzVoIqmtH2rvWIxPOA2laXrijhLGEuSGGQB6FDS27F3w2MfEsDRp1X/Nw3d8yFSvKTt0IM+A3u2Iu7LYpoVuY79Vw7G+5XENI7RjSdEdw3Yd3xe4F0zqAIi7p5ATTtqkO464efoetjfk2S8jwKbDN3EMGv6Qb884uZzfowhPdiX6cbqb5svNFye7ewuLODrnKEFhAb0CJpMENesM9gCdPvstZDsFhP2VZ+mOgJYgC9lm9KOUs0sAyCIqTp/nWjipuiRJH1GGz2kbd91lEYfPsckGiqQLu00RtvG1VnzPiC33nrFJ5Lqm5uCEpBJbCx6ka67eg4zDzrEsw9OFrO5rDYbhn2FeEputfZBNPMd2NA/+I2DruyYdbpZ6+ieJ1z3JJJ9pWIZpuTzyLG8RLzeM1s+AKGDvWcbxZ5gatKKIcAiL429gZKYaiHPfYJIXJytzDEvE9ai1Ju3zE9t0cDucqVHx3UpfTNTsxUbFCiNVW/YeZJIO1HbXxBnE5TYhVopJLQfPMK4Ttqtr+OqDAB00zLJe1t8seQLYuVa0shw2JOPL0kH1KePexHKqQOcilC9GOdj2BKau25ouIiXQUIzaCNZuEtHjFj4idAnw2MfO8myZpizHxRG2BSxba/AwtoPub0HEurv1fFfzLEuEnWyWvucJ/VWU6B7ssEu6OOGC5psCDi3War65rJAglDHm8sARew1bRAaMTXXONlZ1WM4NzxcRp2Gt1uFvvf5e3YBjjeXi2Tj1oAinIXoB2tNQ1qiCjuf7QtLADkWAeTE5h9dq41LZpxjdKXRP9zXbF1Tl6G442rnJ9XCCSf2SAMnpPUf4CC/9Xt+SrMtkPC73DNg7i7Bfvvir/+45p9Grjm2J0mpqygLlcZicOtNqvZ9lOxjHgW1t0xE0D9a81X6mCp7AbAM2PRMUFEPELmbae6tif7DNbT4OFuw4IrwJlzsAs2e4b+ueKK1pMKK6VEJMc61rGTrOVCt07E/mLuzuyHYhyQRW3RLhkbmCu+OKt+XoUMeuZOD2IvW+deFk67Dxdz1RKuhSbVcxQDjg667hYQ9qscNwwt9s5fcLoOPrApouJFLECn936WEfvQ9V7zsiYiqvsA9iK+/jd0AlMkxdlCK9IMAfrO7IjucYtumK8I4lTzSs8bB0bD8VEbiaonuzen27OICAiGAoa72iO4Fgvbdp2RreGQoypS135t1zuGmZnuaK8NXD4D9Aga7+syONoaFZFszUQty7B4yMvmIWtmcYmiC1udpDoz+KrPrPqX2ETbuDbajha46g9XqEih7POyumZQtxvpuhrKwVJ/xhXMaMoWgNE4ecMoXW6+TOJGOYB7MyOIu4mtqhRukT6wdF9wOj36hver6h64Lm1AVUpjkAO3i5tu//9//70//46de///t//tvf//r33/6f4Nff/utf//4fwX/+8h//+fMvv/39519/+vNPIMu/1u7V1Yv/v3/8A8DDT3T5FRA//u8Q9sdvCSrwx3/G/8EP4P/7KQvz8j+yR/vrn9sf7u93Q9eyN8P4PQ7bD/9H+0OUZjG8+/Lxb2lUOeJNvr9Ua+3f/7v+D66AG7onYbtaXuP8/j3M0f9mYvw3NBE0yP/1819/C379j//65a9Vq/zlf/24J39qGvhf/vGT/k37x09/Qo8oxfoXfPBfv/2fJ+8fP/2v//mPx1+afvcn+DdDefn1K9Chf+n64z9+gof+9Ke/XNPkgvI/PWCC+Zequ1zj9+Zvk79meZziJ7q/4yfiBPX/XkV+aTz8Xs//CWYDeAA//OfzfxW4M+fh7+eGpTjPtll7AaB9zXn5/ecW+FwTd/w9uiIJ7uie5t3Xbzu55l54Xig5SqDDdRFx0iKKkyQs05wjC0URdHRl3t214M81evkSUZwW8GR4D54FDMXgE9RKjkjrbycyfWKDsAic8YuXSKan0hxpVl9OIKrOI4LqPII/0fzLCURQSHOcyZ1n7tUEmi42VhI/PgJ8+Zg/1moZJL7KU6jyFuA5Bay/fZap/Qo+g+ZFsvBOQp0k8futrCuTe43MvnuJp+757UTKj2XpvbMcv/78t7/9/Evwy2+/BX+FJ3eXP/O+2XIfn3ezvfLHS/aFd86WnxVhUMdm4FX67BuX2r5RNPg3/uKLl0gS9B5GX8EtTILvl/SdI8rym2dZLvfwkn/yKn/ytiX58zBOArwvC7Iy5ij90nsXtRG8FcyfWdm1XWHw1EnWX79E5Wk4ExYIc4nTYKyvc8AivZ9y/OToHV/3EjaMJu+f5cL+Ms32LEbcNIHFty7VTa3pFd+5zWwL75wtvzfoOZU++0aK0TxYBeNHzFOnpixmibK+68d/8l967+I+8VmUsFWqv3ZD4aUOPrN7hzj/WgIFYD+vYVRC4Y93UUzrhVD0qlBMLwo39e38Ct8ob0JQpu9ebLc052pXGL5uttS3MuldkY2u+wuefSNd2bCCRjp/gO61S/V+Rfe6qfjV/cwrZ0uH18RvdUvVKwInhJX3LtVCtesr4zvXCXT2pYs6yBu6lAnPHf/0jaSy61RAAhAmL15b7WsP0CAsuE1Jay9eqpO3NMwv+LkyT3kOjqX31hwDE/XIwB4+y/QdPZbs79+KJMIWpxItWeC/RXnUlgg/ssrScJxfBZ4nb6Y0udeV0W6ysb7zbTfW4muXWhpU4iSuj2Sq7JjsrdxDmHvpLMAvv/0c/DW9Z+kDPepwRfvKnr5vecVtngqAM0zSHd27J/jsW5cQqmsMQeMNwqX4yRvpiubR6yZvJB4V1M9yaPSFl1ID8BB/7qVEgGqLEz9gFnlEvCti+m46nPrY5/VFrpWzVAIbGv/6milhAS0eKRhB804eUGvvpsUp8/BR4Jg4QsFmS6Gz0fOcexbfvFhblYFZQMPNv3cVA9+DLuOHMJzl95M3xzFCqDErZrevoEAJFMylySjK2IRXHzbWFwOF8Y0KmVfj48cHbEDhk2/JZS/I6GVrp4H4RnAXZPUSF1lYRjceagX5/SxYu9uI/P41rPA6MFhxWEtWXrx6iFsfkgtsuNUS2NB4Nd5qCWtozV5WZLWtF8EIx6vi1ouYhcNz/uvoYy/H+G3k/fuie9+SQ10T02+wnR888a+VWaX398kTv8ZQYvr4t/CtGDw2efDf//bvhj56ZPq2ykVj8tR4gSpBhXxmQeUOyd7gy66wbazDWvxzT8ZzJca55jxPQM4E8Do6gHruEccYe2RUWWisv9eJ00itNXBaZZ87dkj99zZN7piE0FxQRbVdUSn1gIJAXEkYhNE9U1/RHQYd857NJj/k4YZ0lfjteY0OgNxiUDLn4f0Q0A0HLXV5jKpuOKioo/vzAMwNBRUxnmaaBNKKqXskdOT3EL5TRHmclekOBZWfABMgOjmy+u6tavoGg4oZHaKfow39/Frk0RF6ecdBRf2eRfkRZsGOg5I6PkJVtxjUzEGbFvUA4B0LFf3teoze3XFQUv84BvQPeubYOMJ4bCjoiMPLIZAbDDrmOuHpAag7ECruBHSAA1C3GNTMP97CI2hQfZRN7NgtI34cYjs5h0QnC6q8uo4gwouEjvwgq0+yafVJjrH6JFtWn+Tz/XIE5gaDivleHGH5aSioiLM9B1fciLOcfu6AZwOcdDhMDkLep6GSIC+jI3STFoOKuUD3ME7e0h8HAB+w0NEfYg9fbNjDF1/FLn96ftAdCBX3Udb1bav68yjL+nPbul45mx0Bu+WgosbXTw8A3WJsOdRUST0GoTrVnPlw8tH0g3HYGuwqsHZKHj+iyen40OMqLNN7LHTVa4KlA8p5UN55lestFjp+hlBNYetEUXpBQZSERRFfGwd4eYQLha8Sx0qRF0tfr2X0uMTh44HTn0ur3GGZJL6n0IPMMdlz5rhyMoYLKF/icHmVRxoxbTYKWYOkLY/IlcW77mUwkHUlkthyoTbHMVc+Y1ic3CEs8ybQrRyqV3kEriQuJHb7rjhSbYXlU+Ls9SrvvKZMTL32cqJuUI9zgQ5jbR6bvD+vTBzDFm5U48xid3l041Kpxow0uld5BC7YNoZJsuPyz2ayXok041keWFvctnFTpmkS3cL4se53OlW9Z64n1+FT6rApEmaMDr2dOyYAk73LLLE6VBrG9ygKshzF9fZMBeuU4Mx98/eWpmWS4osIaxvAYVSctfl++KTIUfgiHwXtOU8Ztg3NMIvXRBzEkJAmYXyelLsyDQ7jXBRlmofvylj75a8w96+E95pP4MAbQS8DEGoa5Xma432qRNhJubS9QTLjoFzqHpuFeSF2Z7XaYV/Fbx5jqpB75ROYc1QgfIVZrKvsDOyw4G1zMlab1zWlaxIWt3VdqauxR5gE1fOSpkRMf64KPM8zrCojM1+R03Dr2DT6yIwk+MqsTP5+mat9jqQqASLpOtkgWvd6d53um2d2qIPg3/vCv5ArrpHvPCi127bOohB06Hjmazi0oMjmX5NijYe0HZj/ZlAYB2qSHtEmcY4hAkOHOlBfYupGh+pBS51nYVrfbKaYmUKkt11rsJ5F2TZmDsFOgR0fg3sGY7s1Y9LvmsB53FbcNhAfRpUxLIf87bgcU5A6ZvN8dUtENXQLQckMm+w4u6EcZk/V5EMUMXPgoGUljMSRwM0UMqbY0r9UQy9dhSL3L9XkQ5TN/FWYRKHmsI1SvIC2j5X6ZWNLMk0tYC0FXXPT+PEuNgrFQm005PM1MoHjsMRNcgnsXuXiaX4CGd1qUminSc/ikAbINMeChLNckizrVLzWlOFpxSACzmxtRfciLoIHkAefcV4+5UyG0zrCM0mID7xmeajDuBD6gTrZlmh4zAJNFMr9Km77JinDpCmrGx29sonju427WcUoV0n7IqBmxrk74vIeeEq5BxTU7DiNnlLsFoCeuFCOXGxl/lRezZ/z9cxrq9ONdRnTcStjOwv3yt44zyikfREQTTozQ1w++BIGwyypstbZ2J+Cr+YQsZ8Ld3KW+4oi5BmCjTO70mpeuvtEmNlVMn9urmcYA6rHICdFeZLLZKfGDG84NTcCJCzWE/pq1R4yCFiuewVI6AVTIauN4YBhtefiR4GmTKNUyk52GbhPwa/z3sJkZ6/FMa7kdVfgrfppU+q6M0tYoFOO4FURuu+Kxc6MOYewynyJw/cHTFWxikodFr7Kie5vKD9lty8FmIOyVymrrEPFN+YI08yIr4JX+fLwcUmlmEdGfK+CV/nq6PH1dxVQjosXYtSEsuPJJDipifopiSsAroNKdakKPr/KZwtB3ZiGTZKcvSlAvqwt5HlIwSbxdGWbCCvJp2ckJf53yYWHwg4dFlLsHCPoptT19bZzhzwhBCAqOGcZ1qmfZSlVGe1Qu4JX+QTHMl0aivORS4c6wPVuGsE9jnIpO7oR4ah0grZi/PhxqpzCTxd0lXK0PcadQSAw16lT92W73ME7LH6VVdlESiTrDsmKU9VhFGDOIawyJ0houLoFzKbUVbJqtMnfvreI4+IpWKV5ssyiLritzJGqYiTStW857c3Zzsw5Q0Czq5IP+ip4na9dBFQg9stet9mq3fEQ+arN4ekePp7XMCqfOJjACX8VFScVszwJZ6ssxxCBxrL/ekvlkvKe19dab2n6oWLmpSDiaj6tor/t95UZvVCutaUqsj21nyERc2w/LkhqX6lFnnaY+Vh+e/oIzgrJ53AI3iSxXzTc3bFQU7qgMyH8dnkdoJWtPVxpSufQ6E2AEm7XRIbvk9H8wxLbWWHKQRd5pXNOvXzBn+Koupqdf9bB9Q4izRIb0d9h9Bp5h7ezUq3wbGyrHJVh/o6knJhRNVAfaGOryJhVqJqDPlpRJ3aWponqXkVgYpDoUKIwjY73I01eLxwxapry4TQM/cU+msRHLdsiwGIMMya1I0u/wyt3aB2kOM3zNTwoVuJMNSi3dghpIuUtM5Gic4+/ie7WsURpgNiOQ4sEoSxI0jTb2qxqKuHFO6kIlsaUdrNjkyTL1z1I8sgL57BNoOWwIDOK2vCrWR6D6i00rBWlTCtkrKHymVbeYa+XXi/NsjWhIC27c138EPAbbj0coupnMDioCnX2h/2WiSaLhKxYUXVxvRi9/cJJXbJ5HGAiVBRBGMkyP8xSTzHEaO79SpLQhRtZ2yjfw8LZWkgV9RSDx8DDa0yVTojD4OveJaUXd6W9QlH3yyc2bvd0pSBU+cIUYw9ANvIDIM5vfwQJXigbZXh7HkWEjmSjBIfo/UMSolox/KKU6W0MPwchaPl5zRFyBe3SX/TL39A2SnDHABwWnNp/nttRVP067DsiYdAN2NtxNyAgTReDNyhG3nBs1n2h54WhHH7IwiBC8I4eKJdzq4lWlD6TmBmwLjTMYhkzylDsZg4cEGwbMWqRN9gbBl8IwmvzgTx/RbIYc1QsE4FyYba5hs0NOvWjYZaHRZTavy+Q4m5ILU8fas9EfSSZekwc1KLnBSXh1359qH6PjBWtLqldyl7lktq3fjII8/unc8dJfr79qgZ2hCBmtW3qRULHbURseuyr3O2dk5QJ4K///uvff13LA/BXYraKJusv4RZ/FSdPRp7JSqIzxu7yEU8LX78RVz3+CUSCTYSLqL2y1/26/8A3qEr0Q6j9dQZzWDBFbeKBqaImm3LXCas8hnfTlE3YL3f9Bk/2rGY4odGlZggH5fKffC55/Lmera06UOMRCx1eU0XmEbiY1tKcq7Je8bh7BYuKw90WIbBvDGTroij3CuagNuFw2PubWnTk+KYmcDFtI8/HiefVvqJDlfcFarM1zgYm5zHi0f2Sf64O+Hs4fmJ7N6hfIrIXVHKc63Lq0DZdkWKCiBhBEb8/wmQaZ3xW9vZpkR1nUAdVz+kgz1MKllAUTaXKlOFVJIcZbdbNcesUgERnY6zroJdCGy3kYWSpgsfnJCbM1grAr8A2eRzySHw94NKqWhgXu6qgVQ9LsGzMMS4aL2YYJbPR1VsURjcJPXxYa12hZD7BJ6lzdDShJ9oHxedRXCBcSp44xyk6S8wcIlVOmOrJ9A2XLpvvVSqZMBOckHWOry2TTFfmgrPxzuF1hZL5cNJMCbrQkK8rdLtGSNRw+4tTG8wziR8fYg+ie1JinXcdgrwWySWlYmqWBcl12BW6Zb6XzDgomHK+l4xIlWOuP/NK5nuVSjnfS+Zry6SdTyXjdYVun0/rMGMUU6r4cGg9yerCzqOCRRhdkvhtzegyXW5GkeLEe3NWjE303SWPzTFUdH9KQ2rKIgClueBB2ydqCltHQhLrCNHUkWj77IBowTI7Qkou91AaUlvYOtK9kDfamrLWgbJc8HzfA2rKWgfKJXbsnKZji750MCSavVgwRqovm0iDehW3jiXcsX5AteA8P4YSnnhrALWQZGsMJTpS14BpLhgXTU5POt1BqEqFpaiDyr5KIyzVt1hoPKgBU1sYWZ2RRlSXRQSqnGZCwZaxIVevyBU8fJ9BZp0Ny1uvt7AAAnl19ipuHevtKdgENhiFc5avibosOs7vsG8txPWdLOTh/fp8yJuxeuWtg0nwSBuALXqhze575DVjPnc4OYMk50BuhLbiSzyzNZNFhmjmLdGeJgOiBR+Tua2ZLKS2MPLWTBZRUxYRSPYyPSySvHOUxdWURd45SpvbacZdtZmTRlTOecTO7Byjq2A7aA/qVRzVhlYiVlMcDZb05WZaLM2+Wxbd0kXj2X23LKiFFKiz+25ZTHMRoTfb+PPwMvKenTwQJ8H4HGDyVJY83+NpYL7RU1dck2VMTmqWBO2jIq0YleznVsBzLcO5Lfk8oiBHQuueFtgDNjBvcZ6cNjl+RRAjhDzN0G2LosnmvhYUZRh9BOgT55iUXi1zRGdKUnJzz74luwEjSgR7BXEQdwjK1lGy8BSlj2a7N+9hPDxQvOam8ePd0GceXavfLAyiZ/4pNmHOfJ0ORTx3EpyXAWd6znxtjkTGL3kVFVRFyZ/+RgIvQRGGx+zXVDfeEhSFLLhxgypr0oFkmYOilOVoYqxIsHXNGkZWxGHeNq1d06/LH4NrNGcK2i1r18wbFC5cDPLy6DJlvK2PlLHSTlHG5zmeTc1eCo12wSQCh5bMr7AWl7dNrdl8R2WLNgjnJa4tLdt+TWHrrorDoZXDRxlc4vFtv/Vqab6jspUbhPMS15ZWbr+msJVXxWFu5ShFP+KiRI9oGhliugHJ0zKN0jmDwtTh4LX3eU695Gfqu0dyqr8ov/P0GM6tsOeBJOd5zGlfopFPem9ik29Wz12Vrz7D/d9FzAntnLTLm8rl3SZdMo3lelRbc81V0xEP9XabOST+QkUNKglzS6ydpiraUlc976sv3a9Cjz+W8dqSyYi1P0qA8jzF6VEuUs09feJ5ELIAwnM6rzDTZXSuHr2isHzmykj7xW+/kbG44o+ee0vm1YdxZcBzMie1du6HYs/98tl0JXrzfFXW63EVIvds0jM0bBXw/f72JEa2qEqrnlQhdlXwecjAJuwf38NPuk5dPalC2Krg85CBTdgivqDvYfJBJW/7sAqR27LPExIqwan0j1s8TY41d7RCfwLzg6z2VfLgooMiQ1F8FeugMF4woNz6sKU7cvlxnicSr/+FzzJ9R8TTbeCuCHOUoLAgjtT28foGX3B/vxu6lr0Zxu9xWIWfC6XVdiPgeSTBmQaRYLRoX3FPL88EBd35Gf56W86BJCVhso5pivzM4fQ+xNT8dX9OR+6skQgeBG78ofhRC+jnttDzPAApIGz7FXWw1OpoDzx+XOIcmE7/fKKnpIqelrnikpTg45ITfE0O26A4GqyT8CRsM3CnhWxrw8iZ8BwsNclFDtygOBIWbKbCh0ywV4EEtCu84CQ+vv0Qb1QoAVE2HTVYFkYfSH7tTYolYd6ERrIewd3mwlePkSTZXVqoBVPLEOuZlLG8iXdQHKG26mcfqPye5hJ2TG2tTYpdu6QXhUJvK73I2pJWYJ5ZJnMNHRRHtYaKvw43t4jO34rb7H8MwsbZDeVhsuaETLgsDGpcnbBN6CzwQm3j3fYKXb1yWj0o+pbUPN7cdSmKjJDrgV367xZ4JNqTqImY3C91V7crUATQ5ddapyuS6q5S+kCPsQvZ9Mn7G7qUSREUMH7TfOpyRhdYaFLPcffiMIpgG5qH4tOP1jVz7ot/nkrYRiFaYyQ6NLy+mt4fcZajQrCf+B7pRogUwmVFeOh2m+NjNNfOBB6cThoNitjMNJTV0MwoPSSy+w2uryj/ykqh095WEYZUlN3ycGKMsRhPxGaCQi/3wyMMx2at7iERWjBEMNGKjWi9Cb7HQyCPovuhyHs8JHLQeI+F3gMijXjU+Evfj7K2Vl1+TEWS4hbqh2qBPhCZ3bCdo9H3kMj8tm4cjb+HROB/P9i8804976Do9yz8QIeiHzFt0pqOIsOEapvWdBwxxlh0rfEZJk+xFlOW1nhRcfOcaN48ky9s7mGaPUxd4WUuOvn1QvW9pBmozS0PZTeu3yD8cttWKUZY24Rp7JHHE+cFRiEQqEXN3cjggjL0uKBHFCM1O+YZsVbw6GaeuCwC0TH86QWaING1UNOwb884KeNH8IG+jtRAC3SbRIMv9dXzwwk35dssHkz88Wdt9TqkeEO+TeKFKLwcT6iWapMo+BzscJI0UJsEqTLaYb/344kzQNskVFQdzxxPohcXnThlHj6KDIjw5cWDirbKyCzmTXBGmP1C3hZSx1CLeLDZcIWQWcRjzZLLgNsFPOxKvQ5JJ2iahf98HnSpm2XbJNZhm26Rj6XVDrdOLOGxCHewqXMeju9B4dA5qQjJ92TiR4nyR5jAlPAsSnQJijLNBWddpKk4bFmDX89rfLP3ysfd4ugCkhiJQlYXfY8iTQfDGkZu3vx0AOkWwXbYxQ4i1greNiumjLvZjO21fG97qcX6E/VB5JlSsWx4DyfMi2uPHexwYk359lgxDyneNieIiRnqcDLNOq4vCdIodDiLCW7gw8x6C2ibhBJ+KYVNoMU4IeS9+BGbaZFvu3hHa7BZNn4n463/FZ9j8eD1PgUbxq7s9lxvSEM+mnw9Lzzo/HYRNkSg731JmWFiTZIN5oj+1+C9eZp9HUyYHtUmaRTZ3NdEoTay97+k3MC3JhGDdW/89Vv4uCSxEkcfkmR9tE1yqTyGXBNq2xlk/5thWaKiPGIXHJHRaSTtl+9hnLylPw4g0hKWyAsavfVbvkL2qoDGOXFIs6l3XtA1fihRK1ek6FNtkkaVirwmC/2GZqJSHUuQpZw96/OEQoPhWJhFrk0t01nyK8c19VKtsm1rq/brB5BqkWvbHuOGoo8mOtgBhFpD2ybXISVilEWVyXpVFnp79dyO61jC9Ki27wOPJUqLtGcfeCyJGI4QFjdbx5Osj8a4DzyWUAMu5n3gsWQakbHtA9WLtITF8bIWPm9GUZAWITG+N9U+svc+FYb9XvG9A/UeEJVvQPN88AYwd1QeUJQhGrcQqaMPxr8O+8MtzC9Yxl6nGEeET+GR1Xg/xKBH1StEXZtrJThXpbT2pGGR61Gm6mdBTwR9RFh0pjXMcdHbgk6Rg3wNShEwDEayNVP5pFSaVhCUSG+NcC4b3ubAWDNXZWdDVz3riEFBWt0g+Z4SAmTNnCGO6y1KRdyi6yqsOWCdp2+7ccOwPS3F3HI0J6DAHrEuYNNTGgaigPsm41GOb3Ku8PFU/VWiyh4WlzEa53cYVCt+8tQ9KaD/VFm1m1xEQ6zztOyViWH0MP9+QA+6PRpgoxQseAyMos0MnxXcJOPiJh+QVs3x42Ibhoy7d/4ubzEsBVmYr8c2bMIwrM/aVVD8/Gt9YoP5BjY32Eclvos4VayqryfVuUE/N3TnCcBqrPnylqPwIuZUl4g6KHwVs1XIVVD2y6aCFOUzQ0266CEzxC1CdaS9slchwyR+fwhyVyVSDgpfxXx7BPenCBWcyPgqeR0wLJBjiTxyIZNOEdaRofKfd1DRhFjlyLjD4mlQldbuFIEG+Z6KuItAS9uUTgka5OF3tbAtwQZgaJHPsIiF5B/bSD5AWRchSfFpYXUqpbZXL4Gs4jeHnVUUMHGHl2RNbB5jHb0W9XseZkqQh8Wvo4q6SUeh4i5dlVtWxQNcmhrYOYot4ArH3zLJugClsJ3jKm05e4Y+QKuSHSmt0ynBKjCKspejjZjAl0TkOQYKaHUL37j8ddjaYSHI0kRJhxiXvwqb3NNSmL1sjbIreBXvfsHXd1TwvUomAapaXHtFryNmhbhr6mTKQelEUFHBAqg4F4MDTDBzUWnEqDjzhWxiM6BlHkZKpsxB4euGo/CC1XIVkL2i1xE/lC7xo+JJqKompF7RBMTveVwq6ZW9oqmMmWqbfQ5iFTvHGWeSMrihJAM8FdAzCERklZU8Ln8VtiiSoNa3FdbwLAQRO0piRWbvYelk0MpmUDxhmBZKe8YqDFGMe1yIiB9BRd2WTYSEL+qm0p3VPAUluKA7LBugl26qDIB/2JqvtCdPAIhrX2tlrIetohO9CQSFqVPJEfnitftFW6wyyq54yi6gtu03gIqKprilpy7GTFwaXsq67CwELXYTiwj3JKx+BI80qBzwRQRY3SLJKhetcEWSlmKD828RaYaGWpAmRKNiAV4UtOAoUjI/Tgloga/Xi4iII1uIWwRaZEFBUrYgLwVFWUIWE8B5C/FCmOYlYJzGSzFxi0CLDJthxcQNAfUkp7qGi031KyhW52YdZcsWQNQFZwYdZQu2IjevGYQtyAoPapZJGPVCxULM0OxXcA8l0pBri3qlVoyGYJN6pZa4RdikXqlFXoo1sISs0gi4gEGNrsaDYUqwRZVVC7wQR3hVlVVL3CJQq7Lh45LelbnpLZNs0cUVg1P4vwxVYbW8xaYOMjatKGaf0mw19CgWYCkjCOX93uR5QaSoFPPX6iZ1E4q7ATpXGQ1893tIFZYtzGOp43tC2ZRPwiweulLMpnwKTOlOJXOsi+4lsxeoVNK+CEio1a0PpagdAQm1d79DKfCIg4T9jBMcYOKaKoUeUBCQI/gnSdROYX0GEm6ktAM3xZMgbyH8v6EpJe0xUOFmaSIiYuBG4JaCiCw0ouYG6E3hM9VPaNRTWSR5bzsBpcuQg4NvheXJ+CYi9Bs97ICCiIx7SxBefn8WZZCg9zD6at0klMqwisUi1DWH7bLkax9UYvXBNgmG90nVl+sXHUewGbDNghVPbIxG5SGFm4HbJGBRSDUfrQvUwGwSAPv+HUeCloZOhGPMAdQDvhcnRy31EIQEXubBJX9Tqw/1GAi4lee7StYOgAiq1Ap1obJCXW5K90VN8QRIFMk9ABxTtuWTMdXOVx0AEfR32Qc6U9Tflw50ple/1YLOnlXPX/lWCkodJl/6FdsJ6koO7j7ou1qjzTuV0eb2cbmqpGzLJ2HCvlj5Mj+AIAAnd6XLZ1M8AbJ5+gAWpSkJCV2qI+IElyY5+P1iq2W0aSDRPc2/grfn9YqTESRJqtT+tYBDEOIBG+QijT6QXE+aMfwIgwQdw4byQ2oItwnwC4EAm8ZKx1tTPAEyQ0oX3KZ4EqTUSBETxtlgERPEqIDXKsVsCShQlc6yHQAFqKsa1KUBbeP7qmTtMVDiKrdbTUBowXEJhwBvQUjgafKlm5raUddjIOFW2b1QEEYRKpSqB1MSEnobFloldI+BgJvHsAJedEepA8AAggSs1t614J86DhdxC5V6sLXlkzEN21EM2hCQUU3FoCYdpq1WC3sRkFDVnjLSnStW8XDC6KZUSxhA0AD3Avgo5x6x0OCn6UesvsI7CgrkMsYbeNXILwoC8itpiELiAQQJOL6rpu0ICKifgCQmYSg1aw+BAKvaUYLSNaKK5RTlSteLPgMdrtL5oM9AhVsoPR7rM0zuAM1dppnck4E9B+mOjDrHQYA70/sHNkELau+h8IlvDz/CtwQpsaa+0JeINonT+BddUIYeF/SIBGau2ybVAhiLcDiNdhbGeVB+ZQcTb4rGImDx9UgfX2oOKxdF60Md+u4JlmDbvZNaXPydMn7USZQLVcp9r/7ngbYJk+WgWJXx52GEGQJtEwaPLliSsMVOkQo4I9AUik6o2lFfsRAvCFpoVU4JA2jaOy6DECfyw+DMsE9YNorwKNGPsjjOHLUOxibcoYY5GY5NyMNMzOtgdMLBF3MlZvueHB0DHbK6iyU9ZvoLJE3AEoXnwD3sDUfBXRiNpp8pJh9wUKLHfygfox0DJXKZPyPVqsULgg76CJu5jbu2zzB5Kmd+QVAZduZyxxPTycOa8Civ66nHizxaTzsep9AlUHgP6rfJCLJZl3QGtPNM6UwxZbbJKKFrNDIC2kTGSZ9YkHHomSG3bRabY4ZKXm3OVyB5oBTo/R3lhIHyVZTo/hmj76TYRL/+/Le//fwLyexaPxX88ttvMpqtlvD8EuJcl38eYhAm0PphGQ1K4KWY7HuCqedtMUiHpkmQl2Xrsh0/LkhKUIJF+AUebivW9IPRmItBgPQRJOHbMNTX9Dl4ogpWuz6IG0nq6GrjAT++dlJp+acsxMfHp/qbolqjL+i5J815CHxeYloNEFc/dvrnEz2F+Q/QCjBmoQEXH5lvI/1acD4afQR9wleDqg7Wu2D1oKKG60GeRxxEiUkDffzrWG1NyzRKk17djJ6oRVydEUoYIutzwTWHf7+n+fixURvUZTVp1qJb+HggESfurdDn+hvnSoBzx3hewlgdQE3p1ZdO6EeJz/BEHJfSwc9w0NDXnS9J8Rp1Ksrn2+kdPQToTJRCLOKsygIafvp4P9UBYE9hFisQYJaBZTdVZw8jqcFzO8vpggwS3VE587ZJFb5nJ5Dwx9epxGfsp+6bpyYIurQabSug2qB2GGcavqn+NxWysmYcUrwVMhrBivjxceDGI+ERRSxQBBIAR/f1IAqT5A2KLVTLR2JjEe4gTbdORhQshC59v6fH65KrYESxGqa2chqdNT+emJtAyd00feYROuXpszzgLEOmIwr4BrvwGFbxg86jFHjMIh5mMqUCJHdVXMQJOzsdUUYyHZuAB+mnJDaicHdUFDBPHXGtJ6AxiHaQRlsFI4r1QCXeBp3wEXjlBXLEYUcNuUvcg7QnJSJ5okmCxjzSJFiBve3xei89JVHg6Ib9ZA849ayCbRbrIA23gkWrhl/QZwyKX73qHG4cUkMSxW2ywRyvDVfBiGLl4fdTs/gccdGgwGMU8SCtR4Qjilfmz6I8RQi//3jykelYBTxMH6XhI2umz6SMT9nt63hNSEAjb3rTtEzS8IDL3zoZi2CH6ZQktg2a5+UJKNFXlBxw30RPuVfgw7TsFk7ytBNGpyT8OuLKQUDb0J7h5ZLDElvdvjtyFyZzkpXyJMHHn8drzVUwBrEOMxwJaDNucfO322f8PJ5vc1kgl02RLeHpOwo/qgN8RbVTFX0mk7FXTpzNncDP+7fAs92sGFQ+DiI85CmqBUDO60yUm+766+n9Hj4uQbN7OIhMM1DUrUwX92HO5X3dn6LrfRckwmWbUEvYD54ARAoRPzjBP4Q0KzxkYWpni0PIMY9C8mVuj+Xb7wXKRFhEIYjQnsCrb4QlEoIAS2fr6gWiJSN1sv6BunqpVnEIovQfL05ZWEYiMt1QCLEAQmqJGT1GXTssw5DD34+OpNRLQ2YiJiaoz03Vz8RLJKSLm7c6Loxq/HkOUlidgbeI+u60zkMSprWYqW+MRRS6RXFw2qW+VWioSHlymjMu9U2zREKapzobuvr2WGYh3+GbWh7VNwkVFql9OmPjAdpnkYW6fXpuGEdqnxUsUhD23jGp+hZao6GaCFq9R70o6zzUHW5guj5Sl1sFIwUh7h/sqm+qVRxSt7u+w8p1gJZZAKHdQXa29UNsI2doSBpac1qgvjctkbDegJ+z0+LIMOtXUFsTnMQ6qOPV9Atevd6IH0w/0OMkLNIgGXRUPom3Z2pWgTsqnkT7MiWrgB2Wvn7RtbHoScfsF0xzrXhsepQOvMLBwq9oiiDSrMrS2LWlU/fKXe/NPYOu/B49KnydtFPm1PSDmfLXezGsrIp6bL/kLXXa6WOqK3cAQieBOuQNtVzFh1BYuV35q7yVEVg6ZVcqZV2GSdVFShTcQxFpiGnrdMJB2xc6K5XKDjGAWCVvLB3SYXvlrvP1TRjyKcelU7BmN/lK5KDkVcbJoZx01lkCQhCa9lhU/pgaFL1K2bfgSOccF04XXul1ZqNK/x4zrHL3LLPSeUdlU64GL5u4wtVgCLFK3hyASYftlbs+w7anJ/Jn2H7J69H/mvNd6Yj9gtc1wbcPdKrjOZ/Q4z1+yB9O8wibw6rhEGaKZq45jvW+WxnH5XfcrljivlbFNNUrd31U9b0/5A+tcem0u5neAZXKzcwIg9Z6kHxWMTVV2g16CLQ7sC/4KK691eMCp84Uk2yUejO2xEMpT/XeoMhQFF/hNVAjCoWZh6GU5I8LTomhys6+iEHbr5KP4IHe0zJWs29aJaHtS61HeWPurl6FIpWGljWknVIFJSrK4BPo01ylZZmab8M4qg8Mn7nqvjjLskGO44yqBZoNsggN+L1FjL2Bvt+z9YP9IolPio6i37PzfOmEdqq+ouA0+sW7dhhN0yjtLEIT9nt6rvkZPpPyVDyzLM1LaRdHW4zF49YJFtMR8vAtspp2o3BbzsfR6QN9nQpYF7AX4jN7z8MLUttqi0g7hVLaWotITJ4YRxlVzONI+kExcQjRnxi332z2uqcojG4Khswyx0aTXHWRXj7/CshWAXTH/NCPI8YQZ6swhncoYYY4W4W5FOHpE+Xx9es4Es0wsYhVxO+PYwk1INrRUgfrgYtk2zXbusx1vTbMCrxWF6frM0mkVUDzy6TwdefAwdOyltJZVIp90WAjnzwLWG8DeETmIXb7CwmG2uWxuSP6zC6hRP/H9pc1kB2tIbnPE2G2j/PaTkQyLbSlDq1KsqSvSz2vYFAahAbfC8IoAmXwIFL0aGiFaaMZyY07NRVjwkEpAHpcshQ2E6oFmHKsawRyr6U0uJSXUeqbK3LdhxrCUdEUmDK98gaQNE55S+P0gq7YhCTv7IIwb/R5WKb/SZrTxXqoHBqDxlUwkKr0VlkkSSQ0fqCh5I1IBT4tmxIVH09LXWcHsK/SKQfKoFkkjo/lvkHrHgzSKrlzOKrxTfcOu68pomU8MZkNsrnFbUSyutCE1qRlonVCNcwAvh4FzUmEYqGWcSjluebhOz7brNcktcIssGzvq1kSltgjniqpbzV269tU1zBCctfHlvRMgGGwAyVzyVlHTopK5k4o+DxX+HYZ7+E0wOnMVCvz8hOUdR6USpRq7qNxwvo4uaznsX6P5mpirDGW6MfpbprkjLxNJdS5mt/CIl6KITz4Vo4SFBbQaWFiTVCzks9+ceopPy3xWyi8yaqKPUPdnV+Vc56SnGcFOy9Sz8YmXgzXTBnHeVBUmz5baqt0ObuP0DAtDGXb9NmFNM8jyrBfSnP3QnS7DEtT1SBDiuWWmNKKHCEz/laca78rSPFIeM+Ivb9mFNbjgVZml+8Vp7LP9zDWO/2IV2Svx8U9w7yU1Pfb4hSPgBaDOA76vCKbAbd4pQhKaoeuPMUN0XEQW2JALLIpcsNo3QUlNUavRMXN0SMhNsiIWthaMTjKlbhozJWrcvWY41lfRpYkEDl6+mVKGj6DUEdqx08fhTiAxtzCRhA2mkgcOL3iVI6XHsb6MBnxihwdc8Y1zi3wKknxWMDmOtIQaCh5VDltFE2y2SzMxjvB0QPXHP6dbZKJPfn5Hj/IZrPa1pDl8WNJ5Zg/LcFfC6qvSTA8Q7WcO8nPtWjnHvk4FtYLjJhza/6b4k2vjCLNB6Hdk3GrPnklJd3q3Fdu4SNClwCvHPgas+y2r2nPKzhUWRQCmHyD7q1BJOP0ZE2QORzq8NzFV1GieyDtAH9WkBUcuhZpbpYnCGWKG2NEwtgOsqcQQjvMTxwz7QBv7XXFKsqJKlnWiVjEaf0HDyVRH4oqQPdkDofJb065G3qlXyuLUnWCKV18DHgeE3ALRo7uhqOtn6o2qStPsF5cEpD19J4j7JyXfq+j96A8LNFF0sRT8Z7pkVb9IqqXyfPeevGPCyZcz8vjMDl1XgK1ZVMm7iLBerhEbMuoYgBK8rF4AU+LJrgK190pSkHCH7Lm7GFX7pW9qTdIhZ0rnGaEdYmfZcLOlE3VC7pJBd/cUtIXJgTbuKVFS1shpwydNvleGy3sIOvKLM7G1qgiXx5IpgWgbVI1RqEDibVEtE2u7g76QaSa59km0yA/0kHkWmbaJtsfUq6JrgjyB8VV0aVpRS15D4JtjKjFpw5DN22y7mhacdcZcGzu90cZyhOU7Z69P0BhX9+E/qhVejn+6lhYXOB5WOpqC+FHJXWnDo3NjXrW4jE2C/xRzPnVDXV7eObU8kkSvTKG4ILPk9IJNq3qefR43tWQtiXTUFa2nxN+QVzGUrLlzADPQLAZ2BZjr002tlJXlUrcSeghdjGj9Il1memdqclMXj8naRqrxGzLPPcLJ/TE7lGJzTHl3GHqnHw0+mDw6/CXwZ2SMN5hG2y/fZ6+GKRmf2/z5ZnX5ii83NG3+4X11b0XNK8fXGRuy/nX+j4zlJKEbygZfPKWhvnlr+k9g2+84QnkC/78ll8sTdPDP2vf8P/+D03/E/7I1LzL6yP4chbm5fi79+j5Lczv39A1N41v93dDh//cDV3L3gzj9xh7TJRpmkQ3qO7xd0Ff+VbEAFl8K4pvnV39W1MN36oQ2Y/0N/j+X/H3axh4I3TatXddPr7Vjo1FDD//ueve34KT7luOqZuaY55sE/7nWbrXzQt/uaAiyuMMV+b//Mu5/1vdEwfVDZ/9pW0x+Pmn//7/AUqkYO0==END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA