####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 19                                              #
####################################################################

BASE_SDK_PATH = ${HOME}.silabs/slt/installs/conan/p/simpleb526998f4a4d/p
BASE_PKG_PATH = ${HOME}.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2025.6.2

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
 '-DSL_TOKEN_MANAGER_BACKEND_INT_FLASH=1' \
 '-DSL_TOKEN_MANAGER_BACKEND_INT_FLASH_SE=1' \
 '-DSL_COMMON_TOKEN_MANAGER_ENABLE_DYNAMIC_TOKENS=1' \
 '-DSL_COMMON_TOKEN_MANAGER_ENABLE_STATIC_TOKENS=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_GPIO=gpio' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DSL_CODE_COMPONENT_INTERRUPT_MANAGER=interrupt_manager' \
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
 '-DSL_RAIL_3_API=1' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DSL_TOKEN_MANAGER_BACKWARD_COMPATIBILITY=1' \
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
 '-DSL_TOKEN_MANAGER_BACKEND_INT_FLASH=1' \
 '-DSL_TOKEN_MANAGER_BACKEND_INT_FLASH_SE=1' \
 '-DSL_COMMON_TOKEN_MANAGER_ENABLE_DYNAMIC_TOKENS=1' \
 '-DSL_COMMON_TOKEN_MANAGER_ENABLE_STATIC_TOKENS=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_GPIO=gpio' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DSL_CODE_COMPONENT_INTERRUPT_MANAGER=interrupt_manager' \
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
 '-DSL_RAIL_3_API=1' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DSL_TOKEN_MANAGER_BACKWARD_COMPATIBILITY=1' \
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
 -I$(SDK_PATH)/platform/Device/SiliconLabs/MGM21/Include \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/bootloader/core/flash \
 -I$(SDK_PATH)/util/plugin/byte_utilities \
 -I$(SDK_PATH)/platform/service/clock_manager/inc \
 -I$(SDK_PATH)/platform/service/clock_manager/src \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/service/token_manager/inc \
 -I$(SDK_PATH)/platform/service/token_manager/src \
 -I$(SDK_PATH)/platform/service/token_manager/legacy/inc \
 -I$(SDK_PATH)/hardware/driver/configuration_over_swo/inc \
 -I$(SDK_PATH)/platform/driver/debug/inc \
 -I$(SDK_PATH)/platform/service/device_manager/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc/s2_signals \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util \
 -I$(SDK_PATH)/platform/driver/gpio/inc \
 -I$(SDK_PATH)/platform/peripheral/inc \
 -I$(SDK_PATH)/platform/service/interrupt_manager/inc \
 -I$(SDK_PATH)/platform/service/interrupt_manager/src \
 -I$(SDK_PATH)/platform/service/interrupt_manager/inc/arm \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(SDK_PATH)/platform/service/legacy_hal_wdog/inc \
 -I$(SDK_PATH)/platform/service/legacy_ncp_ash/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/util/third_party/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/mbedtls/library \
 -I$(SDK_PATH)/platform/service/memory_manager/inc \
 -I$(SDK_PATH)/platform/service/memory_manager/src \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/platform/emdrv/nvm3/config \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/util/third_party/printf \
 -I$(SDK_PATH)/util/third_party/printf/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/wmbus \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/sidewalk \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg21 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(SDK_PATH)/util/plugin/security_manager \
 -I$(SDK_PATH)/util/third_party/segger/systemview/SEGGER \
 -I$(SDK_PATH)/platform/service/sl_main/inc \
 -I$(SDK_PATH)/platform/service/sl_main/src \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sli_psec_osal/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc \
 -I$(SDK_PATH)/protocol/zigbee/stack/framework \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(SDK_PATH)/protocol/zigbee/stack/include \
 -I$(SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(SDK_PATH)/protocol/zigbee/stack/internal/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/em260 \
 -I$(SDK_PATH)/protocol/zigbee/app/xncp \
 -I$(SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(SDK_PATH)/protocol/zigbee/stack/security \
 -I$(SDK_PATH)/protocol/zigbee/stack/zigbee \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin \
 -I$(SDK_PATH)/protocol/zigbee \
 -I$(SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(SDK_PATH)/protocol/zigbee/stack \
 -I$(SDK_PATH)/platform/radio/mac/rail_mux \
 -I$(SDK_PATH)/platform/radio/mac \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(SDK_PATH)/protocol/zigbee/stack/core \
 -I$(SDK_PATH)/protocol/zigbee/stack/mac \
 -I$(SDK_PATH)/protocol/zigbee/stack/routing/zigbee \
 -I$(SDK_PATH)/protocol/zigbee/stack/internal/src/ipc \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(SDK_PATH)/protocol/zigbee/stack/zll

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_config_mgm210pb22jia_gcc.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_module_efr32xg21_gcc_release.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-debug-basic/release_singlenetwork/libzigbee-debug-basic.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-debug-extended/release_singlenetwork/libzigbee-debug-extended.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-gp-library/release_singlenetwork/libncp-gp-library.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-gp/release_singlenetwork/libzigbee-gp.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-pro-library/release_singlenetwork/libncp-pro-library.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-ncp-uart/release_singlenetwork/libzigbee-ncp-uart.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-pro-stack/release_singlenetwork/libzigbee-pro-stack.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-r22-support/release_singlenetwork/libzigbee-r22-support.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-source-route-library/release_singlenetwork/libncp-source-route-library.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-source-route/release_singlenetwork/libzigbee-source-route.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/ncp-zll-library/release_singlenetwork/libncp-zll-library.a \
 $(SDK_PATH)/protocol/zigbee/build/gcc/cortex-m33/zigbee-zll/release_singlenetwork/libzigbee-zll.a

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
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 -flto=auto -fwhole-program \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

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
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 -flto=auto -fwhole-program \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
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
$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o: $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/configuration_over_swo/src/sl_cos.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/configuration_over_swo/src/sl_cos.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.o: $(SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/core/flash/btl_internal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/core/flash/btl_internal_flash.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o: $(SDK_PATH)/platform/common/src/sl_core_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_core_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_core_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o: $(SDK_PATH)/platform/common/src/sl_syscalls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_syscalls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_syscalls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.o: $(SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/startup_mgm21.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.o: $(SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/MGM21/Source/system_mgm21.o

$(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o: $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o

$(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o: $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o: $(SDK_PATH)/platform/emlib/src/em_rmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o: $(SDK_PATH)/platform/emlib/src/em_wdog.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_wdog.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_wdog.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_prs.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_prs.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/fem_util/sl_fem_util.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.o: $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg21.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o

$(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o: $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.o: $(SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.o: $(SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.o: $(SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.o: $(SDK_PATH)/platform/service/legacy_hal/src/faults.s
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/faults.s'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/faults.s
ASMDEPS_s += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.o: $(SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.o: $(SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.o: $(SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o: $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o: $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o: $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.o: $(SDK_PATH)/platform/service/sl_main/src/sl_main_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sl_main/src/sl_main_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sl_main/src/sl_main_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.o: $(SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_process_action.o: $(SDK_PATH)/platform/service/sl_main/src/sl_main_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sl_main/src/sl_main_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sl_main/src/sl_main_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_def.o: $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manager.o: $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manager.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manufacturing.o: $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manufacturing.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manufacturing.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manufacturing.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manufacturing.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manufacturing.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manufacturing_generic.o: $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manufacturing_generic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manufacturing_generic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/legacy/src/sl_token_manufacturing_generic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manufacturing_generic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/legacy/src/sl_token_manufacturing_generic.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager_api.o: $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager_api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager_api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager_api.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager_api.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager_api.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager_lock.o: $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager_lock.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_dynamic.o: $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_dynamic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_dynamic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_dynamic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_dynamic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_dynamic.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_internal.o: $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_internal.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_internal.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_internal.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_internal.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_internal.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_manufacturing.o: $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_manufacturing.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_manufacturing.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sli_token_manager_manufacturing.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_manufacturing.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sli_token_manager_manufacturing.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.o: $(SDK_PATH)/protocol/zigbee/app/em260/em260-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/em260-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/em260-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.o: $(SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.o: $(SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/sl_zigbee_system_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/sl_zigbee_system_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_stack_sleep.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_stack_sleep.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_stack_sleep.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_stack_sleep.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_stack_sleep.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_stack_sleep.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/counters/counters.o: $(SDK_PATH)/protocol/zigbee/app/util/counters/counters.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/counters/counters.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/counters/counters.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/counters/counters.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/counters/counters.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.o: $(SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.o: $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_callback_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration.o: $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_access.o: $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_configuration_access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.o: $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/sl_zigbee_endpoint_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.o: $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.o: $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.o: $(SDK_PATH)/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/sl_zigbee_multi_network_stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.o: $(SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.o: $(SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/aes-mmo-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/binding-table-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/bootload_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/child_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-proxy-table-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-sink-table-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/gp-types-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/library_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/mac-layer-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/message_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/multi-phy-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/network-formation-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/raw-message-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/security_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_address_info_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_duty_cycle_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_memory_usage_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_memory_usage_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_memory_usage_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_memory_usage_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_memory_usage_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_memory_usage_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_random_api_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_token_baremetal_wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_token_baremetal_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_token_baremetal_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_token_baremetal_wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_token_baremetal_wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/sl_zigbee_token_baremetal_wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/source-route-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/stack-info-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/trust-center-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-device-stack-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zigbee-security-manager-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/baremetal/zll-api-baremetal-wrapper.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_memory_usage_internal_weak_stubs.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_memory_usage_internal_weak_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_memory_usage_internal_weak_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_memory_usage_internal_weak_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_memory_usage_internal_weak_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_memory_usage_internal_weak_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_token_internal_weak_stubs.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_token_internal_weak_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_token_internal_weak_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_token_internal_weak_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_token_internal_weak_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/sl_zigbee_token_internal_weak_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.o: $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/internal/src/stubs/stack-info-internal-weak-stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/sl_zigbee_token_legacy.o: $(SDK_PATH)/protocol/zigbee/stack/platform/sl_zigbee_token_legacy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/platform/sl_zigbee_token_legacy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/platform/sl_zigbee_token_legacy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/sl_zigbee_token_legacy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/sl_zigbee_token_legacy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/zigbee_token_interface_stub.o: $(SDK_PATH)/protocol/zigbee/stack/platform/zigbee_token_interface_stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/platform/zigbee_token_interface_stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/platform/zigbee_token_interface_stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/zigbee_token_interface_stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/platform/zigbee_token_interface_stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/security-address-cache.o: $(SDK_PATH)/protocol/zigbee/stack/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.o: $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-secure-key-storage-upgrade.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.o: $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.o: $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.o: $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.o: $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.o: $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.o: $(SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.o: $(SDK_PATH)/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.o

$(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.o: $(SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/plugin/byte_utilities/byte-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/util/plugin/byte_utilities/byte-utilities.o

$(OUTPUT_DIR)/sdk/util/plugin/security_manager/security_manager.o: $(SDK_PATH)/util/plugin/security_manager/security_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/plugin/security_manager/security_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/plugin/security_manager/security_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/util/plugin/security_manager/security_manager.d
OBJS += $(OUTPUT_DIR)/sdk/util/plugin/security_manager/security_manager.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o: $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o: $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
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
# SIMPLICITY_STUDIO_METADATA=eJzsvYlzHDeSLv6vOBQbv3iHm0U2T/nZMyFLtIe7kqUQ6ZnnXW1UoKvR3WXWNXXw8MT87z8AhbpRVTgS3dS+fbFvLJKFLz8kEkACSCT+8er25sOn9zdvb+5+c2/vfn1389H99O7D7avvXn3/56cw+PLlmwecZn4c/fDl1cnR8ZdX5Dc48uK1H23Jr369+2lx9eXVn//05cuX6PskjX/HXk4+iVCIyZ8L7yiM10WAjzKcF8lR4b2No42/PYq8xC1Qmru7x6Ot5zFYUjrBaf5865H/ksIV2isGTj4g//f9Jg7WOG0keAyv883Il0nqx/RrwbdVCT/A3e9TP392SxFHTXnyzRZHOEU5XpMP87TA7JeBH92z32xQkJFfOUNSTslKwLYjOwtcL4i9ezdEEdri1I0zzw8ClMdpRWdnxGNGXJ5ibEmQH2cEHYVukdH2f/Di0LakB2ZpdoT84W9XRFdrvCq2LjGRyLKgLWmZyE3iR2zLErgg0vvcLEfEKKyKybBXsF5GMdx7/JxZlhcXqYfdNC5yKxZeiQkwTuzWJPC3u7xUmx05pZFVQ4IFGbfXP/98/dn9fHfn0mkBFDt6CE9Jr9ygIrDSI5MMuV76nOSxJe2HOIzTZ5vqJ0ICvEXes7tDgfu4jrc2pKxDtE4fLPFPkR+4RU7+J8l9SzJWMUrXFDtP48CSjKvj5cn5GanO2o/dvuNh17BSvCXenQ1ZKElc7tP52NawXk682aOVbtjqHtbttzPY+pFvZdSqvZUH37Pl4OXxPfFQ7I5bXpHlxG8sRe0wIi61JRGkHsUGeTlxUqKtVYEtW0DWzS3dECn5zlbzxKkV61rlxKuPcpySFiECNpbR3WzpnUDrZoPDsgnsqJ45nrkfWut64Qqv88DWcF6h2xuh+JhOlp0hmfZQZtoHBEv67/3IC4o1/kR6GPmRDB20cnlBJvfvHL6r4VQbF45eQafZjigRvq8+YD99Y2f35g6HSUC0A7d/g4o8JjoXbuCIPbHKqadz5FEpeVX4Qe5H7SYbtqOM+RGXJfA9lFOPKH9OMDcKGPzPd9dknRMmcYSjPAOFZmMuR3YJfxTEW2gB+IGC71C0DurJzxI4cKvWG0ElPrjqB/i2+DO30I+yHEWexWowMeX2XCPMap36wmBr5vcmLZcPOrbF5CmKsk2chpYE9hYNdnqP77KtDruKoyI4ml1RLRfYxxjzdXeye3YzHJDJCtrMheLKbVU25IHKY25KSn93FKwBcfmqkc75HgqCFWW/9jOygPB2wFPBjChIbXFRaNNZ1cGOPdVucLmPvh/djQuzoD3uRu+pahPSNOum673XbuvenG/+wQecozVx8A7ggdPRuNnP+6+u79qfvmU/gqk780O6xqD7u9n63l0eL8+PLo6WUifYZOlF3YmJE+xeiXdsGT36/UipW58QjKP3aJXNFB0B+PDzh+WJVNExBuyUTgFBaLBkJExJ27nhNlye8BGia16kBZxKq06pLKdVe4dVxCnZOAO44bClRu85y3EIxq6HJk9uNChBurluyh5s2l6M+3GyWi5/9xGfP3Q0wuk4AzzDBiPqLfelALh1sAx5sXq6yAsTKKXVYDDM6hUdALESC4TXqth4YMQqMCBmKQoBqXE0KG45pNo4Ggg3LyzAmHEsEF60q0ebGIxbCw+GX4gIZualfpLHKRzNASwM2yQI4DhyMBBmGND+MKD9bbLUg7O+Gg2E2zbxUrjxpEYD4ubDqa0CA2PmJnGag9KrEUE47jaQVlejAXF7gqT2BMfMX8L1Bo4FwwutAYlxMBhmHvJ2EE55Hw6EXUBmQTBuFRgYs6cVgpvv24CgDOmhrx8BLiNEwDCMMQu+gCPa4MHwAx2TA9AxOYAckwPIMTl42K7hmHEwEGZhBjcocywQXkkK11k5FhQvN/O3EQpA+bUxQXiSVTFcw1ZgIMwyHCI/WMVPYPQ6iDAcAddhGeA6LHvOmqhFAGo1HAg72JkLdt4qYCeuAnbmYvErcOQqNBBu9GIHGLUKDPLow5xbH87K2YfUpzMfzf15eLuVHnirnt/5kSd5bjeIf8zj0JeYd0peDhHkdErJKF4Q1+lL9J2uSF5ET54Xr7HrBSjL/A2P9lSVPwKhxccHIDSKoachHK19FJF1kYST1FVMt6Su9ELi8KMvt5A+4hDYfZZhmQG8Z/d1KV07pGjqpleV0paa+IHMRD+QW5fTlZxK7NL0pabSWzGC2xA5vbajKrMppSk18DNlY6oL6dYU5YVyb21KTUuVm/sGoS6p9jxU9qzZoAheGyLI6ZTSt0/6Pzl+ClVl98sa2aui7KaUplSyjEBBkCnLbZUz6SmqYqtCRjar6oqt4jgPYhoiquqOde/B6vSILsK8vhquTreoM0Sy0fFR4utUs3MBT7GWvjMorWGS3SuAWR6naGvIpI2iwah9I6nVcLPjfI/SOIymlnCaxin1OZWpDEqbtpMWg05pY0tJUJrJeFSThtKAgFmuGaEWiiajFGeY3uuRCX0RUOkWtzFS0WlbL8Z1Q5ZaO6UYV3F7RShwGZbSMEN5O6yYI0ZS2AKZJabSdNPEZC1JYVdmyJ5et1Hn3C65V8eC9HmdIO1Owi49E5b1z4WaHuQMa93HnVA7r63TKVs70UJAbVNm2yIDSJrOY948pnhOoRqQHUF1syW4Wlu4YIQhSQI3O3iLgze2hXZWa2KlIVdzv1lhHNFsrWrTSAgIZ+mA7AyJ+ZDMBGBgpqPnnnVyCR1mkuumMyKeqXwn7RStOqkQz8gCuoiVx2VGcwrVpB91Uam1gaqzArShT+mupaRP0+7fhV0/kz/5Hmzbt0ABqXYSa8ESHkDbngDLnEImFx7VRimp3qWr07Iywv4FcemxglzjDSRDDgfFDsQ6RzSpbpvKjF12C1t/IJhl3hawz5umaq6mVD/pZ4DQHei5zriTNysCsN3VPD9p1pAsqZ8DyJDD2ek7wFyF4HbGKVus7emaEKK5YZf2FN6WYHestVaFloDDRbZVGgFe+w+XQ5pqFI+7qr1tjqD0PRQFklpXUKSWVpAsK0A4iiBjl5Cr1uBlcRuDZzM96D5GlVFVbc3dZV45hH0sE5vgWOxyLAytCgqAVULG3WSHU5XtlEluXcCXvjHbaWfpDtpTAO+hfSwom4GhpX43e5SV1P1dKVLKt3dl7BiGWhcQlCFLvKsww0rybGBt97pStFygl7xW6HEO3qSny6etTLqoEe1wbmINDUQceNpkm6RpkeRmM6fqKNgPZptIuCbZoF6Y+ZkbEX27D36aFyrdcKAEZuGIRkUKUa3uxvTNdEDOtF5jmLb7rKF35cNqotrW1laFdHvJhzvPsZ3GPvRIwrNNH8b1rqQrKJmXqHXbQjBq/yrrNns2x5xPgwPCij7j4+ehewXArIMFwo6m/wQgVsHAcMqASGWQrB6AVPWgoqtDLpTq/ik/6Fd1rma9FoLRKasxFR+KS3+UMNZNgwOiodYQYa6rLhjwaGiuOXh2hdSN91lihfJV96kWNSIlwAEcowFUpZ4WYHaMNmf1AKorYqcw1v4Cdn0HL00dwPskUhf8wrD0dDzgzeblLtKLnpBbVKVtaVhptszuIGlbOIVJ0jiPvVhh5T9OqY31Mox8h4IDWDdN9alq1oQps2deVv+eDMrwIsVEjIfD5iUXdSIiIG1Wax9tIzIMqoT+9Ph0IbSZ4HCF00Wye9Ym0kHQ5sEei8uOMk0STXFtBimK1rHC4r/HoCmuzaA8HS1xtXn0QV7aFDC8VuVLDkoTmitRlMdsqjPmlLDiToOyz1g5vv12aqqD1oCgq4eKitPF2qc2ZGeoCUUoXSPqaYD+V/3WkOEOPcoUtgF6hHlZ/fmxvl+5wJg4LPpMhEj6vIo813AMazJ1cW0GUunOxzqSanLz/qy8CU+Xbuh7qcI6q8ehh2HgISyfnhbsjvdijTcKR759QgIgA1aBv+q+CazDqAuizcZwyDGSXR/oZAvW5NpEREDarAIskYl3hAgvqy2b2bzu0rIi0QcxZKMYLSEkoxQaMc7FjIWR/ErCQjWGv8dEgGPq9+tSaYrrM6iGRH0SbQT9HT4IL9qIAVu8LDpxoYsyMnyhP67NgUKyhSRpulvbSGCH/tu0zCu0i+N7/ZFIAvfFbHWxNLiHiSXokdBZzbOC1VmrAO+lLeznVKBhcaUKhmankt7YvqXRN0cPd2xApCtbF2dcHxhwjBdtURVPVTOq6lptynOMA5tOiMM4fT7sVYMuB3kj6parRqghmsnc1UWr7razTGPpQ5k1GZTvmASj8+6eCNUDPiHvCVRAfac4R+kWK5yWSCm5DQuoWfkxQUqlpn5Xr9JJHAcwbT+DDMzZAllwK93CDwQN6IueDocjrm4n4O6V1T7AlQpKsQUKOUqTMQpHbEHjxVGeqkQCCFnLCTiwO5LEj+V9zP15IzpPaMhYXqcqyuNup3QZgMCTWo8jm19X7yLj8MwGYQ67z8O8LMA4cYM4TqAb1kRBDauBkmw0p2IMvxJfncB+OdaqmQ7VaOvktRzh7fegk9Qn7rtETmVJ5hP4/+WyPHT7gqYG+WQ9wDJxJ0RGD0gPKGIdUH0CsAO7CNT/Qr7cDA2/VUEkK2Yu5qVqL7+NYOTZVkDcrzNn1AIyc2T7gNIW2GUmRjLWWZLGHs4yF3lq2zcitQ2xXvxirbY/5VapVj9tBFALNmZk0UyMuA2xDj6IEs+Cvbh5mHG0ka/S/6oyzcs+bRSTFm+QmEvIHsAFIdaBA2RILIqgAnJsAAFZrgpYkjUeIEdAK+ziGc2hXVCV0adHTwT10ueoVr/WqXj9Ql4bBag1DAj1YQ48BRRrHCC5JMTgw38pW77Tld9XHa4pbTIMlCguSsOHi9DdkhH61oROD+ildzGuQ2lr5lXmXaspvS8jVn0l5+2H25tb1Tdy3mq/7sRflja4msaS88i/tcrq51DC9avWQwj9kHMG9YDTTMr1HSXTQtAPbvuDnU/gJ4kVi4BIt7ihRmjn1tcGL63Pgb0ZGp6e6nFol9YP3E0KNtJJJBkQcOiUfqlDxzr1H9Rf7WQ7d4dK1UlEs0vssxNqWTeHlWhSTbaKv/R5qyE7a3+dutZp/lrFD+yA0RyShzEYueSpXH/048pUVFKlHtJK5DJ9tivI7UMlr+chxiYcrtMH5aEpRPOlbJhaKXje0litnPLr8k55XfClWVpfPUs387cRClTSd07oqkKbN96Ozpj11lScIdb+7pDyplPn3xQ88LisEAECO3BhufeRS83x6Ap2e1DpZWR7ioseJC+Pw6qNiqVJ8WnmBVnt0TJMd/3C2o4xA5J+2kHEQu/ZhiELLenmdfeQt5O23m7N66JmDKQ2SkXyTW++ViCy7x+PcFB79HiciVz6dREJ42TrDCVe/Y49za7YlDXjkCCZ58xFDKqSZvLzVOqleRGBuqgZA/o4tbQf0WVQF33RaZTbQ3eV9Srwo3uZ05xWram/OQ1lNhrrcDGWyodULT3URaHGQy0WneIA46EWCeMHS9pjmhaDpizAeKjFoCoJMRppEaiL2h6NyvwbhgOSbCaQVk3LIk6v+Mvdggj8leoWhOxAP0iuIhtCwFjxNHBqYQJDkV5YKArkJfTEYWVx2ESc3OZfR57Stt9AYEBW9ooCqyJ6AsNM1WB4CT1xSSo1sLXE8RJ64lJlc0lNzEUuFKorTyHcaSgwe85yLJH+sCOyKaQnVDIIqCNTKdBnKFIyFX9HpFLa/aFIuQwQHYlySR503+sxmxQk5lhakzLBVlNGc1LY+RJ3/jsSqyL6s5CivLKEtjgWO4CkFu5dqa2CGsJpZJR6fbul9OqMsgzLJDXv1LcppCd0VUityjuWK78YH7arZPaxbpsqZRsTTBoo3BSRag9tldITKx2w0hGrGKQiUnEqtdXTUXAqv2MvFKiy19wTrLrTLHZZ1eRik34qd5zbkad0kCt2WdUEVkX0XVY1ebyEtji9wb5bUN9fVpPKS+j7y4rjkImtMudXUV4uHxgm9Je9jdSGQ0tkU8jISVcWyguZCNUc+IaFTVYKarLVQr5HVgpqIpUefxlZKahJlMuFBrwZlaL1bBCVoJAfuPObWCOlk6DYSl4/HUHY0PbJffNk84FbQc2v6pimnKrqTlkLpyrv9LDMb/HXaLNWpMDMdiSLyFCoYNfHGF8dL0/OzwAaTQTrZjny7l38QF/00FSZCNeRlGfe4EIpye7ZzXAgdRwMUKmuuH2aSoIWXhzxpYROMFh/l716V1kZar59EuR6RfogkwZa3Cbdyjo1V2dcjLJ9qbaIsNqUQkO0fKxad6jsVXoM2rAjCWFhmmkMGoAxbebywXRwxiJoIMZ2yMLxHPQmS4YhJQe6LpZMRkrOYXyIbqYXmq4A1JcYwuuOdFOYjoRMUFMZSjB2JDRqdTijyX1YK8l9ALPIfUeECtrwBNK8pUVED9aW6YaMSPkOtD05pnmbciBnDB2ybStY4/adJH2wdkZR7q59uQs3sirjmObtzIGcMXTIdq5gjdt5kvSe29mL8ZOf5TjyVK57j4BVL7Nqr/L6R+rNWrhQCa2dbddWrRelAF1TbCE5VfWdDm9HLEzVMtVqo2mjerXR8Kcla1Oe3O63UgOZenXTXfLr7hTAJP6daxGINuB3vXqo1rdU9pQsVFnx4ilHWdFNfuKquEk6GQYbbiTOxCZpVBDGVMowFRenaUxzRK81dvt6zMSIxkQlH6Sb5mb+Il2FtMEoL1JzRm0cbVImdm1s1KYWDWLOwLZsw5DNrRjIhEHsV8t4TYZ/DRd4gLEKdHxxYf8nUOpTduUjkcJOD8hwPQXDSY+Q+VoJ/ti0QdTXiOAgsQsL0WbARI1YmjfkY7gqjFNcVMpmYPpaYcWdARhEo4Ew06Vl3kp/PKIHsIGQgenrghV3BmAQrQTCTJcWwGMk/ho/ouAeqqEqPH2NVAiOCBKixQApGvDb13p256s8MyMO/YCLIHmCjSChtXOzBHv+RiYGs+9kktJlvEgdNfLkjEJr7iMJDNACaxjKL3VTBhV5vMVGYY5Ec0xHKQ4wyoznpQquvCHthttweXKcrJbL333EUmsixVblVXR6PB0ZQYaDYiUijNdFgN06gIrCVzzA6zMn7HADqebTtUj2+qDopC4sVAbGsf2+4olokP5SdkwhpJ2qqCOGMd+FLJ5M6VhZ+HfI+tHaT7GXL/5e4EJJfcOSGjHuAY3xWBA4FcmdQiZCF5IvRwlEL5SeiOpn7yXlyZQVrFVEdwrpCo3DEEXqYptimoI3BHixw2gtc2mjK7xXVJOAnmxjsQny7rFuzQeFdUnsJDLM90Tv5NPKDwUq7cJWIpU2XvtCiyD3VYeRTiHNmpYYEc4f41R6WVXVeFBY59a2hyQu2jZyq+81RBVJoj5WdwoZjdWyN6hFg7XsRWrga1Gk6n6ywyma21WHyslAXIfyfR6J3teQq7Iut4pq5Q9gAHKXhMXCDW4LcwSpS61i4fq3WxsAF0dFaMKgAbCR6UMz/VO7dWajjVpV49nK22XNWlZTuFSeH+Cun2GP8MznHvYRPatJL3bHEY7k4tKFD3Ou8DoPMjcjo2+cqsS3mydjG2lDvyaFPI8sdlMk+5xfqUenrRhnWMcqe9uUJOOYygY6DiM/SXEmdU3QpA49QQBVSDK0hzYQSdnr7r5SStMRZVUVlHkhS1JF1aulDbB5pC/VtZc+J7nE8KxKtIsNZH6WyPbB93rErpQ6fc7e4Lpk9fxpA2zYhgiTgVUmw7sSxRaqIT/PCy3wa6Ga8iPrERsEW7CmvRTzS1ch7OzGTLGPbcp1h04saLMNa85weX5hh2ML2Jzl+cnSDssWsCHLrZW+vQXr29j7PUH32ALHHjKozwA+2XSxYX0GaLJ9cBjNPqCgkNkB1dFsg/3iQi44Q6mX+6aBILz3smnzNJJItjraEE19Ok5mhQpk3KUEydviqlx74LCU+c6qLdINPABt4nzwBAXuGic4WuPI87HJ6k5AfkIIzNji55kr96KFPO0BMIy2eSOuCj/I/ci9x8/wyh6RAVoBAtp2Wy1VYSgFvBJkkPUfyv0Yi5XoSgGtBMJobYt6hQ1KmJ58WeLLoUHpsrcK6Z0TW6Q7AkCpe2zn3xbvBh2GdJ6iKEtQiunteasVmJRkrTI7qReHzKuyU36aSLEiVkacCTnWKmJjJBoXA18Ny/PXtCiY6sQJ+nthdWoQSgAlb7kZRqXYaAFLI+6YEBtVsDI8iUW8/OOUfvhNhmAuXfhRjtMIBWSQKLIcr90sj1Oply1lFE/3dsiPzpQUkCsYtHX3U5U5SSDVYRfHYXnXkIfJkyre/ACr4Si8xb0VUPITQmB3teRv72vqXi8txZT224M1tNJ72DaWbZYoN+g291IskR9KsbmrZbESsEe+g00QS8wVgpbn6XKXij6sRBsTfmAUCQClLhnUr0dbI+vKFOX2Ys6eykelwFfCjvKFEl7eqWIVM3L4I0W34aK96KoRqrOXLqb5IVGDJ/kmiTpRwAdKWqCGy/EpvoCL8DYskZvGybMVyi1sUM5GO7NThMG2YtugQNtNU7wt7DX14XcoWge+QSDCHP+2AFD25gdCU9RhT4PayCjPcZbbM5oePsyMX4GHyA9W8RMY8THwl7+jNzH/6jpDjXJ4UFUXE9QK13jjRwaO2wTXNjYoZzNXc4oxnJM/cEVs0FV/6kymbxtvLfUpj6KDarnezWUBNjbUPZAAq/cK3o7e2+iwPvEOe/c8B44VtfcFwLK3yNsSY7PtyEnGcHuRonWCDcotbPg1iA3CFbDNNYgN3ha2ekeXCLb4twVYWoPYoN5Bt7YGscG8h29nDWJlumyBv7ztRnZShz03zmbzdkwCgax4Wlz0t39bIK3DyBYsyOkpx3NXKMUhzq0R7gp4senyRv88/oe+Be1Qun4klR01o2EG9pgUUc45oZ0WhImbvrZS1cFh31Y7Kd2CellBSgziBxIfZSY7yRSJPoCNxCv66Xw6HEc7VK9+fKoYlDXR8+Sbj1Py5R5uBE6/InUFbSTZSVFmrHBjFq/+OPeuvWGnGtO6F4/flanVzY/0xLwrM+dIth+QUJvuxBWeta/pCnO740hgFbY/0NOtJvlBvnyaStW4V885Zntafu5juUcEeo1EERY1wqh10i8c/nxWV6gzRNAYknogYzYjT8NWti3u3CidXg9yMXQxpJTeLzT4he6c24eRUf08mX3PDfnOJ9NSglL17Fz8WrbejMASQKdzMif0T0Y9styjsRp+OH4ex5TfqqPDSTtcvjOA0c50nO9SjNZT55qzZDoQ2kSqBYU+jzaCMY3puAtpLhpRFn1CGTLl0kLQpoECfxtNBhnO8uhAaBNZRW5YjLvRsyya8voUUIYvzuaPI+a5DIH0SRHlFiFxnCb22OYJdUFMyQBoaAhkSiqMx6OrZflwDAAqbooeIehUOECUiMYfUOZPPA6kyK0DqE8yiOlJFzuFgbCuMThtgvwojuWimTs6m5/lxWD65MqKPqYoMSDVBdEnM30zRsIFUr/6MuWMuX6YGJiSGAuKmrGlj+PpU8xnVg+TfHLFU9SecPZ0A4BehjjalLCXNAEQU+nDZkmJkAxpmQ7mfRR9OuVxtJvEgUGz9VG06QRhnM/sP0zxqItrEwjXNLBfn0FT3oSC2ZTQAtAnkWRzlyXneXQwjKhMX0yVYqJxEVVAJJ1+dkSKSar0+sgolTxFnsEQ0oHQXw6jNXXa9Gm0APRJ3ANMPT0QEzJm3bcFYEDiMfVzA+toARhvlUA0jghKm1hKM6kHubvDQYInnreYpSUAMiJlrqg+ijadLAvc0hsz1pIQyoiYF/hGW19dDDMqbP2VFaSzZADtNwlpRDT0s/F7vVK8KgQjGgT05BTAAxZjAVCbjMZWoKUec92j9HR+/BrAogYwRuN5tftRdh6jPfABlOFGisHxjcZVxom9HEMeNQhAQ0G0EBCV6bxKKhajkT1p3JANTUcIBUGMZ0ygtkCnTDeKXRaYOp7gTIXrJDoE/SyIc5kEryqkBZggVHkSJRCKDRYENewZjCZDHAhKm816/K6zCqcKCILU5AVsFVLqF67HSU0lI1ThpJxycJwSffAAhFMFBEGKLFlAOHEckCEBaDQA09FkDirluRPKCZy+2KUxd0IRMzp0FwBBkTLeUh3Hs+BzgNAUYNp1jyyQ7qJDTewQRDkO2MQOwakCApvYIUip32IcJ2W+eTECBkLO5PxsiAPlCEFQUs4eN+MIQXCqgEAcIRSt49Aw8GEcD8pXA6FmeEbadbIgGGVgzdhfpoKwG2JCLn1BKKrlIja8FxMU6/E7fBIQKmHnE7pEc7clRMrj9OufEUhyEZT6Gn1zwIWjmJLJohMAMhwFgIzmcaiIkcbBqJBWGW1szqnBMSXEIkQBCNU4poRa8aAAtHpopuQKP6BXMTfjLyjKU+tgGRLzyH+CAGIwaCOZkvIADIuDmFLZIfJ/y2MAPi0kEFJJHIxnnVGkVWEZE5PIlqRADTQ1EtTQADYoeFprnQEdmDzZNP0DyhfLo/GUI/KUOljGxGj7u2j9e5HlboC3yHuee41WgekkuA3qm5Qss7TCRqXIt+FB6VPvnYGXgqDpC+DB6WcF3aDDucUqCESAViPLNJb707Q5JChNGkcCzbPChCEK2QPBulvrXjAEty6cKb08ddfpCmJebyEZkmKRguaMahhjOgAr/DXICn+9A/ChOYghFezpHBb0uVQo5mQgen4NY0znd73t5SGh39W3l0coaRw3DekonjWJqczk1pSnA5ZIU/NyyYCQ9ktnXTpbiKXyFmSpvLtfb8y5VCimZMiqCGi66kAZ0gpCgAmCgxhS4Whgq/UhnilBjSCWASmIB9PC9TkEk3MIKjiM02d3VWw2NAFpEMQAOwgjoIZUI7IIymLvHuucMfcp9sBMqflkOXGvkbphQKsBMqQU+wDWzkEMqSQYYErhIKZUNO4KDpgoXhccIeJlJ0sIMhUOACGAUamGAaBzCUPnEoJOlU3KnFELCYgU0Pp+AAdFjzIApFfBmdKLg+eT02MIm28hmZJiGeOxizwPZwDT3BDPlGCVPsycWgvJkFTqk9lhfXIBcKjWgTKlBbEvoByrJKSS7RBARESFYk5meX4BQofjmBM6BaFzCkPmHMIzaHBMCUGcEMCcCbD7ycjbAcx2HSgIWq1r00DseogQJOP43odSXo0FQCz36VIMhliDZUisSWVqzKsDZUrLD2E41TiGhB6IlU49iSLNqAVkSAnmuBDogJDdgfdSgFG0jQRDCqDPtZFASGUA2+FtJIVYZeNXMYlXaxrVaxqKQig4cBEn/OJeeWKOCnrrJ0KrABvsLjUEx3BBSfMz9TVOcLTGkTebY16N+wi8jSrQR7kS5M896alfiaEAG9XInqM4ejY5uBitQBv6BUTYUp6w0bVlpSlm7kflE0uZmcvZ0qUYFpZykhK3I/cfgCl3YWEpSz4XqEMb/JnA+nouDZgEodpAQVEzOx7sUIOK5O1cvNW9Ji1gOEAEJhrl+CnPoMeBaXg7VbDQyeZF2KkK8BA3DQ9TBQKcGmxWttjWSDDETANrW8zgAmj55VvjM6EWOcBjofpKKbccEH4dNCCC/h9APaRGAiKWp4UHM3k2UDDU4Bx/YA//AQUFELMGysrCHeKFuEoT/cV/6kf55gDPC/oxMTSMQrdkIJ8+qPyePSwowNjDTWq4OkubHq8zfVtQgAFe5/75rk77KDaJUKaqfmRVovuW3lb+Bb1+2ecsx+GDjx9N7uDfXv/88/Vn0826EsX9fHcn36hl3Z2mGk6J4nTBDAfmEky+2WdYAUwVrepBsarATI+gAjfN8ypg0Y/WWOHS4ijFEdQXO6upvruY+YFPViVugFZzqSxEZUkplkZMbxDgWlV5ilPY9OWqYJEgemi4KFGn275dbadVD6dLyRlD1k6dUkIs/l7gYuYMV5ZiH9GUmmzeGUV+6qlnTLwS/EAEuUwn+mbFQIyaqkXD6aGBacD+Q8hJGuexFys8hvyHv13hOc0Px5OcdDO9kWSTkv8+xqlccWFrl5z5MwPeDkURHj/trVTilKUcRt2pWThjYNqdswRcMMAFfsrpOdX48Z0cPQGaKb/SyIOYzqYLwmi12OJo1KuSpDkKqs2WrBjiaLso05stUOJrUxQi2V9zlbn4TVxntbXqCMgKpWRIz5WYTDTLNlkQfT89L3J6iryo0Rc8jaZiK1VqYkvjGsyRkaLqi45Vh+3QWKzIBD5UFTI/urfeIHNCQCpTP3Jei3A9FAQrQi2DqcmcBFvVAG2OaXyYKgQunyH5NbMiI86htQopSAOpHiJ9MgxjW/1lEh6kAnzirSyBO++prQopiYMxwLhIPbxI4yK3NqzNywCpysqPaFCq3SFaQojVygCP01JigEe6PL7Hkf0hbkIMTIUojQUNhbLXPPMy7FUFtllmJIBUI8RZbz4Dbo4ZAZYqAdoQk/AgFYhwTheECxoAwGJT7HUPaVHWKwbaRpKCgIdlnuKcrNztj81zskCq5u1orKq1wWAS3koFQBtjAhzSc17jB5/4fuX4b9drnhcFUjGer91Wu0zCg1QgRY8LPg3YG5olhFisDGiLzIoAqUieFlm+8DDlYKsm8zJsVgXYwmSkwHhkRZD7i2T3bKtZZgTArCfjOA9iZG06mca3VQXo1fCMBGCPa13kz6737AV72PCbk7WPqkEvjhWkwQwEyFsE6Nne+DwjALiN0HqdkmmN3eayb4Dz0mDcziCgh4/WXM0peEsVAO42MwKUg89UbxlXtR7EPBSzgVfKJt455qj04T5idO8yeSYaZQBjRyojsqzspFqu16QQ6O3HSsyCillA1WUW/1BG7yfqsQdCFfK2Inj1vOeyaJHxWwwS6iNwzjQy4FZBKSIOQxStXb7eAmUvgLbe7uY5GNSuFQj124vzqPvAGo8H0s/ol943mIE1Td3ciYUA5DyBak65DEMBZCsGNI0QrwIb6lHdkOgooHko++TsakpbDt6wElWUApRVjOEZ0hyLPYCiLYtvajLtYAMo7pOghoTbcNkiQbk3/hyEBNUROFOtClwoU52OQ5rn1u6dn0Fxnkc2zmCegY5wY3im92R3ZRoYGJJiNNOMN53IFigDmEY1pVxtP0IpdhQQZqroHLgBTxOT2Ib0qyM2KDWP4ZmOBfWxAJRuxxHB/LTWViy8lzYBbqrreucVTNejiGC6bkVRwOt6Atw0k3TrPBVK21OYIN2wmvlhu+IYKpiJdHbd4Y1kEt40M2z7fBdK7ZOgpoay2ZKZAM51E8NBrTbqTX/AJYcAE8ySe9vQYCYsxjV1kPgZC5hTNIJ3uNv3VbWHu5U0A47+5dNqy0tZW2XmnXZx7UuRFIRaxWImu988lR6KCaPWVqs+oR6ICZ9mG1WfThdD/xKrcBtPk9Y4mD4/vuWly6hV3PRacn/3TZPSBBo0Q6PhYBZTmy3fhNXk1Sqtb1WtPUldy+pBAPRAk9YSoOhbE5kxjSynXR5KL7WbAaOgDpw5R1NSQJqafrRaVkEab1ZPu57mTVahaDNi+6SaPOqyAPpAATO7nEyRaPyBTVm9DNAgbKjeKDI3pA6UNje+OaFJp1Van0F7x0GXRx/DkE2y03WKOuW1WQzOczTZCHEMkrJUJ2O61tsB0ObR3izRZNKHME/70xwLmPmEfSRtZq2tR01GPQSA8a/ZvDUe/7pQ2tz4GYkmnVZp/RGn2pDXHXHa5fVzy/EjOU0S7eL6fsTqHi/K/MQLHG39SNdwxUCgqbO22p7XBJq+DbE9WV0DqgsbrWr0O3WrtL79tg/AdY24jwHhk7ZOIsxd0h4YxBoieGCZEM2XES0gCE/5mfzKL6Nj/Yw+WDf1HJ+00zyGCsCYyXSzBHv+hogg+jCmK4YE4PrHmj42YLb7NwoG0frBvRvhbZz7Jt7vJB5Ei1fRpXz7jonBnvnScwrYIm83x1nuPmAvj1PzvTJpKUD2XB5nFCmMxQgRgZhCW/cIJhBbiXTDKkTV0wwLOXLEMu+z0e7uCJLtFKHbRP8wMgv8hdHR2zZxxBgGNsPgtE/fGkbqh28mzVCNUqZpiYdnOQ+oCPJFViRJnOaKl8UqsNGDogE4+PFWV4JaYyrShzqdw4t7/LzIyLxCw62KZJuiNYbQ/CiwRdoAGh8FBj+thbVuK/asecQ1a8owZ10VKl/hLTzk7bRNdxwNcGuGXVLVZTgBB0nx5OL0/gSaaBcUku7yygLdLigk3XWGFg849TfP0JwFyNDEM38b2aDdwbWkbSt2Mopv2wMrGer7XyjJ6DyXLTZFECgqhP8wgNAPv+kgqU01QjKGPnlnORsUGZmrXPKR+sFZ9cMcJEjYEL/GVCRrpBxDVP0wBWdJo1q2Nwtpu/+Vuxwmi9GKf3e/RE0bZVlnAgxgO6OD6SLPI84RKM8WJgTdKq+FTr6RIdEBGgBFHK2TmLjAMBSHaPozqE6INCcEEBhdRljrhANwDj0AqGgxeo+AzPaqe2WDlhqAGWpKPeCmoyfTeJux7kwqSHcqjNU1jmp/dJd8+29GLyyuyeXxRK6G78meW5vDMw3bQlo+PaM2RAAgQ88ZNabCDp0GA+qQUtmaOy0HOSZ1rMCM1gAKoPkMbtv0GhHsxk0NacRnLzvrionz1EIBtByOrJdCbgYZIuBteeoSaM/le90gtMdBARhvUrSlp3PlVAVBdwTRtv0lAcpp3CuECZbuTvnWrKI2KhoD56lBMz0EbV0V3SAP68zONcsZSOubQYHam4nDuzX6QzYp7oggbNc5RCqZ9ITzgfp9B1LC6ZS1XUu6E0NGV5MXMZV3Cic6jaK6OPvqlw3G4W46y300fNHbD9Z6T/huPTU7Ha5Ecvy0CE9PzZ815Ydx5fO4K5T5+ulK+2aKA4wyMuCR1g4wdyc1wYXmF/irIfsjJGmNrPkc0hJOo05niOcIq+GMytZMl6qZbRYoSW2nKtUbyV+tHdSPPMOZQgUpaQ1tBl+lQUReQgOI+KWMr8kSuszNTKCLNd72Q5lfZaNzE1YKpzt4e9ekQXr7Npnt4aWkr7KBqZ0SbXyt3bpF3bxft8CmO3ZP6lfZ8Nx0aXUKlOZfU8P3qIP08gpstq+3pX7NDU9tmK2+vsKWr7mDNH2NNtv2Hblfc+Ony2UVH/wVNn+LPYgBtPBmTaAn+6s0AjqEdSJ4vtLJX1QHcy9AhDrtDozx+CqNo4rEbtXpa7ILAX2QMaINODtI9KV/lYZALZtu2H+lg0OLuvmY0AKbHgp6Ur/KhudGrHZYdPA2b1iD9Hd6XDXXzbmsl93IL+NgBCVyO0iDgpuU/FfRXASH1cXWj8wPRsqd3CT1I323eSr/ncugpQ+XiVKdWj9OWUmnxbGfGK+B1zRZGfKyJ3+a5JUOBe13mRFDKaPKYM5SXRztUOThtcuPSTXto+TkTICCvA/ikmnQraW6nnysxBRdEShYkvHsOctx6CqGEwrpToDCaJcnLQkwTkAU28OzpFO9QWFGpzpDgVCnRGrLuFjqKDPG07g2SFfXDyzwbkNbiceoatkbQ8mwpO6A9i+Mbdh+rVoq165qKA2nj/PiMvDjcHlxrB/nxF9JXZA5YR3gNFtsU0wD/+PHMn0aTlGO10oDDmPkyANrh+kxQaqx4A3DfnGDW+apj4JFHdVXnhKoExrF0c93SveoWHJQpdjFhtIQwODmUGkQXkzq96Q2znZNqoUA1mYadEQQprZcv8yuTkeAYNxWdeelF5sNWmyAA8dMMUXjBDeAfI0DzCr1IehIKgQF1ChLTQvOegQWjjffpgEnPoYLx7xOLALKW4wKx7rzthYo83FkOPZ/KOQRmKD6h2EugbHODcGtBQVvqxAEQbJbDpukPrIHaeAOGqj9wXaaAaDtmwdPxDnUX3g8la6lyjUoWnlazOmW1W4TCqNkIrXwfVzsUFwFDxeGf2TqsZt9r5RgLCpNKKmKLZ5pcWeAYbgLwvBwVIQmfKryEFzYjsGCCvBzXyEFgICWAGqfGy8aSRuFatGaI5gqBrnW9q0CLy6o16FywVaoggpHaXBjKqhKOm0IQzutoZQbZMjmJV/OGv2z4A+iX/VfkPCrfaV6Yv2BPZOC2S8DP7pnv9mgIMNdtQzyV1Wb9v1Cg+YgTfE79nKHF5kATTFah/goXKsBt4p1wHni3k8o34ltpLrL+o49peLcklHKi6P3aJU5H37+sDxxbqrXQPVw+V40+V4RYYfS9SNK6XMZ5F8aADWF6r0NMiQYI5AW9AFQWIaBTYCynSIY67/8eHX1nGO3nld0WWU4ZS3vBbF3X+UfN1G3GDBLtQHffri9uXXeUpUZGmNFrbyxDVjXLqBBXcWA5fV3k060Tv0HZnft3Dox+ZWbPcYmGuDA7FAfQpPlk04QbYPDdfrgrENE/wOI42RLl2auJCOyGaT20NjCCfyVCUCKyO/I//qBS5H4wLLBoVuuVIxsYpv4RqaV4NRPdmSKDiAMi23pp0WSQ/b7IShA3xcydRDNzmEIHGc5cRRCiJqXQxI/vHfJRAYIuoNp8QbNfVzHIKMTh6TxK8ZVrhZFAVViEke4jJIKV3idB1mVr8apUk7uRQzxJ3GGc+vS1BXHHJ9856drN0EpEcEhq6cpoODq+GgzQ+HvjgMONT1Eg3GmnH2ih/DUfFpkKKYmWlaQRREYaGzQpCzEcAODYqWrJxly+VwJN4dXwYowDkG1hbAKtJ3uMUgfY3x1vDw5P4NGfgxXhbZvNgb6xyN6gNKBt/MTB2/S02X5v0/b5RM038xf40cU3MO6huxn2kdc+OYrJSSIxoKQPkFTzIG1ogi71v2JLR11hjTXj3ztmXVWUq69LTEHnW7ISJirblTMjX4mS7z2Jkj/5TTT4T7DWza9stjUBx8/OrfXP/98/dl0dqNOEPKNVnt9KIClBosUzv3Q1EURT3A+meGw58YZjD9PPg6Qzi6IOE1Z6y6KEdrc1QcQsnperhiLpn8BoVQ+5gPQIPUJOABOeYJtDFMf4oFah86uytyxGkhjgoJVuQcB5yMzXlAqbw4SzbVkph6akpKpKCwMPUeWUVN9zszKgyI3oCdF5AfyH7fMnw5gQGBA6pUT43RTWsIOn2Qad/wEYgjt3wCB6cxBf8QiSk3jd/Q5A58eI3ypzy5v37v/fvPzj9fX7ttfb+8+fnA/vHnr/nTz/u76s3v35sf31+7tzb9fs1PMBxQUtMjJuSw4O408/vTjcvmvN28UGL39+I7w+fjh08dfrn+5c29/u727/tDhUPp6CpBvPn1yP33++On6893N9a1CwR8/vvn8zv3lzYeuEv6/vxdx/n9+/Pzu7Pj45E35kzLq5+u/CkDfHC/V8P5CsP725vM1R313/dObX9/fuZ9/cn9888s7d0koakLd/vrp08fPd7fuSYVmCqRDSqYVTo+v3gG3wokyXs9uf/zt7tr99e7m/U1pcy0Zk+fACiLevv/49t9In/3lDVvvtCR0jnIVBNx9/LfrXypE0lZvyY/v3Bsi66f3b27/0h0J4HDd22ttaKKODx9/6Um4/oWNXu9+I0Zz87b8o0q/nwK9vXtzp4lZtdubuzfvP/5MhqTrW/KzvgG8u/7rzdtrl4xrN5/+cv35zfuOFvnJbHMqZyDow5t3n7sdpTxf1Yf8+dPNxw4gPX3Uh/vLm6rVOqD0LEk4typCD9hSYDPGxPqvP3/+9dOdsAcPzhRlBbHgC/cXYhjuX28+3/1KjUK3pPuX6zfviOUTl0A09Hph5mduRKzMffDTvKDvxCoOm2yrxv18d+e+eX/z8y8fWHdojwTHy/52pYKK31///Obtb7QBO6DNOaO0asj0df1/P5yqfu9e//ThdOmSMejzR42yn0+XsqU+/eU39/ObG+nG/vT+zd1PHz9/4E0saN1q2bHYYRoCpdy071vqr8bOv725e/uXdx9/1hvtP/x4/e7u/S1p4F9+uvlZYJVB/n9aZ5fVIwd/0jegTx//RsxT1D87O8WqFfh0+8Z9+/m3T3cfJ+tCj5vKd0y16kLNwX1/86P7gTiEN8T/vfv49uP7yhvrSFPxxnoqYlKon+PeXF9flwcMLrXG2+v312+7YkSHEW6ye3YzHGCvv/FmSoJM1MQ9uv5rf0wRsigTMbAkAaoqZnI/vamaUtShSsNs7f4jCOu8vRaaZrNVLwtNx99fCdqb2w+aZtGM47ek0W96s3A5cjQfmfrWZIjs9hbB/sNss52SZeGNgdvZbYr319ef7m4+9Jui3q43GIOIRt2Pt705rN6ol55WyhV+6dKODvrESjuRjC7a8F9ozwJD3/9vdOFFK0gc6R/pAuk3WThqpL/8VX4ebjY43vzk/vL2k15zX5Nx+zMx7M83b96TtfDd7ds7acf/+t9vP7m/vvls4OX/+OtPP43MQqtis1GfhgS+KBk1XTISuifn7hndBer6omSYbP463KJTEMRbgw3NHRntfDjqrctmOPeX67u/ffz8bwSdrIc+XUtvVzQ4zbzFZw/RZKkyTLTry9Tw/ubNL2TJ9pms3G77w+RS2tur8D5fT3TlifcNFTsxkzYjiG9WNrL0pNz99un6VlmWmz8n9KaWUCKPEPupvLYhf5CBijze4qiMMKPn6mU+wvrncgZ3w224PDlOVsvl7z5yt97gzRlrBMJ4XQTYraMiqPDqoxkSXOfs1aP5z6Q+6m/ICj+K4uy5v+M1q579PxNkgRPQezUwzGCeUQHVktY7H3DaSAAenwDVh/GLCKBsEvMk/aB8gHLGw9mPnbTloDoDy6ENpzWIxM6gOtLMO/x9HsfBx4Q7NPSHG3ZJtf7tUeEd0Z+8HaKxEeSjmP1+6rMjLyn6q9z6kUH70jc96Zvk4XwxCK+xIzqIUe6ild/bck/7t2VlpNMAN2Ia6bTw6qsjFlhDH7Vf44708sKxsnR2IXhGdvkN/8+tl/pJ3hH9L/Vt5NohpF/Se8hHwR5Usikir3zeGLP/ZhCKUeSwRjkCla/QMBGKYtejLvkhah6Hfl7mA3WTmB0LHYAEUQB+8nByqOYn8tM89/fc8FXCgQ8oYbPL/uvt0RV7tGYjX3smOLnag+ynpxHp//t/n1zal/+IUvpkfXaEaETT3lVfiydLsRQdkkCC1yjKfa87HQvSXVhtBDIp4jSN0+wQNOgXof8Huwbf3WH3/9jH7MNS4Af4AXctcY03qAj6J0ZiAiG6x2zKRml4RLeJcpRucd5nMPLZwBlchOQ3Pyi6hIYc8l0Rrnos+O/sC+/7o4uQ/OYH7pUu1icXeyEh9EwJFfr7Bfn9D9Je6kBEM/DOsmk+HZshyBp8/YPsNDGBTx8OkSZDk+WMTRolIemZA5iSyH9YbKJ4Uf72IIRGHCpGq/23/dlS5e+4Y4sgMuiEksM9oL72REtFU9W06PZ9k8Xf0CD+2rqC7LLR0svQaVr8jf/uQLqxxkhFP6N+zOKjcU9X1YxNLio6GV/aLzb0b4vmb/tV0N6IqWhrejNmsan+fjCt7Z2gUv+b3kxZbOgHPANo/cGeu+X+KSr11pGl0KKfT8R+9wRmIt4YGvlsfLdWf5PWkBHbphxsUi7I6gh72Q/0r0fsn/vgUrts5c9uiJIuq//L8b58s/iAkh/+5X98/PXu06937rubz//T+Zf/8enzx3+9fntH7/z8zyNWWIJzeehz5K/xEd8x79PlVyLipDvhdUI4QNXjZ54giS0Dfe9neQ3cuCTBt4vFY0pUQsYAjF2modYvQ+LQxd7g15741ymuft+p1CyLTZDHikWY1K03Nqo7jR4VtLuLs/zrU69aZcmYdlTex2WWm/mny3KsW+dHZWDfmp1YsvOxo21UHNW9bIV4jtmWTlpwzbdH5QdkINoEaCvKq3xonVkzSbKYpkuARfr4RGxzG+IoN7JNjeYic5VCg/Gvqyb77wYzbLBRJ8J8NKE7NbSxcz9aiJKXKQFkeghEyz9Ql4O22uZxFwcsBGdL3ENFpBk/Yb7xSF2KqMjwepEg6p0OHFMpCNIKNPBisfFxsF6wKFEU+H8Mkjgoga1S5A1u2lofpWtvVWqc7px1kI5PzfEoznc4DUj9/tsw/58xzFkA4VMEU01RvvqFFwGOtvnuh/61nj3Mf0pdof09RGf4b0v8L2mJw1UC3Mz+/1pLG7pUKMtwuALR/BP5oYZbPPr5bsF2hl7iAksVzvNTrwhQusYJDe6PvGe9sJKXU6OIdL31YM9JPijEZDUFUI1mZabQNN9Xj7iwn775/s9PYUA/LbOUko9Pjo5ZYYIS07f/yK9+vftpcfXl1Z9LgGp3qnlmzDsqL/McZTgvkqO3LGXFp/KzT0THPzLiNI05DfV3d49H7OoOQSBYCU7z51uP/JdA1TtfbeUnBILV/TbHyZ9IBTo/76lSZtVx7BHjUTy3OM9ZqNNL4VV4XGX6Dd9/WYtvTouG5P6nR1nAYktyPPoMV+8ppCMv9ap77V5asuSLiLoLfRE94ySYymaeiuqa66tvX/ENY/fzx493r7579Y8vrz5fv39zd/PXa7f9py+vviMcXv2TlLi9obcx397c/ebe3v367uaj++Hju1/fX9+S4v/xD3q3ljG/fmJ3DckA991//Oe39L2nMH7Aa/IjG+W+rT+8ZTcm2Hd0LGLZ+Vv34t+S39Bnu76t/4iSxOWN6OMmXUX7k1UeuPXT1q63mfuzmy29k+43ZZ4eIfrgSYipr8pMOsM/04TyLu9Bwg/I6jGm/2T/YJl/+VfVHzofD1NetP+cBS7P18CuSrp9yP7H7Ckq+sc8jcX0aQbcdrIsN848PwhQHqdy3+d0h23syzgd/1uR5XFIYQrSenlB1tjb3lV7cYnJb8ozsexxVH3VUzFjf6+eHHGLjI43D8Q4Zj99YEPTyFe9Rz3GPusnbRn5Mz/AGfuq8+SC5Fcp3tLT6pGPuxnBRz4SJvYY/2aQZFyiTO7Pf8QTf4992CSjGPuim/ph5CN+47q0NLY1NPPllvSQiNd6+svA3+5ydmQ48yEZNnnGlunv6mTjDPMeP48aWFWADeIuu/Ym/LSu/agdVkhU260P6NxRzu5sDqpm/+8+fGC//Ia4D1H2Hf/tD2RWe7XL8+Q7x3l8fKzcWtIZnSxzKq8As7Qn5Mtmlv3Cp1T6S3/Nfh56FW9LUn2ngpZJ1mEH5E/Ut+GZSFkO/m+IhdE8qOyro/9F/5fO3s2EXFXoT0wnnBipMkX857em82p1uP757prMqDxzecYbYOTkvfUX0tBk1g18r3xPjWYN6JWtJ41qSqP9k0ZIdL+ps6a7BAoF8XYIw3IJufxl6CFC98+D0vXgWn6RDQEGX4xjsDHGj2hcrjf/YTnyN5+PSxZ+PkDvjnejCplJDiVZoJXHaVDC780yLv/TgPLgwzxFUUZTNEwUoa4LN9l5fObnTH3ER5Fe+p2+dvlX3IOjB3grWv21n5Fu6u0Gap7/XohPRwpp8LGPhch8EJfFHv/8ZY2wdzikST3wVz3GUqNs1icvSL9cxAecIxqG+XUquXxY+NvmgeNvO28Jf0uvNoV0qqLuS7a+d5fHy/Oji6Ol4KHdwVKHdzYdBDbfKRWn+dAHay2aG5XXSgemNevOFp99KrWcsDPZWk3jcZoUb5rfxHO4Tpk5tT7kmiY2D0R3OU0x+MaVCQ5b7YanpwYYYVK4KA0frgww8j+YFeKnOTuWfkvbIYvm0uMHQ+yEHMKiusgLE2hIPNd9VBFXxUbaaKUhUxTCY+bQPL2wAEakxhltYmjUEBHkjIU4x9KjlCx4EsxNU6qQGFyvGzLaQ2t1m3gptEWx2RYe0mU5k2Bxdxt4le42T9CQ/hK6jXy0Bof0EFn8AIMGpNtbgHxaIeghpIKlezV+BD5DBZhtlkKjWrD/AN7+g4ftGhgyzKDtP0mh25wgupm/jcjKDRiZuBHQ1c8wWTsGq/gJGhd8Hs2es+bwEgrURu8sbHRPtkMKjEnP0sAgywe1yky2xqDlNgd9jCzNi4SDSi6VZ0HbRCUxV3GcBzHdPXVQ4jvt/f9md0u21j0wegDPkuLQlAQGGPUhvmaluhgAPOjjupl875qEysjiAW1BqlZj6fNKcYbpcYX8aqkD0g7Z6P2oUUGWnZuyoscYGnxY+U2Asl2jJzJ3uexXunxG8ST5lacL1cYbjeWUH/16ZfM49KVnzW7Z1ew25khB2pVdj1Q48zd8oNAFoj9pl1XaGuyXTqW7SLckjtY+iogvLT0i9ssX0jsw3ZIZDezXLJqjvNAknOU08EarrA9gKnw3mXcSyQ7bLcuDjGgesFAPoVS9XtFSfXpliVOIgkB63OT78izwpGq+Ot5JVu8dEE6kAVFjQrdIKiIqOzDt4pyCxHFJXRyH6/ShbYpYxfsoS5dRgax0+U/t4tmyWjBVoYaK66cOIlUHJ6SkDRqF6LQjEjuROSogtE70HwZFXaVtGREADz4xgWBRtvKTpwhih6R9kpHiao6DCITGWpqUj1fsoNkAIVHwN0Xl81TBJxcBUN9QsTcxANqXmCWr96SqKLdkA4AmMpiFnFS3LfQBd6rurQiEWZVBeW5VBgiJwopIVL40CmkA+pwMmypCRYe8U1TpMKxXUsGCW+W8nS99lNktKL+H1S/HnG+kpyE1n79XVN5pHxRUH+5bAArnZp1yKj5Pp6DKEUOnoMIWcr+cSasq7DN3yqUopNnO9MpqNorKPnOnoNoebb9ojqXXfYKiRuartA/cKam0MdspqRgt0ymrsnXbFKTrTZ1xjc4Y9dCtNF/wklSiTjmsWU5tKdQqyEYVnYJ0VNEpR4cFnXKppmZY19YpyPunTtGyc+mULDuXTknWQSQLNq/bVytx6iAquBtiAJWpTYygMGeMArDtNB0YvqtQ10RdmS0EBTMvHzAMkUcqsvZT4iMv/l7gQtqvacoH9NLAgvxroeZSiRDY/o4BgHpRxntH7zjrFSVVRpFmYbI4yhed64GKACZlQ7LW8xf8zSw9iAR599isBsnuWa8gf0ZUuSirtZallA95Fk/1hRbybxgUN8X0XrY6WOYhje5WJIlObwF5bdWCuLm3VTVE0rWswwCdCvap/Cv9i0vTzNBjBE39CdErcwARUG4405/NEfguRHl4zs5RFLudEHSDUV6kIFDhRno9M4GiMZ70cXgTgoCAa73ChVF8PXiZ6r4CMlF/EhRbPyKI+Mkn3nPk4Qq99Ss47PqRytZdxsJrf7Iof6vmisGI3GctSyWDSK5yHbTzHpipT4hoxDFBpMYR307I6qH7ZJhWoEgfTI25J6xMVlD9WM51ZvqREQBdA6qXsqdbFGADW5A4wqKqhPYEp7cGG0W5u/YfugL5L82sS1IGUD2aIUrmdvr+hLZvuANJHWYkmctYAtWQGpKh6pz7gxQrYLUSYQPx5klehJlfoPhPytCsRzXzrwJc/nYVaLtPbayKIwBcq/OxPzY/AyJXfOHAM3+NH1FwX/6p+gkMtSIMBfwYroqs/D37JwxexRIE8o9H9MCtlP0TBq+iqARZZTDqJJ0hv63GxDqOsf6NPWSXZkygwZYKJ18aUrwd7id2siKGbXXbFGC7BorX3jQkYJrMIZHeTNWQsFOID9OAryPYae4vi3IIPGmO1H+w3TmoIJZCSSFqWUMMi+GkWzoWZSjtzmjgqyzOJeH9Nr7qppeOjMp+bcpQvEQ4K6IK725mJEm3VB25MyPZk8KnCnsCqnHWnoSdQsSkBnxv/LMrqB7/7Ilpxj97MlS2IyXhhf3aTESTezUrEpoPogqzb6fJQ56HA5xCTH5S8uIw8hN6k09+D0RHHM3SZ7VqdDRGmL7bDF8Piu15oT3sEHnWwLH3e4LusTX8rUXF1F0wtGGeTMIOndijv0PL8wub8OcnS3vw9a9twTcpym1KYA9P2KqDb7MSfKKrWgF69uHwrQrYkeBDiqBQ/NYfbQHyo8PO4I2VLwCul7x5WmQ5XqvemVeRRdW0L3lVk5S/UrxpoSkEaIknFEOmCS4FYSQd66cnAWSva0YG6BaIhCzAOXZSlkJIm6KAOEF/L7BLr4iwJ5PtioHYbhkTwfJjJyilKc1tV6cty2ad+Mm5W78IpZAmRkZUayLz88xVuakpDy8aMu0KUTkdVhWRp8aLfiF2byi2KqFKEc82pK1KAtm1mpEBuu8jIas16FuVRQd9qwKgNpjGxPBB375ZdwVZtbmuKHtNxOXsxbbbs5n9xhJIs9piAnkAG9EK0uwZSVvYXixF6I8YiqLTKvbcOKuvnrV+Y+rsTIK7K6K6EOcqYlKWHLDz/Fqd8ar9S3hEpcizKVgfkmmVAKqDKG0RsojsDmAmHRisAKzmKirBApL2h+qAaLY+bMVaFZu/RFaBlz+yeCj+l+ZSJ1NKHWGuqpueoDoBV/kQmkqeHilElRu4UoAKGb2l8Bq9WoJVXd0KwesUZ61mMmv4LqLK9WIpwJZaFWHZRmRaJHlHs4h8Ub5wEpGv3Ac/zQv1JhNjZzxFZvsP5shcH4M/qCb5m5PgA5DnL8HV2uA/Q+G4Sle3Z9EU8gTKYLl+HrrSL9XMIhYKyUjmwVRSm8yiPQBw86Gsw4dvBB+oFaquW1VUtaeO4PBuAIXWaA0KsVBI9TEPppI4ZBbtQYfb4GXscirJdorZKObxqhhxc0Ra8RZDvRrv+FoNZcq9tIfQZJVeYExqaYxX5Lm24isQPoOeOmsfbSNiIvK34ccQ5d/yGUHAm/B06Ya+lypPTn2kcPn0tGAJzhdrvFF2HQdwgb9SjmIXQmmsa4YIACi1w5MtmNoN4QKscG4rRGDNbjaodKG01gwiJEOM6u+KeVxG0FIUrY1HkLpjGOKQX/vGlliCAGEFbvMb5tRv+auVuzi+N7UG9v7wgiwQig3y8oLm+15Q2jhbmPYfAbQBIp0AVyjDZAQkn3mKp0RCODq6myG0JhozIByuyFRKMxuZ4bB0vNlRZgTC+6MZk/Jh6/KX+lAsW5ygG6hkWRxD5b5kH1WPK32luO35kZ81+VVIlcdHkRQ5hTiM0+f+Zkb3t6rsZDDdFG+VooMmoP0hdk66PB335J5BnhNTRTJ2tWKmaSGmu36OEJl12eM0qeopkoKcJI6Vt9WkgZXjSxTwudnYgc5RusXKU4UQvG+TIBY4MHQ9RXdyKdSxxu1fqrKdR9TbwBPh+pBU2dxe54rqMoZQ7hQ+DqVzOI2DZwFZVLtBHCfDRrQJrrcTpSZC7+huRkbPfNyEndYrBCmXUujwgfz69SD6b62z4TEc3tMh4JI09nBG72apxeN2Easxs66oYrOM4VQVBYDrVdQI0QdoCmJ1LGtyfSW5/o0xlg8DVr/7VGMpK20ciydgVkg3Lo1KWtoGrEpebWlQGL36PVjVRi/XWL0ZuvNLFyXSuYkUUJVzU0gj60QaSMAa7UJ08ctlWleMsZZFoJq+kDSwizb8F3q7eFKCbGq9A2+tDVoiFN+x0BVT7r+5yvtvQjl8/Cr/RrdHFQeteVBNz1QKuGU+duHrtjUSI9ILM0x4VJ1YHxGs3x/ay80KG9B1uhOb2EZ9RoxtZIfFGgeo7u7lT6okOQa3A46hx6OD4aI0fLgIWaL122m4OtmZv11hTN9GpgeSF8cOf82AZiPN8dPsUmkWh6X/wGm2WNFHJqLtgnVMspibjZpXhobj6q3uZxeb8mjbFONowVa0NmofkuUU2lpSbbjZBv4KThf8sQlLbKvgdpvYcLpgV7AXHqZDnQ3G5Rc0aAWO8x9BYIVqMDvSj4Kx/13Qx4lXyJs/QJ3DkdpQHAWJvGTBcv6S/y1W2jDlSfOCzYJkqsILmbgoaTQNFW1SFGLac1s7peWfq0fhtBUnDQ3AmuOSv7n139zKdKwJkEr/rICOI9JxPLx207jIJXwYBWh6WtnSjI4Fj0GXqbDZDokRKk+AzPa2yeDml9ewuJDydXD22/0IMWlV9jgB2tAj4QVzUTXQGIYXF7RvZ/U/NOo+AqTJCP+RJex/FvRVNHMUprQF/aWfS1ztnweUDeUcQ2ru0en7BU+k4dn/sMlCp9FqBEXp9F772iHrBB5kuQhPT9nctU0W7FGl9Nnh7ye5GRlhAswdN/rkUve7ufeVZCWTD+VEtz6Ekp3FRUomWTqcYjkSohJQbKiPJUWi9SGEbO4vlmPeCmW+Ny5++C04A7L6pFdn15Ikqs8BeWyTWdnbBFAebVPq6M1KrT4ElE17FZuhZ4XXXwJKT5fLRZXRa05+61tABu0OPUuh/TEgB9KfZ0XTlZKaxLJVeaJMuQDxKYTGDar8Zldn9hrDZL8oUqmoKg1IliE0s0GWbsaX0ZogyiVjWRITBxNSufWhgcxh3xRkGQos8XDnPEg5kujBpJg/5pmgSG/hLkTSWLkLccoKGvW4Np4+RGMBDMyVfPFVGdA101xr3a9tFM3iKsvTONouyuDnhcShzQye2Nkw48gx2f7AIoi3W5wy66NbbCB0+VLV26EowqprnRJyywKyqMNP/v70vMiRxOM9M0hkcrs3APIjLyjWmCZjXpBOb4RRHUuYs6nu0BmB0JOHRZnHlKyct2SgNoOTedZ6EgGg3VtQQA2/TcwH1zaWzDWsSZBqFWaCQZ+0DtDzfODGNAo7DTJTr9ahTw9C5WlxCSRdX6NC4UwW9AxVKuXpJFqKHhcQitbcO+qBVNMmDIqL1uuURmj60cZsaG1BBuw0P6dpRGbDbSQxpWLVZbGCe+LDbOPcN7eNFmpBSnrPnuFg1wLkF0+oq+tnNL+Y+qn3GDa/tFCY23QNWbpeMoFckoBVd2mCW0i7YQ/KosbgXfpqjfuAvTxW3hAflVUehvBH3t08mH0JVRKYINHUM1BtqHMsMYplPM32sKSjhCRB/1jHvQ0IOFw7QwxFDqVTayuAwsxM7W0yIyB2om48IbUDLoyA6rUgDcUy2MLo4XXWgVvDfldtVVYhMXxQA3B2R5ABMN2E/A5LZgqfxguChenEQzFMmJRjU3mFuFypLqpfyiQ2mEftrF2hsflqtnkxAgSWLUiBMbtLVGA9dBat8NjMvoBha7Q6JmqRoNybfblTAZkmrIEC5WtnYKOoV9PAyuXLPmi2bMUNDdpeg0OroVqVA+MO1unA+K2VOzByvXqAbUTxutyakGbNak1Ee6VpTUiz9rQmojxNA0Zvh5UA22ftQwMDd8KYYaEFfrYdCQMvGVhK6Y0Copbpk3hS9tq9rH+zeExRksxf4lIR0vU2G1FN5PUehNmoV+Xp1r9y7VRpKMdCbUoH23JV+kIs1KPn1Fu1gK6Pb1tU6fJblVK51FZbqPGwrdalcrgtm/RQjI261F6zVZUNnWjLo/WUQAv1azvxlmsmFmWhTvXywbKdC+TYqI141bInma1FjG1tTsu0WsvOOmpPMlvLqj1JLFdZdoW1F112O3mzBrM8bgklWahRZ/FnuU4jsizUSrTu3IfAwTLUrlC+KrXcbEMxYHXxk2oF75J/NgHp7CDN8NhGhF9eW3a5QwAggAV3z+6NPWJkEmQ/KbG3i2VBlGDfiUrRuvNWSiErD+5K64YTNek0eoqQS3A8jTnULL10rR8czW/5Vr8s/6NV7frS4jDMdHFycXp/oh/7PgW9vLIGvc7Qgr7Oag/9Aaf+5tl2HbgUK/jmoPW8xL15MlF4u9nHcKcx21MeXtxjWvk4peusItmmaG0d3qgDze0b20F/oBeM6stvYPoZF2GjFnq8e9OWMBTSYOLq42+IqdCQqvJqFxxuujx1CWHP5Ro2gOY/oCSj5p0tNkUwm4pLHkin5asfAr8TURcQtx2n7sanUcAmDKeBTRi3V4DlLnCRrCUyDotBg9LpVbiiwFIK8JwTq+ccu3WmA/ZjK/HBtPrkceT59MNiB79Q4DSPJcErI3UgWnUDRLuWT//DQl6dVbHZtNJKlz8upOMjdcD/XuBizkqUcEsHdFEGwi3KPxrhs7WQy3iW/5bnnO/8dO0mKCWDebjC6zzI6uC46mckZ0tSUKmPwLCy6AQS65EYKZjO6Ls3F2dgaMT9nU2xIo/G3jnm78xDYRZl0N9s+K40oodCHARw5uJ5YAr0dsQ3RstjWLwkDuZisRUQMW1i6XlJChPUYLz5db08VhwmKF8sj57gEKnmXLT+nfgf1XtD5ZLLqohNGoduksEZfUcIAS4l8C0Qa0KI54vTDOdWBWXZnAurCfx0fvwaGBm2SYkPSuZ7moMeDDRP3XW6AhsrZG7uKYCB+R/rHdgkgL31XGS0ChacgWDv9wTNJrdVgJvLPCYPRR8BS8CGA5ymMdh8tIVzD3b367nQP3ksMk2C9swgBOtM/L/AbkY4l8xAAekcDKo8tOELORQQDxoKOiLTZBbTpSBYw0Q+mcXuH6HgYh+sSRIM1suSuft4CkhedjL3dIMSGpjdUbBLMDB+egWNB+qJ1KC0BBgoWVqdnB7DNUv5WFmVaQwKlXjOkLVOfdLd1icXYOvUFM5JyXYIbPOGYC3PLwDRTgGxzuFGFsAFD4FyywM+SEC2QZAVfg7nsDPcOL73QZnmPp1voRDzXYqRxOsU8oB+CIj2QNpkPh2BNBzk6phiuV4KZtYcD6xlS7zMeJFBRnbAHVKKBrMX1SBVex+oIP/GET0fM3b6huh8N2SNE5paL/IkT6m0hNzjZ1LET6UyDeiLyZ6jOHo2X1S1BFBLyX36aHaYxBnEaCoAp+pZY+bHAAwOAgHERwr93H8AZV/u9IICQqxdW4BrotLm0WILuOzNpsyOcfSFWDOSviArxkKQU2OHtYUHs5ndAoRakLUgM8x1C4np/wHaLlmeFh5kJ4Ye4R9QUOgDVnn9UeBvI9mYhCmg8ixZNhPWPBw7TJbJICYLBcwsjLVdjyGSmyLtjTAxGqnuA8pIHzOGbZ3Dw+kwogmbTVH4+THEHFlDlsfHEoFE8yjsihAklGndjGb7BqV9smdauzaYS1FA6YHZq5drT1UVRJkAG4oQ9pLmrgQKjEfvEg9mxOAHaG4Sz4ZvzmIFYax/4lCBhGuTo+0WCkQvDJPM0O9uIxmdLraBUpmnuqWQiDs7+7LfLFCC1hIvts/D3IP1OAIF0fzJvVEEXw1TOeWGA3D3IMMULENV+BEYkouIYULDmSq/gYPxF4aAgAwDH8++QagECOCS9+CABsQWKl+68wuexjPIOLIb0aUiymdfNoeRAVcPGjEDx9gg/kaAttmsd4DkGBwcux3KINkxODh2UF5cG9LcBWuh0ZBaOO0ZBOgK0FhIGhw5kwg3ARxPegGxTGqjEtcYrsoGp+8CtAyyNTLItsiCOG9nPAek2UMG5FxePIXkyhEBOEI5oPQjMKefWDNdXbs7HEC4ERQOilo/lgEWuHQaAZDKbQ8g/VFAemkVAof8fHIKNls2iPTmqilaE6th2CFYaICuYbB3xTcOy7cdZzmhFJZvjSvHDXMkXlixTt3CepJZDpVeHRRpZHjL7ok+ZzkOH3z86Nxe//zz9Wf+H1ViM3Du57s7YIYMEoolMfc0z6tQYz9aY3ar6T8JeBiviwB/efXdl1ffJ2n8O/by7z58YL/85ikMouw7/tsfvnz58mqX58l3jvP4+HhUXhY9ImtB0p2cT+VHR5guEOmX3/Aze1YsT4vyl/6a/Vx4R6XcowznRXLEDp4jMobdsh8jL3HpO8Xu7vFo63msZLIOO1B/+vIl+uab79lJGw1Fyr5JUE57Dvvq6H/R/3XoR987vWr9iSmV0yMVp4j//PYf9a+un9jhXUb+9B9UQykO4we8Jj9uUJDhpuwtu/5df/ciNPmWLc05xifSh36kIUL/rVF9jf63LuF0yd86Jr2cZibKvkJVfnlFo9m2OHKOssBj+zzYOfJSrzrRJP98QQNr4VXlD6Dq/3z17SsvTny8/skPcPbqu1f/QZRPdIdTorW2njnaJ5TvmML4U89k6o/pP9k/WLoHruTqD0wq+cvWJw5TXZr9lkeokl+cfMsAczK9kJ/Ozs4vz6/OXp8wS2iToZzHuZAptHZJiowq8oG0UPccW43J+cXlycnV2bEGkyqbDfPWmYNkQmTx+vjk9PXF+dmVgU4emHEZsLhaXpwsz19fXWqrg3zAH8gzUcby9PL16enFyYU2jzItjMvSwhhROb04vzg+Pj8/16ayTTGO3CR+LAPjtJmcXL6+PD+5ujjRp1KnbAn86J6tu8x0c3l5tby6ODvTJhT4211esjHpxWevCYnzk2NFHpVWAowTs6Y5vTx/fXl6daHKgG0c0Gih6t3KOPP8IEB5bGQrJxfnS2K0l6fGfMjAYtZ/Tl5fnb6+unp9qTqwNUsw9y35jZb00/PT4xMypqnKjh7CU5c7Sma1Pz+/Oj5fnr5Wb4dyYskeYxMCF2cnp2cnx5eq81s9udEsukaWuHx9SibZs6WGBvg5p8E0crJcXpxdnV6cqgsvx+uqGxiwOL08viT/X5VC57xXW/jlOekBl6/PNbwKfjUaQAOL0yVRwfHyUsOt4PlTdjS/7Tremg2KpCteXJ0od4Z1iNbpg5EGLl8fXyzPXmvYYYr8oNyhT3LfbCw6W14tl6fEHtRZrGKUrllYfxoHZn7uxfHVMfl/GiSujpcn52dEI2s/dvvLES0yZ69fn50dk5WIcfdI8ZZmmzQgsyTz9XL5+vJS1elFSULd7gSnNDugCYWzi7OL88vXS1UzbXVSk/55fnJ+TIaqK7Ne0hm3/cg3msDP6ex1QjqNOqUyhzTE8HlyeXFKLJXMIhpzaJHlZIlcktm1IxYVG+fk9PyKsLjQWHxwDkQVxQZ5OVmBRFtzRsS3Oj0l3uWlRudtmQsyMtkzsihbLnXGj4ZCuiEs8p0JDzKKLc+WF8oz2yoPWlnOvY2mk7mkE/xr5dltIN3Nlt6J3uD5+vL4inQQDT9ng8tQTrOx++JyeXl+rLP+Y6tPGnpvOEgsj89Ozi60lqD8DNTIyz0/Pl6enp9pDJSVdPPFxoKMUmS1eXn5WnUOrTIBspMbF2VGvZGseY/pmH3xWnqwlNnQ1pk4zsiEeryUn9ArHrXLVy2C6UR6pEni4uz05EJhBdQiQXybwPfKTN70NqDeKH15cr4kq7Ar6a5RMfh8d+2+rc5FM03X//z0ZHl1IT9xtqpfn8m6RAcoiDXduuXxycXZpfzs0GJQpiDeoWgd6HoOx6fLJZko5TdzR8Xr2N/J6fL04pIMTDr6r3fWSwZ6FnBCBgJigifym0BTDLR0cH52fkEG6HMdC6gZMF/aZ3fFPE1V0D1sMj4TY5SeqEeZlAdADR8dxZA11wnpnMsLo6YR0tEbqC6XV6+PL4+lN9QbOn5vFnf5nzT92jNC5Pz4XHnEFBDJUxRl7MaMCSUyt5+ckUmVuBkabdVdFZqMJ4vlMXFzrk6udDqTz7LoQjTQxfHF+etzheVYn0STjMSYzOLs4vjs4vzkUsNaWusgH2PMt3iS3bOb4YCemWv6HOekha5OteYcIaPyTJNNR5qUTl9fHV+eXZ4ptxg9HSNrJD/AR8FaS/TxMVmdvL6QXxpUovkxAI1bqB9oW/sZWa56O013gCxSTy/PLs6Ue/EMF71GOTujbuHyXHpnpccGbTobGZrD/tXrU9JCZ+e6OuEH7kAtRD3W8zOymNRVyjgdvTn6+OT89eWVcr/hbPiaDkw7ZJI+ZWOv8npmnpCWEV++fk33TZV9BjrcN/vGOrtOJ6/PT4/PXg99ubGYohD5kV4lry7OL04vTwSj55gssnTUEkXm9svjq2P5StHA8xAfhTpjM5mj6I732RUL1Lq9+fDp/c3bm7vf3Nu7X9/dfHQ/ff746frz3c317avvXhE+rQgyBv4PGg6WoQe8vs1j7/6v9B2WFVkm0F9/R/+HfkD/3ysanfwxiaofv6v+EW7D5clxslouf/dR9ctvq3+UoWO36/v3cbkKH5QfCYyu/vzP8n+oDt6VWwlfF+9/kmYhjfCv12/v3NuPv35+y1ri+z8/hcE3vFF/+PLq5Oj4y6tvcOTF9AoC+cWvdz8trr68+vOfvkRV4OE3vK893xJy+IfajmjIH43428QBmUG+iVBI/1i6Zfxvg782sXf87/QL4iC0/y6O1fumSH3yAf34O+fXjNTASdHvVShh5uxwGKAFf/5t46fhI0qxU51Jz8cCOhVhp2Rc82+xkwt6MWIqJ8KRYtcLgYHl1QMfYzQd9mhKaRp9llM/7BCMTh94jMlkKKYpm0nwGUbi0D8gRmLwGUai+EwgPiLoGTaT8YhAtCZlzPETR5FCMROjCzmNhCoaMRnBnNGJMGQTSCNC7DE+YxFaplzGcIU8BFGKRvIFeEK5IxGKRrJHMIXyheFpZs6FCHGs7UeD00wbfxR4jMl4gJoplXFkIZdBlJqR/AHaWP3H4tNMaz+GO8ZjLELNlMcY7hiPuSA1Uz5z+JI9ZhCvBtxxBvhCXqOha0ZsRlHHdCMKtTbVhwhTKF8YPGckXYgo0X+nIucAu/OUmCnfZxAfAuH8DEDH9DQWzmeqmDHc0bWpOKDPeFUqhp1hMR3SB8RpWoiEXSM7doyUetcwyg+OyhB7tN26VyqMW6gLJ5QqjDE0EixElJNdRxjCEqhhx/QuCDI01b0Acky6MMTQVL4QdNT7GEQYGvsbA8Q52bDzxxTw1DwvDDGEmO6FwCWTzmZsbyuZnwaN7TQ3AYlje82DOEW9yshEQEpuLosjF81ojcKOWZ0octGYgghUSGAYuGgme4g3PsMIQhaNKy5EHaMwiFk0Fj9AlBMNYXUDxNnt+FasorF0Eag0AYjqi0BnCQwjFeF4DLHl6AjCFYFJCSToUYPXl0DCCLWpMEZTUlPYsnSEwYzgxIRS5PbBIceeUeRRbYnDG831I8adpDEe4AhDZxx/fjE4Gupo3GQSMpTo9eIe7fDrCRG7z90oSDMiPbCpXaeJ2EczDvP4OrSM22gef4qWKB4ShI8IePKgdCokEoTRpAQ9alCNNylhitp0rCQIt2kRmuSgFDctQkiuH0VpxqOPNr9+H4tjG4sc46+XdFbznS/esd2M1t8HX9z6RGAcvUerrPPZ4MMPP39YnvQ+GaKxKIjBV/35KSceZJG4LOxvor155j4y1eQO8zeDIKMbJShyEofpCq/OlxevX19tztDZmvyy0ohTVtxp1c5hFXBKhs6AgjNDmaWAPSjjHoM+4d4+ykgD3ZQPKc61UCcgc2K4sFHfm+p95z6HmSYiyik37w7EtyN/hiurm4u8MDmkcmsCcmwnV5N7INtda05yXRUb76BkKwKSbFMUHpguZyDLNz+0ejkDKb5eWByULZcvxZUOIfz5+YPxbXGQ4xwiUibzUj/J4ynvcg/UB1TkapCUbzUejjcnIMUWH9iesYI9b7LUO6w11wyk+G4TLz3s2FYzkOTrH1a9FQFptm4Sp/nBKdcspHjvNoe24pqBJN+nQ9N9kmfrLw/b47h8Oa5ofWCynIAcWw95u0MtiPoUpBgHZAY/KN+KgDTbpxU6rM/TJqHEmsY/+NGBl3UiMnK1wCxg6bDkGw5ynA8+jwRK80hw6HkkUJlHgoft+rBsOQEptmF22ImEy5fimkye/tjnmqTy4wL51s38bYSCg3Nu85DinubeYY2iIiDFNsMh8oNV/HRQyh0WcrwPvH7OFNbP2XM2HWa9B7o1BSnGh5+V1ebk4vCTcqE2K7MIrMMSrhhI8aU3Hg9KtyKgcsh3GL59ClKnfIJfDn41/EU/Rwk9LZ86KfYjb3BC3A06Qnkc+pbmr5Ife421I8mZZLTyLfWTLh0uZpqLF6+x6wUoy/wNj/veB7cRsZNc/QORHZU7rVkcrX0UkbWjJYevq9CutDlmhaWDvT6nQnB8N+ifGZG8lw7RSJrrE7TUfrpBJWmWUeJPXzWA5FTLmmOVWtrF6zNKBVt1gytoOb29uQ8+jaQZRoGf7cWwa0FzGkJ5sZfRqJHkTE3/w1CzdHY2L/uwlWAnXgf6LnlH0nwvoP+T46dwH7z68qR6xR54NZJmGJGFGxWyF04tWTJ9dR+UKkGTPWPOMV7FcR7ENE55yjnupqmY6lndL+3ooeHcy5/hDKWrDRso8acq17lMvYe6+c5A4oTxda96Z3mcou0BWLYlT7Bt3w9tNZmVOaVHd1z0jHZxmsYp9eH3QnMgUbbt98auI1HaMhOUZrY80EnDbAQr96L9k21JnmGb4gzTG4u2wuoENLsi1cZY9jD9ZCz+hiyQd4JYfFErRShw2ffWBzrK22GiHLH0wWbWDGHbjTVNeGhXwr23fh3ofbj9MG9LM3JxCLm5ayKdRLfTxjlcWQg8+U7e3JmsDgYq4zVzOvJq915IYtJI2RbVoBjNzmWnyaf4TzGZqcRISTdbvohmaHFRqsihyWuYz4uwHC2jeSH2MmYqI4P1zImG1Ei1x/aqtuWEJNT6xoFZSxD2D81YQGDWqObduU5SQPOps5tjkPibdrtgR1zVBYUcZlu3W6rytvZPf4rJXJ/qlqTWcnD1VyR09W+1mynpX2aI6BZdP5M/+d7hbahFRLEKnYyYh6/IgI76tFrmsJu7Ki4a62b62z61U1ZC2ONkrotXRdZ4c2jWnIIs44PZ44jGp6xRshYue/lpv8PEbG3apPTu8ovc11l/YSOb2deWRrhzOEtLoaXte4vSNVFhTv2mA7PmFPR61QvgLySkN9K9pJrotwkRSNPkL19UdTqszEbwF1WtFindOE2tPYnh8muPahGP3+KeN03c6u0zBfITF88kln+HZl+RUKN+sLFPWIeZwU9r24Un8gbbd6kSg9tf83eZVy5kX/5ce/Pv2fX8w9GtxEuyTch4muxwantbaJJzl4SdbeVOa1rtfr2q8v7Xl69iTYejO5ZrYoSttbwCUmRHsgrMW/7hKHdJKDNnaewtz+eS/Bsq6v23BOsH8cnUnx5G4U16unza2koTOKIHzlmsiwEtgOmVbdqmRZLLzbDiMbEbWthJZClUuhdmfuZGpH7ug5/mhe3OMqgkszdEI02FTKT3cbqGNBBziFqN8VDvPxLelH/4Olfb3xKVlmgxu2Hpc7WY5gPR2/kLAOZudIVkWVFcSq2fltTZtq1eO2Cv/h2GZyNbmi19ndDPQ/fqQIw78qVZ00fBD0S4Ei3PNTsg2UyV7cMBVfsg1i3U4qnuzXanjKp21ezYkjp7xnsQir4Kx/5YcxBdNrKlNdoaaA6j2y4BjfH5MJrWY11YyzQxS7gYSTExbhl7JyuQrTibHEi1Y+k7ZmaTw7B9UNYtsfXD9TKg/evBS5CGvjdBWPBL8FadggFv5h10pVtwC1oCrLb8sHpsS6AjfdJO6adJGuexF1vevRin2pYPZ6o7FBjaKE18vA/jJEyZVXJ50/eSUIYXKSZQHg6nX86CJygSPsl27aNtRAYj28FOPZ5dsZMMcbjC6SLZPe+VYEfqJD/2Imx2NP76Dzy5RuQksxRF69jyxkmPWSNykll5mluW3Su/vmCoiaV/Pc4fDG0DHZRf7WVEp7VnjgcT6TSS9eII+Vbh6VwNW518n7Ws6Dld+Xp1Hc5Rg2pav5LVqx/979gNLInzA5RZ3mTo0eXypufM+qbqAmPibOyXoVD6NN8iz/fkONYka5GTzKw9RjHW2cRPT3Rn8E14unRD30str7J63HpyZ7yM5dPTgt3CX6zxxvKhdJ+oQPgM28Bf8cdn98y0K3iS5QEGxllO9cFXtmDmsVeCIuGTbANsKT/5CEEub5IT60/7XDpX5PqCJVjuIb5ESHIkmETEcf/sZnlVKIt93PnoMRTIllnj7JNiI3KaWTWc75dcW+r0/ueh1h+zzNgibdGJ8V1k7EbAYr/j9RwR1VocmrzMnniDwoJEtmmZ1WsXx/f7HUkluIBuRbKk3+bxKj3Afe1uMGHVubqAg52D9b6gPdlHWdmhkYjTtpvYReQlQEcpBGkvtsAZ14coXK6lExSKvo9Gr2pVHUhwuQANHeIwTp/hrn108ew2eVdW1fuHDObG/G6JKjcBy0mXPpQ51Q9ejzFWs6f9PZh9HGkK6zPBRLF9UpyjdIstnyxJNUqbimJL2B03pJpAxh/qVTiJ4+BwNjTDRqMuL6QSWr1g+zIGpoaIHSfrgN2Gu1jGvYar6ODUW0RU5w0y0uGILT8IrTy1HYshrI0cKQCnKIkfy1u2uj7R3FNBYqvpiN3LKNuRWIZ48JTw42zmExJ0S+Lw7KVUglPROwrNAowTN4jjRLUp9139hulABToNuId7HUp1GL/sMVeTfeTgVKvKeOZWwZDcLZqkPlkGWMokLlmbCU57zfDRtfE9aoRPswP5cw6CyKAPTFvhbsGB1S0gADDpU28J+f15WmcLhKDsIUc3l1R75W2ps/5p9TH3qA7DtCV83h3tF7JqdV3GYulSOk7S2MNZ5iLP/jaSSM1D+ZYWabX17aVdqtVNW6qyzR+EqaEB7Z3zUD7IUEt8CPbqsPlo22DZ7l2VnOa9rLbkudZsvmZOH3s4/GCEOxQUmROLICUPzL0hoch+VRyefM1BkfuBrbzLYXbG7ha0PXL1aIvE25n5WqPAvqpYv63ZlqzQHnsm2hcNMIEUaxygfspsjcmjxLHbpUoZVXdqJM51/vJLF6Xhw0XobslYfbtvmj3hdjoQ14hVm+SV4x2nkahuinNvQ739cHtzO/Uy1NvZ18r42/YzV/9YQiW7ry+zujiUsMM5OUOx0+H47PMHwsWa8zpKsiV1OlDtD3Z6gJ8srV0EBLsiJTRIO+B+tcclTnNj7/2Gp6f749aWOB1cnBRs9LKUPkLArSMRfmBZp/7D9Ju6bP8OInErgWEX861Mi2U9HCalSSTaEmkrgWglwoo9dGpVJ1lsiQRwemg2T/PmtZfgluuACqgaVpzOFqpN7WVXbVeFt6Y4lypEz8bhOn2Y7Ngh6n+h3vQliJ2WZzVwSgnl/fZamJ0bxks387cRCoZJR4W1rr62Yyyd2jNrqek5Q/k6d1a5OvfDvhEGMGYJYx9Uuzq290J2WXseL8Bu+I28ja1T+ehhcElcteoUgibcpxkPbGqAymH17wucdLLYx1afmhCxm3pGos9ub6zkdOUhb2fVkruaqsXNM7O2RSfiJXNTtfrQ5tvWI9zGHrQWMbSXkF5ETir9PPsyXv2OvT0OGY28eW4J2u6xE1TS5nnlKfL2SKwWN8+MPltu1XvpMqvFWUhm3Z5gqlxbgR/d2zrZaNWPeqbT4ufnk31xlGLDB/i96a0WpzJy741dR6TkyL03clLP0LRH0r0xa+RJjtx7Y1ZJkx0f90asFqc+Ppa5QySGSJvZTVp1KsU4PZE2NjkCfzW1yTGcOHopX2we3TN2PPHd2PF8n44XFnsgw6VMU8F7oYJlqNjbXuxwGdlY7JEJ1iHaA5lKzDSZMNuH8XIp01SS1Npg2aLCpUxTSfdiuqmM6doLyepyEYZd9clkz1mOLSWv7NBpBE0Tshh81OEzEmDUp2PxcYkOnZGHJPp07OW66LARpbOQeXtKbmq15GtQ/mXytEbOzNS68y3lVeiwqcTMz/N74FJKmaXCYi+QtY2dLqOWsAliNMJrP3rqSprWFcqI7H3oqRE0TWhVWNvB6fQw0cZN344sZq/r2tBItrrB1IvCTRHtYwRqSZqmZDVoqUNpNFBp2Gypte3JTqOlohMwARnbZz89UuMnP6IFkX1OWGYcshek0OEyEp4gWhDZJ1OJmV8Q2efCpcxS2d/E2hU2v1Kzz4hLmV+p7WF8lulTbAm1By65KAhSsFLzNtY26lp0GkFSS8e9EOKCZAjtcbIYCpRZ29rnNXYFQri2tU9n5Fkr4drWPhtR9kLlbeYUrXtBkoMP/MDtb0UPvkqCYju4Cj74akN1mPvzT10EbvWpnT0CVmunqppTsncqmU5P/nzWjPprK62uwFYlXm7YzBTC9THGV8fLk/MziWYSFXNJ5bx7Fz/Q94T2qBARF0eS43wTC1GS3bOb4cBa4AhARbsU9YwjQQvCly+7xCGk3bOr6i14wadTmk2Q6xXpg60U7GJtdivn1NydcWoCaxHrsVdZCtKIcpmofQ5wvaqO0ZnpDMJih2uwMToStaAN6rLc+y+iFiI6krV4ORWQ5z7oXy/IqKS4qdbvBZmbFDdTT6KbLYkm81DyKIbF9zlWTvFwJHgqGccQ4SDuhEZNIcwk99XsIvcPZAi574iYKDU1KXKYthWRB2i9dEPGj3yn1IK8zGFakQt3xhiptGZV7CAtOlkRgJZFUe6u/f41ummF8DKHaVku3BljpNKyVbGDtOxkRbRb1ovxk5/lOPKGqRKGSz7+gvPICq4bLtGsNothMLtA0y0mi7LgPg2mJd2pqul06uCICQ7tR6Zme7QgvZoJPdnJmpWn1C+/ggOeonqOL93H1/Ry6arHNXgonfF7mz0m0tsZ2ilpR1QkGn73opom33Ulci65ECsabiydEk3Sq8RKUSyDa1ycpjHNQb7e015aj7GYhVQFLD7BOM1Z7g3G6usNRnmRHoZpW/Yk2X33J6nOdIieJN2NXkAf0u1Ah+k9Cl3nYP1mptPITGCj7nDvu1Ug9q0FIwj5dD9uQOUnEYFOT/jMiuhwPKdIyq121I8xmxL7ra/gEK9L5f9v7tx6I8etPP5VFvsuyy5Pd0+CwQKLbJD37LwLtERXqa2SNLrYrgb2uy91LVIieQ5liSQSZMYVSef3552H5CEmlzyAR5Djsu7j+tKCgWqmpOoftqu5NxmuADDZ5IxWj4rLl18f5B3dvPUP21XamwxXAJh8cUarR0VetJMm9INkb9ismZ63q3eyGsowMHnkGBtk3j47vqTrK5JkWyrwOy8+8TsvOutRXdI4fT1qr+FyWMYsDvss5t0Wn6ESR+qzWRUOT1RgJeztYCFtU5wpuAGPcfeEFc0oqcG2fHp8OOceXc/X09Nj+XI6/UxJH/CUWEjnUVq4YA8xcECzMn3iWiRtRqN560/3+mTHC40Q4NamCHHdMVkfhVyvF13bdYMj96C1n4y7+/HIOsqgw8lcKDeN8/e1ny4w0VNUDjnNk7SicRP81dL28MRdW9PsiM66XQMBe+1oKsEQBig48B4xCVaguDBMjMPMnmMdSJYcjSUYgoCK65XkdpDupgCoV/aB4EJJctRRBBFsYQ6As8eFRipJ/EZtptjKIAR4OehWgwXWRXaVwRLmcE/qhKNwnopAbdakNppQwRCQQsOzOW0+iurQSdmUUiuDujP2MTnoKPKdabKhwWjL0k7fJxhC9X1HnmmXdX7yo+3GB5aYzLS80IpkulNLQAQPNtga7pU6qIbfIccwDLw5bWSI/sHjjkDLwRBnoccnDzteKweDz9neH4xo3l5t092NmkWYAYK38flyyM4oTtB48wBvD1cOLIJJImMZNxw1jRltc9M1G3XWHzQvcpov96pLLr99oUmT1VHN2t6iWu9txwUyXKVvOn+YxDGb4lfkyIsshzQJeeHhWls4wIc6OnB35f3V4pqnZUXrww4IfkXXAg4hq6yJp3klI9u4xiAJU7xuGkaUo+6HQybAdJ/vHQbe+dulVFzdyuagBtcUXuRBFkKPBCyBNi7iS657UJc6t9VuugT4DgPkGqGsET3qlgojbI4EYI7jqyfMHAnEzGYfvkBzKFCdpuNBq6v7XrIv2kseiP9CnjxJdR4Fpj59++4PNwcDk397OvlDzsEA5Gdv2pQzuk2h8c+SvFFPuBc0RqMd9/QrHrPRjg8ClkC4HHgnWXuUj3lLDtx5dtvaMn5Zchen7GHMHGNI6qbKDwofrEy4uw5hiDuRIAvt8IUDT7Ob8i+AzGSMPl2fhNyREFLYoGYMiRAltKR5QvM4pbbnrxJBGjBc25I2dXTc/Tt4KSsYXK6MmfnSplmT5tEbvfmRKQouI1HsJX4o7ZGsNZmxMNacp++Dr8kzYSKZkTBCSeKTnInHSES3NuiRhhHHSEJ/K2x3iscnIQKUkZy4X+nwScudCCekqUhel6SiXWwC70Rp6TYLvBx2R9vX5V0Ul7mhxXnT0mnYNovzpQVUo5lL87DP1ePhJBYl+av1ruuSUhkJ8jC7lGRbcsqj1l8FtkWWN82iHGvfxTVxu1VN4KNEad7QKicZq/pt3dAkqpuiOuzOYkySdV4t9meoIwMPFnVp7q80iA6U1wcXcK9jxtgaVVfuAHKqS4n0BZ+Uc0EaMDOv4bExIDbmkS6oCuwccK5kzbNlKuqRjDvRV3xQHglak33Fa+iZMLOtAStHkEdqpFvoVRLG4Vh3QVqXqR60aAooIzkHHn3ZJkUZXwieH/uVNUoyc2H+ZJKUar8V5Gnf0T7Lx9H9e1YndLPVaV1M5IAX9e7PH3gvjjm8wSU53EsO3AQ6DQbOAf419t2qKG/eyOB4jHRY92jrRKBd2PxLDt1qOi0bfGrL1y8kT7LU8mYXSBMPZaTIzQKeTo7Z6h3/Jmkayui8KnALJtyoYnr5StLspfh0KkYFdOTxAa4ntjmcuksft+CJHEZlMaGvaW55OKjh53mMdNgf1OpU4KcdqwGRLxJUlwLqWwInDrqlDCWRUW7MHvJ+q5Yv2bKiMsuf6XV/8ocnMpsJXGj8Nsbw8iZ7llBmijzTslGFfYewVgXeGyybEfkig+Mxn6H5ImKC+coMzRctG5zyysmQT5p4qI0zNF/kCESbZ2i+qFkwbZuhedPtc0A7Hhnq1mVpHBU1AePto2Z43PfsOsw5w9ySM4eCWjcfn49eSEWvtPFKhAi1WxjSxQ/LP8UycCFV8sEwuIKwvJWhYI9o476A4Xj6T+x/bGtiD/vvTx4d0Zg+Gs/wLDPCRhYHRAzSAS6NmoVAgkN0CVZ2LfQLVWMzvbKHSfndb2vVscmuXDUOhCQ5jCkNVdQOMWOioj/l8FEAAZEkq2/LFIuLfU9xzUk1LkrKuadCO1o3v/xF1snIpB1SCvTSxtIxWgelfa2h7ZxJ6kZ2uG5OV6xebg3tPVJpk9LlBR9CgnZPBvOTu5aZ7qvheDWeCBSurWoagMXDe+Y9HtE87tzYySvW1BcRSMRnD8uGpaHVD1AvuHz8qMyAQb/aNjeXlDXzJan0cerGQ/z6FrkPHl/d9E0X085Sodu5kV73XZXrE47TE47Q4cgVrkxrY7I3l4qSZO+VUBBSMKsFnAbSdvl4qyi8/XePoBmVe0VE0Jq4YOSsavFIlp7z3bdggnyCWS3gSx5d232HyyDd3aYejdT0+2/HLF/AjGvjeliW4O2VDa129oXBoKJhDKSjFF0bx8Bei333y2M5R7tIxKgiH64wJ9sGqCwX3kmd7nyJmSGzAKGHz4puha1f1XFVelUIWvBxabCP9HTEUh88apID6KEHkR8VKS3Diob1kPuf20IMQVUHs9SD5KizZBtTZt8E2UkNUzPo0ZsDZnBazka6sixA9Vf3OErHtW0tKo3L+waTvQMUgrAy6whcF53X0rIec1i6j8ois5z9S8tazOxaNAd4o3R8s0kt2DXpjo/YJbvbhNDsd42cUT1cWR9xpBnmE+yCiPsfJkcRKg+PrwCr/a+9QhFWituvJIhNRWLLTaBgVu+WIUk3YLaLxxnVw7056poXhiFI+80MZxSA+6jSxnLp44yiXIKuMllmXgtcdfduZE10oVlJd74yCcSVGAdh3STs0rIWs66zaBgJO0lVqXkQOM5S665i0S6M2M/R65ZVxNpROdBigAKuab1vBAEU72QVxGMvPj07muHI7SORdz8xYYCrOhchoH5+e/yboxK7Mg32X5PHbqiY1te2VuYRDkPLy8HKQ9hKX6YDvtkwMsNd5bQB4v7R7UxKpDKGnaoCOSiaUvNY4DGuTFduumFDlBdRvwF835CWJhq0RFhZdVY0R4UxNxEj4UBLGIPlOUO/28ci09hyq7e2jUV9fU32jSphwjoZx8LuHgLDBFYV8kIFu3c4XBNWRdBbFWp3LZEz1sk4FpZNR52xjrbRTZfDVssoTXePjmg8tjAZnO9/6HXD2MIE2PrmJIlxE1gnSxlqho1jOGf4Eo6vD0M9ESMSmQyIXAkYbRsNiFyxTsaNBkSuYFUnzFWwbpxrCgA0tO11+rVtkwGnK1RFPFbtgNMV62QcPeAkeVJcHWwoUzOYjJWdISP2dIgDVlektVFxWLoynFGvOUxdKs7QVfcfIM95Zm1CoZgD8sNXq1QhR5wKlCXDiD3/TVBhskiVWqrBK77RMgRY50+OAEfLCECLmyZklMrtE9KDN24477YhyP4sgSPI2TYEyZ0acIS6IICA2zTrAge87ntTNh5XsA/AxuwfWeaqYeKtQ6Cxo4I6GobwLoT99/ToiJGzjgIti2zfGG2GqJN9EPagWIUGuEaBCV02U+gGKrY2u1wh4u766IIhkSY4PewbeAuPKdgHYbuyEZHkZ1s3UUbPJL5NWwIc0WuBtsh5rdiE1dphApQgHslIUjd36V8ePuSDJAmSsaS67Vy6tPFMlgTLSFpdW3LU6KWMGEbo3Y41H9gnDhy861qOrtJcJBNXvCIChNxUUVK9uBrHcNYB0H7PtRvK2TSI6MjTk6A8PcnF0VxlNAzg0djWstiSb7IMA7pqhWbTIOJPewsfa8ifqoWP9VFfV4jSlVr5EV9HiOjQ4BaPWq4gNXf18ohnV+6RM8o9cnlLXt3wTZYhQDYzddg9C+YB1OzqqPMbDQN449NOvTZrBgja0pa5FSjm4uBr8s0V3TcMHr0W1S16aV9fu3DrWVY48i4pQAD8nE1O6yJ+o7Z2hyyxFwAQbsqmdG+WAmWtUO/GAcwidVSjRsMAXkkddZejYQjP0qn/FZ304P8KLq6fTq4AJ9sISEet5mwagfjDHeIPDOIU69QNJWcdCerQH7RCwCJ3FhwjTwgQcpHdnp4fXdUrzjoE2t8vRCMSx7R21K2vGSDoKSCuG1zOOgBapawXS56+O1rsFsxDqK78SIodk8uj/xfiaMfVZBkGPH377gxxtA1DPjtDfMYBfnM1YrrbhiBdrbTh1tb6iCUkvjjq3QXzGFQuuIpD4gUFBrwo3lKXiTzbR8A2aTdtdgd7tw/A3i81cMIqmIdQ06s7ztk2APnOYPa+ZBBNyRkHMN1tAUAu+vdRdeLKUcvPW8eBOqrrvHUUaO1ouYi3vjpBIjuQsTprweYB0DkLF5vbGFaI38M2HkYf9r+Qtjs5mpOXjFr2Sd6hVSxGQsYdMgktaZ7QPD7kFiwzPQqkLbK6S3RLklZRcyu9EbaG2iKtvuVFfrO9bKcUxeN4epahYzc7xzAI7d5p0ny4TrW2P/jm0lyOYiajrNiAqEnfPZAhopjJOPAq8i1SjK8gn0NZdNvCneHfzWNx7S/AC7jYMxNCcAqb4Uok1CsKQ/i8oZ9N7UP7o0faJsuTigxjbZPnQXOrR8LJYi9Wlt3enILZOg7WxXEFjhZ/LGEMOOFkRZQDNlgUnUMijKXKGbNAgIROfzmshbN1JGxTtbG7gcHdPA7X7QTLcCb1TrLWIe3dPMqdgrkBfO1yqdK8ef3iZe9pwYoBJddo+NqxwQoHG/017xK7m+KAmKk7tDiM6rqb3iV2UerEvQi28kOZBRIeGykoTzTMneln2U3p4jO3uqHX95R+QNFj/vef//rXP/8NOTWHp6J///nnsVk1aAvv+OFgORQBgMZxePjYTARIEU04J8kl6QQALShmUdU00/bhNE/owcfPldgKkt16oPUPi7qVZimTEnUChXqzfo490Yf41FfWUckQ4WpZsZfHG/oReVCSbmk1GN7cPx94iSGnIxRRQxWNNjzX8FjwV0vbA1bSsehLCgzykbHQDLl14dAwYwr6zl6NevX6Atc/aD2zOLxwQQBqhSr08s/lcLNoirjIuFRZPPErPb9Qqq35DasQ+jr/WrF/fhTV8rFF6g+2xoue4gvJc7rvavQkNxwshT16ONOFKgBtdRleCvqXAvrZdKtf+y4u4rAlBBjuocBlRdf/BHXTvgRnmu867kHiK0G0KtiYvMjPwRBIMyBlahVdan3LnGe4ywgavspmfusOllSsqWwkX1sl3rkMmMLPW9B0q9DB/GYwhoW2kJaT9H4COQOEGLL1GG4tr/cweCZMw4SRVKf5m5cZBoGB4moaM/bmFs2vRzHDfGFma3fKIKotspxnl54JlpRFY185HrRsazZA80qgASEol7D6er0WPtU3LRIoaOxyp1IwDrArnwQaIcIFtmirmAZV0TZeNZswFyjtJc277bz+dQkIsM3iPOgXUGgGLWlTvNHczyZUgwYL7EwE3dYtv7IP5tomzX22AVSgrCutF32lB9kFQG0Q5TyjtEigoJw23RQ06DYA9Htd/KpeaLwvCXWeh0g4g25gvBKElKlPZRXPB0qNL91eXq8aFy2SsSDnmaUBws4MEvqesnHp0Jd4VN/QeKDQ8f4Sn/JNiwQKqshHMHYpfnUFCLCN4pznGIgFCmuqtm6CmHbf90kZzLVVmgclEkMGjyjbrEmD8nLzKdsAKHi+XRRNVhCvujM90xZJHhRBiMpgxJi0zS2Kb3Hm1ewGz/dVqR7kpgkh3LCQOMjIza/+AIAyyEOSJBXrMvvTfH4WWJgQHkZnWbcc7FMOapE2CPKg2gFQkk1+8nPvkj0t7YvsjkHcMthEG31Q8hb137KdRr1R1SKYgs/YV+2hTi2YiUN3+kTQfSJwqQ1k2l7M01K2n0S+K4s9O/djUb9XZ9+TGIgEYQihngbp3hheL65XkifROH9zrkaCg85ZXDwP2dEK/Y6gucQldN9jAkD6dOctABQoCL6wH8WxDg0JLGPYLuRYgRwC2kU/bTKZ22MH8EoI+AiAtu90IQWHBAibdo64LFEqBgBdtSfEpRQsE1Tc+I0gLvVoQQAR/ON1UJIm3vdyIQS+AgFKfckgy0XaqzHgmwsW65AudcA04D0StfPWVsUAnVW+DKGK3IHLCaDoTsJuJpeFR08CyZjcqi4zQAmB696ExU0PujYtDyBpWtJ0mR0qBqgNmpdSXOaBmgI9fuVc0n6MXjVAUJ7MXmineaKkQOcJt4vGjzzRAEFx9bk1cJe5ouNAVfVp1OK+uqtI0MVLWMHwo4BpkaA41Px6vcvs0YJAhez1zHoit0NaOQJ2Vjcvrjie2kk40DVjsUDgtErIWaBB4rjm5XRgqGDYGpVC5qnuoi/pj4tPbkkr6odoULxJ7bHk7sEud4MDIm/CiAvLECnnZrcLujAMcd7d6HYxRbv64+hSF61FXDWAnnt0X9ok5UxiAhUsPawWUTUEW8itN1sgh1bF6Ky3yMtZ1Jdazldts+QuzCJbBNu5LrGsL62sV7deMnmbJuk4D5vcJaiAgGN3AWuQsn0EGScJOlvGloFuiOMm6yfLWtLeB2+Rb7aHTD+S9UW3YcMEsu8V3dh0XBFgy+jsPHRTUAXzWubRGWURk7OoJ+O9TDb5lnYRlOXF5qBUsKmlW61xWqSU2gbCZE0ryzZrjWBUy8c71iwSLs3iAr3dl8Psj+GX1rXEnEvcIunCKrJdvy9AOGnXRfNa5nE90SImZ1HfYk4LUzZbTN6mPq7ouCxuEY43qR+vvbzRYIjzHtD8nOY2K4zcuHHwxrPVEbGGQF9G+zUImwV0NgjOfu02PpxFfb3hN8TYrDxLu9i5BbfS52ZqsQDAzimz9z4er5tpJWccOxO6sZ/S4eRAWnfX0O59WS96UqQiQSrpvxvVJY3TV/YZlhZOZMgxkBp+Jd3lNva96EoAbCnK3qKcnosmtT2L0TJgS860u390afeforEbl4YO5ot6oobWTfRO46ao3PiQ0WQG9WVYomwrdyVPSmGgwIfao+AwUHFQqH8TAboQ//IzfMM9DNZXVRTWzYN+n0v99oY6SwPri/Nn9rTULlCa+lesrs/fSXXL85iMmFo2zOUE6zXUd9JmTVC3ZVlUjYUjwhOAclF3BbRpiVr8yvHZaSjLZOWdBm/0FtSsf+q2hrbluSIJdZVTSpgvynGUQ0qYTTs63NeezfXF4nI0WFXw69LTm+OMOYhJfLFaNdQEhu66PhyCTXINgin60/fntycfBIggpjJOv3siQwQxlZHUJHinVfp680GLhGaLoDo9577IEVi+kDvelDclk/lYdLCpH4mSsu563Tp4bbPMgvTxj5VZ/aZB4enjO0UpJGLeIjgCsrZmPWfEHrGzDD39AWGgN0GOh2bbMiFWdkROf+gQvpAD1so2iGFekwevEjTFn6yKPqjjdQ/2Qg0A0n0kvBeROGaDOOf8HAdWxhRLylakr7WAFQESneZJWbAhvzv0NYG+V7d1JGYERR6EGU7N2NrWM7ItjJrsfu3Oi7HRhw3f5yrHVwCIlLWzkU9IV8w+PlUTwsR1Hicnyasm2dIPrW5kVp9Z6nY/RuPuwsjSyLq/AhdiwGwUJdZmOD3y2ioSslslt9TJC5h3uybL8lbKv1ACTFtDocTYx12ZRxYDy+dDF4XB6Izo/Jp1zo0rOtLwvSbbaKwNppYBbAEa7Gba03PEXo+jcb3EmRw1CFLJa0XO3arw0BW6kqGgMC+ZZUaabtc+tnAOA62Mnkl8s6B7wlsN9e4EmKV5LrDBK4mprZHETA9gbHDLZbK7uRe7Ry036MxkKDNrru5K1nGBJe2/nZNizEoo2DPX0/mhWKsJ3aau8LVKi7QF4SP19OPd7taoGrKfFlfFt2mWLBJguUsllpWN5QyjoZ/B9fkZvpx+XLLsj3sGL6ROVQHIxQylGSU1q8AsfTI6DrWkL66PaqwtPpAD87JP0pClWnhPlnDNEEolhUpeaWBzZZR3ZPh3wRT9bGie0GVxODY/JqOOs2TCQOYKT31IxuRx2W1sGo/9HJ0jojX7WSHaV+fBmvPIWiHZnrdzus+GnJX+cwmW+IHusFLOaG0Wc86cm3LOAegL+oL0yJLemWtJ1Vgq75M5Z6V+AgDLPk96ZAZ0ed2PAS3lwGzPWRbMBGAeCKxHZkJ1Ok27Sy1lA2fRWUZwDGBWLHgP6xOE3QQWOweZXTe9hIxE312o2I+sMbxNS1VGiLzlqs7wEGClWRIfVms6V5DFysKZc1NHOAB91ViQHlkjZG7CndP+bslZ+e8cj1CxH/n2SOz93F2kXM7pFg+8Vuyf0sxYufHbc5rD7q7BX1BWaa4aVMiXpLrXov61Q93mLEHCWXM4iAo55mWAtjuSNGNhMUd6UTeKkThYzYqixB/arbPj/MoRzS8kj2kSje5fi/k9cIYaENR9JRFrZKP5q1F87EqPToIMBB0YvL7VDb1GFjZnSCVoQHC5UA/BCzJKS2cZsGDYmPb2Ggkg7eVNgyTt2Ve5gteHxLGvQs+yRci0JdUTLTwOak1s1TKzhk02QBMPLrz2fp/jA4yKwju0cGl7t3j69Hr6/qhf4x3vnw1YL5BkTGVwrmi3hbL4GAI70Yo0NDm8aelJQzyMdjtC/zEb++3u5EuTwPnLKiVZMO9QGLyNdkCVtvVRLztfQx/W8fA9HXfUtVFgf/lQeJg1NnM5viUWiyxn1SjvLWHKzGLq0HTliiVMiVVUns8NRndMz3LOr2ybEVsIjKdhRkbJW703BYlz3kNIQQxzoA9a6oUaBYqZntEt44UgFYuZojlcgHM9chIzNcJtYs4VqWnMVP06+LyvRsIvxJlfVcPhipkzv60uuAJHxxpcZ9O8tOusoAgExuXbfWVdQZjvkv1kw2r9lPBzGHgfveW+k9mZCkV72lzpHj288MxQ27YhS70Ny4n5r1q2z0wcgbNngonvcNG9I6IzGa7sAj6k/nmat1fbjJNNDF/vcQm6D6RNevDhWQmqxPw2V5YyaN1qmmmpl+iFruI6bRcYF203Elkf41q1z8NzhzdRvcDJWsibBcrd/KiVLFgT7nmEYPGD8Kf4h3B+hKQ6/xvT8pPGTR1e6DUjU+f8mlbXD9IdBhzfDtcfZqq3f3d8WfLZipLkSh+uydZPcx8YPy8c6Z7s/M9wsptZYblPM+GXl4JUyT+Ka8neeOmaixv7v1+q5LfHxyfy98eH7j///fj0H91Pz4+/J/ef2MslqZrlu9e4fSDV9YG+Vs+nh+v59MT+53p6eixfTqefabeboCmKLL6w5F6+y8YfYxF9qOuH2Wv9MCbDQx+5PC/+ZO//o3t/gGFfrJM33beSt4dhc1+dsn//++nx9O3h+8PpIXr69vTb7z++P/4tOD3/eP72ePrtx4+5JfgjoXVcpWWXlP/1R8j/NZRDIbHZb39M+cX+/T//7/8Bc3ZJ1g===END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA