# Raj/Hemla - Notes from onsite debugging session

**Onsite at:** 10:00
**Lunch:** 12:30 - 13:00
**End:** 17:45

**Participants:**
- Axel
- Raj
- Benji

## Morning:

**Problem:** The Hemla gateways run BalenaOS with a `zigbee2mqtt` docker container that manages various Zigbee devices. This includes sleepy end devices such as motion sensors, as well as routers such as alarm sirens.

A recent update (TODO clarify what the update was) caused a restart of the `zigbee2mqtt` container which caused some sleepy end devices to stop responding. A total of 3/15 *production* sites were affected.

Clicking the button of the affected end device seemed to allow it to reconnect.

The issue has not yet been reproducible.

Determine the root cause of the issue as well as a potential fix.

### Initial setup:

- Connected to development gateway over ssh `ssh benflo@192.168.1.198` password: `961228`

- Used `universal-silabs-flasher` to re-flash *assumed* production firmware:

    ```sh
    source .benjamin-zigbee/bin/activate
    universal-silabs-flasher --device /dev/ttyAMA3 flash --firmware funkar/output1_funkar.gbl
    ```

- Tried to use `screen` command to access Zigbee module debug terminal, but it didn't show anything:

    ```sh
    screen /dev/ttyAMA3 115200
    ```

- Axel set up a [user account](https://dashboard.balena-cloud.com) for Raj `raj@siliconwitchery.com` on Balena cloud.

- Raj entered SSH key for his own laptop and successfully accessed gateway `3ee0cab` over SSH:

    ```sh
    ssh -p 22222 raj1@3ee0cab.local
    ```

- Raj successfully accessed `z2m` management console on `http://localhost:8090/management/z2m/`:

    ```sh
    ssh -p 22222 -N -L 8090:localhost:8090 g_benjamin_flodin@3ee0cab.local
    ```

    ```
    PANID: 65438
    EPANID: 250, 185, 213, 153, 106, 112, 143, 169
    ```

- Paired a motion sensor to the gateway `3ee0cab`.

- Unsuccessfully tried to change the motion sensor's detection interval to >30s.

- Successfully configured motion sensor to blink on detections.

### Debugging:

**Plan:** Determine the root cause by constructing a series of tests to help track down the problem.

Tests attempted:

1. While an end device is sleeping, restart the `zigbee2mqtt` container and see if the end device reconnects again after the restart:

    - Waited for the motion sensor to sleep by hiding it from seeing any movement.

    - Once the device dashboard showed *"last seen ~1min agi"*, Restarted the zigbee2mqtt docker container.

    - Waved at the motion sensor. It successfully showed up in the dashboard.

1. While the `zigbee2mqtt` container is stopped, wake-up the sleepy device, start the container again and then see if the end device reconnects:

    - Waited for the motion sensor to sleep by hiding it from seeing any movement.
    
    - Once the device dashboard showed *"last seen ~1min agi"*, Stopped the zigbee2mqtt docker container.

    - Waved at the motion sensor such that it woke up and tried to send a message

    - Restarted the `zigbee2mqtt` docker container.

    - Waved at the motion sensor again. It successfully showed up in the dashboard.

1. Take the sleepy device out of Zigbee range, restart the `zigbee2mqtt` container and see if the end device reconnects again after the restart:

    - Stopped the `zigbee2mqtt` docker container.

    - Took sensor far away from the gateway.

    - Returned ~30mins later and restarted the container. Device reconnected successfully.

## Afternoon:

No issue found with basic testing.

**Plan:** Find a way to monitor debug logs from the Zigbee module [MGM210PB22JIA2](https://www.silabs.com/documents/public/data-sheets/mgm210p-datasheet.pdf).

- Followed instructions in `Hemla-ncp-uart-hw_ Configuring and building it in Simplicity Studio.pdf` to setup Simplicity Studio, configure project and build. The build worked fine with 0 warnings and 0 errors.

- Used the Simplicity commander CLI tool to convert the newly built binary to `.gbl` and compared it with the original firmware:

    ```sh
    ./Commander-cli.app/Contents/MacOS/commander-cli gbl3 create ~/Desktop/raj-built.gbl --device EFR32MG21 --app ~/Desktop/raj-built.s37
    ```

    Using the `.hex` file produced the same output, as did not including the --device flag.


    The `diff` command showed that both files are quite different:

    ```sh
    diff -y <(xxd ~/Desktop/raj-built.gbl) <(xxd ~/Desktop/original.gbl)
    ```
    
    However the size is very similar. 254,228 bytes (`raj-built`) vs 254,912 (`original`) bytes.


- Used the Simplicity commander CLI tool to dump the app from the original `.gbl` file and compared it with the newly built firmware:

    ```sh
    ./Commander-cli.app/Contents/MacOS/commander-cli gbl3 parse ~/Desktop/original.gbl --app ~/Desktop/original.bin
    ```

    The `diff` command showed that both files are quite different:

    ```sh
    diff -y <(xxd ~/Desktop/raj-built.bin) <(xxd ~/Desktop/original.bin)
    ```

    Again the sizes are very similar. 254,152 bytes (`raj-built`) vs 254,708 bytes (`original`).


- Used Simplicity Commander to dump metadata from both the `.gbl` files:

    ```sh
    ./Commander-cli.app/Contents/MacOS/commander-cli gbl3 parse ~/Desktop/original.gbl --metadata ~/Desktop/original-metadata.bin
    ./Commander-cli.app/Contents/MacOS/commander-cli gbl3 parse ~/Desktop/raj-built.gbl --metadata ~/Desktop/raj-built-metadata.bin
    ```

    The original firmware included metadata, while the newly built did not.

- Tested the application firmware on the development gateway:

    First ensuring that the original firmware was flashed and that it works:

    ```
    cd ZIGBEE/
    source .benjamin-zigbee/bin/activate
    universal-silabs-flasher --device /dev/ttyAMA3 flash --firmware fw_works/output1_funkar.gbl
    universal-silabs-flasher --device /dev/ttyAMA3 probe
    ```

    outputs:

    ```
    2025-11-03 15:01:24.994 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.GECKO_BOOTLOADER at 115200 baud
    2025-11-03 15:01:26.997 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 460800 baud
    2025-11-03 15:01:31.304 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 115200 baud
    2025-11-03 15:01:35.610 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 230400 baud
    2025-11-03 15:01:39.917 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.EZSP at 115200 baud
    2025-11-03 15:01:41.074 rp-hemla universal_silabs_flasher.flasher INFO Detected ApplicationType.EZSP, version '7.4.4.0 build 0' (7.4.4.0.0) at 115200 baudrate (bootloader baudrate None)
    2025-11-03 15:01:41.074 rp-hemla universal_silabs_flasher.flash INFO Dumping EmberZNet Config
    CONFIG_PACKET_BUFFER_COUNT=255
    CONFIG_NEIGHBOR_TABLE_SIZE=16
    CONFIG_APS_UNICAST_MESSAGE_COUNT=32
    CONFIG_BINDING_TABLE_SIZE=32
    CONFIG_ADDRESS_TABLE_SIZE=8
    CONFIG_MULTICAST_TABLE_SIZE=8
    CONFIG_ROUTE_TABLE_SIZE=16
    CONFIG_DISCOVERY_TABLE_SIZE=8
    CONFIG_STACK_PROFILE=0
    CONFIG_SECURITY_LEVEL=5
    CONFIG_MAX_HOPS=30
    CONFIG_MAX_END_DEVICE_CHILDREN=32
    CONFIG_INDIRECT_TRANSMISSION_TIMEOUT=3000
    CONFIG_END_DEVICE_POLL_TIMEOUT=8
    CONFIG_TX_POWER_MODE=0
    CONFIG_DISABLE_RELAY=0
    CONFIG_TRUST_CENTER_ADDRESS_CACHE_SIZE=0
    CONFIG_SOURCE_ROUTE_TABLE_SIZE=200
    CONFIG_FRAGMENT_WINDOW_SIZE=1
    CONFIG_FRAGMENT_DELAY_MS=0
    CONFIG_KEY_TABLE_SIZE=12
    CONFIG_APS_ACK_TIMEOUT=1600
    CONFIG_ACTIVE_SCAN_DURATION=3
    CONFIG_PAN_ID_CONFLICT_REPORT_THRESHOLD=2
    CONFIG_REQUEST_KEY_TIMEOUT=0
    CONFIG_APPLICATION_ZDO_FLAGS=0
    CONFIG_BROADCAST_TABLE_SIZE=64
    CONFIG_MAC_FILTER_TABLE_SIZE=15
    CONFIG_SUPPORTED_NETWORKS=1
    CONFIG_SEND_MULTICASTS_TO_SLEEPY_ADDRESS=0
    CONFIG_ZLL_GROUP_ADDRESSES=0
    CONFIG_ZLL_RSSI_THRESHOLD=216
    CONFIG_MTORR_FLOW_CONTROL=1
    CONFIG_RETRY_QUEUE_SIZE=16
    CONFIG_NEW_BROADCAST_ENTRY_THRESHOLD=58
    CONFIG_TRANSIENT_KEY_TIMEOUT_S=300
    CONFIG_BROADCAST_MIN_ACKS_NEEDED=255
    CONFIG_TC_REJOINS_USING_WELL_KNOWN_KEY_TIMEOUT_S=300
    CONFIG_CTUNE_VALUE=139
    CONFIG_ASSUME_TC_CONCENTRATOR_TYPE=1
    CONFIG_GP_PROXY_TABLE_SIZE=5
    EZSP_CONFIG_GP_SINK_TABLE_SIZE=0
    ```

    Used `scp` to copy new firmware over:

    ```sh
    scp ~/Desktop/raj-built.gbl benflo@rp-hemla:~/ZIGBEE/ 
    ```

    Flashed and probed new firmware:

    ```sh
    universal-silabs-flasher --device /dev/ttyAMA3 flash --firmware raj-built.gbl
    universal-silabs-flasher --device /dev/ttyAMA3 probe
    ```

    Probe returned an error:

    ```
    2025-11-03 15:10:08.703 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.GECKO_BOOTLOADER at 115200 baud
    2025-11-03 15:10:10.706 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 460800 baud
    2025-11-03 15:10:15.013 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 115200 baud
    2025-11-03 15:10:19.319 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 230400 baud
    2025-11-03 15:10:23.626 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.EZSP at 115200 baud
    2025-11-03 15:10:28.633 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.EZSP at 460800 baud
    2025-11-03 15:10:33.640 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.SPINEL at 460800 baud
    2025-11-03 15:10:37.947 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.ROUTER at 115200 baud
    Error: Failed to probe running application type
    ```

- Rebuilt application with swapped TX/RX pins, re-flashed, and re-probed (had to use `reset_chip.py` before flashing):

    ```sh
    ./Commander-cli.app/Contents/MacOS/commander-cli gbl3 create ~/Desktop/raj-built-swapped-tx-rx.gbl --device EFR32MG21 --app ~/Desktop/raj-built-swapped-tx-rx.s37
    scp ~/Desktop/raj-built-swapped-tx-rx.gbl benflo@rp-hemla:~/ZIGBEE/
    sudo python reset_chip.py
    universal-silabs-flasher --device /dev/ttyAMA3 flash --firmware raj-built-swapped-tx-rx.gbl
    universal-silabs-flasher --device /dev/ttyAMA3 probe
    ```

    Failed to probe again.

- Build with CLI using [`NabuCasa/silabs-firmware-builder`](https://github.com/NabuCasa/silabs-firmware-builder), specific [SDK version](https://github.com/SiliconLabs/simplicity_sdk/tree/v2024.6.1-0) and a manifest file:

    Install prerequisites:

    - [slc-cli](https://www.silabs.com/software-and-tools/simplicity-studio/configurator-command-line-interface?tab=downloads)
    - [Java](https://formulae.brew.sh/formula/openjdk)

    Make sure to correctly link Java. If using MacOS on M series macs:

    ```fish
    brew install java
    sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
    fish_add_path /opt/homebrew/opt/openjdk/bin
    set JAVA_HOME $(/usr/libexec/java_home -a x86_64)
    ```

    Download and sign the SDK

    ```sh
    cd ~/SimplicityStudio/SDKs/
    git clone https://github.com/SiliconLabs/simplicity_sdk.git simplicity_sdk_v2024.6.1
    cd simplicity_sdk_v2024.6.1/
    git checkout v2024.6.1-0

    cd <slc-cli location>
    ./slc  signature trust --sdk ~/SimplicityStudio/SDKs/simplicity_sdk_v2024.6.1/
    ```

    Create manifest file

    ```sh
    echo '
    name: Hemla Zigbee
    device: MGM210PB22JIA
    base_project: src/ncp-uart-hw
    filename: "{manifest_name}_{ezsp_version}"
    sdk: "simplicity_sdk:2024.6.1"
    toolchain: "12.2.1.20221205"

    gbl:
        fw_type: ncp-uart-hw
        dynamic: ["ezsp_version"]
        baudrate: 115200
        #fw_variant: standard

    configuration:
        EMBER_CHILD_TABLE_SIZE: 32

    c_defines:
        EMBER_APS_UNICAST_MESSAGE_COUNT: 32
        EMBER_BINDING_TABLE_SIZE: 32
        EMBER_BROADCAST_TABLE_SIZE: 64
        EMBER_KEY_TABLE_SIZE: 12
        EMBER_MAX_END_DEVICE_CHILDREN: 32
        EMBER_PACKET_BUFFER_COUNT: 255
        EMBER_SOURCE_ROUTE_TABLE_SIZE: 200
        
        SL_IOSTREAM_USART_VCOM_BAUDRATE: 115200
        SL_IOSTREAM_USART_VCOM_FLOW_CONTROL_TYPE: usartHwFlowControlNone
        SL_IOSTREAM_USART_VCOM_PERIPHERAL: USART0
        SL_IOSTREAM_USART_VCOM_PERIPHERAL_NO: 0
        
        SL_IOSTREAM_USART_VCOM_TX_PORT: gpioPortA
        SL_IOSTREAM_USART_VCOM_TX_PIN: 5
        
        SL_IOSTREAM_USART_VCOM_RX_PORT: gpioPortA
        SL_IOSTREAM_USART_VCOM_RX_PIN: 6' > ~/Desktop/manifest.yaml
    ```

    Clone firmware builder, install dependencies and build 

    ```sh
    git clone https://github.com/NabuCasa/silabs-firmware-builder.git
    git checkout v2024.8.20 

    python3 -m venv .python 
    source .python/bin/activate.fish
    pip install -r requirements.txt

    python tools/build_project.py \
        --sdk ~/SimplicityStudio/SDKs/simplicity_sdk_v2024.6.1 \
        --toolchain '/Applications/Simplicity Studio.app/Contents/Eclipse/developer/toolchains/gnu_arm/12.2.rel1_2023.7' \
        --manifest ~/Desktop/manifest.yaml \
        --build-dir build \
        --output-dir output \
        --output gbl
    ```

    This didn't work.

- Rebuilt application in Simplicity Studio as before with TX/RX pins and no flow control.

    ```sh
    ./Commander-cli.app/Contents/MacOS/commander-cli gbl3 create ~/Desktop/raj-built-swapped-tx-rx-no-flow-control.gbl --device EFR32MG21 --app ~/Desktop/raj-built-swapped-tx-rx-no-flow-control.s37
    scp ~/Desktop/raj-built-swapped-tx-rx-no-flow-control.gbl benflo@rp-hemla:~/ZIGBEE/
    sudo python reset_chip.py
    universal-silabs-flasher --device /dev/ttyAMA3 flash --firmware raj-built-swapped-tx-rx-no-flow-control.gbl
    universal-silabs-flasher --device /dev/ttyAMA3 probe
    ```

    outputs:

    ```
    2025-11-03 17:09:50.959 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.GECKO_BOOTLOADER at 115200 baud
    2025-11-03 17:09:52.962 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 460800 baud
    2025-11-03 17:09:57.269 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 115200 baud
    2025-11-03 17:10:01.576 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 230400 baud
    2025-11-03 17:10:05.883 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.EZSP at 115200 baud
    2025-11-03 17:10:07.022 rp-hemla universal_silabs_flasher.flasher INFO Detected ApplicationType.EZSP, version '8.0.1.0 build 270' (8.0.1.0.270) at 115200 baudrate (bootloader baudrate None)
    2025-11-03 17:10:07.022 rp-hemla universal_silabs_flasher.flash INFO Dumping EmberZNet Config
    CONFIG_PACKET_BUFFER_COUNT=8192
    CONFIG_NEIGHBOR_TABLE_SIZE=16
    CONFIG_APS_UNICAST_MESSAGE_COUNT=10
    CONFIG_BINDING_TABLE_SIZE=32
    CONFIG_ADDRESS_TABLE_SIZE=8
    CONFIG_MULTICAST_TABLE_SIZE=8
    CONFIG_ROUTE_TABLE_SIZE=16
    CONFIG_DISCOVERY_TABLE_SIZE=8
    CONFIG_BROADCAST_ALARM_DATA_SIZE=0
    CONFIG_UNICAST_ALARM_DATA_SIZE=0
    CONFIG_STACK_PROFILE=0
    CONFIG_SECURITY_LEVEL=5
    CONFIG_MAX_HOPS=30
    CONFIG_MAX_END_DEVICE_CHILDREN=32
    CONFIG_INDIRECT_TRANSMISSION_TIMEOUT=3000
    CONFIG_END_DEVICE_POLL_TIMEOUT=8
    CONFIG_MOBILE_NODE_POLL_TIMEOUT=0
    CONFIG_RESERVED_MOBILE_CHILD_ENTRIES=0
    CONFIG_TX_POWER_MODE=0
    CONFIG_DISABLE_RELAY=0
    CONFIG_TRUST_CENTER_ADDRESS_CACHE_SIZE=0
    CONFIG_SOURCE_ROUTE_TABLE_SIZE=7
    CONFIG_END_DEVICE_POLL_TIMEOUT_SHIFT=0
    CONFIG_FRAGMENT_WINDOW_SIZE=1
    CONFIG_FRAGMENT_DELAY_MS=0
    CONFIG_KEY_TABLE_SIZE=12
    CONFIG_APS_ACK_TIMEOUT=1600
    CONFIG_ACTIVE_SCAN_DURATION=3
    CONFIG_END_DEVICE_BIND_TIMEOUT=0
    CONFIG_PAN_ID_CONFLICT_REPORT_THRESHOLD=2
    CONFIG_REQUEST_KEY_TIMEOUT=0
    CONFIG_CERTIFICATE_TABLE_SIZE=0
    CONFIG_APPLICATION_ZDO_FLAGS=0
    CONFIG_BROADCAST_TABLE_SIZE=15
    CONFIG_MAC_FILTER_TABLE_SIZE=15
    CONFIG_SUPPORTED_NETWORKS=1
    CONFIG_SEND_MULTICASTS_TO_SLEEPY_ADDRESS=0
    CONFIG_ZLL_GROUP_ADDRESSES=0
    CONFIG_ZLL_RSSI_THRESHOLD=216
    CONFIG_RF4CE_PAIRING_TABLE_SIZE=0
    CONFIG_RF4CE_PENDING_OUTGOING_PACKET_TABLE_SIZE=0
    CONFIG_MTORR_FLOW_CONTROL=1
    CONFIG_RETRY_QUEUE_SIZE=16
    CONFIG_NEW_BROADCAST_ENTRY_THRESHOLD=9
    CONFIG_TRANSIENT_KEY_TIMEOUT_S=300
    CONFIG_BROADCAST_MIN_ACKS_NEEDED=255
    CONFIG_TC_REJOINS_USING_WELL_KNOWN_KEY_TIMEOUT_S=300
    CONFIG_CTUNE_VALUE=60
    CONFIG_ASSUME_TC_CONCENTRATOR_TYPE=1
    CONFIG_GP_PROXY_TABLE_SIZE=5
    EZSP_CONFIG_GP_SINK_TABLE_SIZE=0
    ```

    Output is different to the original firmware. Seems the EZSP version has changed from 7.4.4.0.0 to 8.0.1.0.270.

- Attempt to roll EZSP back to 7.4.4.0.0. Noticed that the wrong SDK version had been chosen in the Simplicity Studio project (perhaps auto update as after switching back, the install manager wants to do an update). 2024.6.2 instead of 2024.6.1.0 Corrected this and rebuilt, however release notes for 2024.6.1.0 show that the EZSP version will still be 8.0.1.0.

    EZSP version is indeed still the same.

    ```
    2025-11-03 17:33:16.910 rp-hemla universal_silabs_flasher.flasher INFO Detected ApplicationType.EZSP, version '8.0.1.0 build 270' (8.0.1.0.270) at 115200 baudrate (bootloader baudrate None)
    ```

    Why does Simplicity Studio specifically want me to update to 2024.6.2? Changelog shows:

    ```
    Simplicity SDK 2025.6.2

    Bluetooth SDK 10.1.1
    - Bluetooth
    - Targeted quality improvements and bug fixes.
    - Multiprotocol
    - Targeted quality improvements and bug fixes.

    Bluetooth Location Services 10.0.2
    - Selected bug fixes and improvements.

    Bluetooth Mesh SDK 9.0.2
    - Underlying platform changes only.

    Platform 5.2.2
    - SiXG301 device family support.
    - MCU
    - New Clock Manager PCLK divider auto-configuration option.
    - CPC
    - Added option in cpcd to disable Multicast; applications attempting to open a Multicast endpoint will now fail as expected.
    - Added support in cpcd for higher speed option on UART.
    - Micrium OS
    - Restricted Micrium OS usage to Series 2 devices.
    - Security 
    - For TrustZone apps, by default, enabled countermeasure option for securing I/O buffers in PSA Crypto APIs.
    - Bug fixes and enhancements. 

    RAIL Library 2.19.2
    - Added support for Concurrent listening feature on the SiXG301 part.
    - Added support for IEEE 802.15.4 High Data Rate (1 Mbps and 2 Mbps custom 802.15.4 SUN PHYs) on the SiXG301 part.

    Silicon Labs OpenThread SDK 2.7.2
    - Thread
    - Targeted quality improvements and bug fixes.
    - Multiprotocol
    - Targeted quality improvements and bug fixes.

    RAIL SDK 2.19.2
    - Underlying platform changes only.

    Connect SDK 4.1.2
    - Underlying platform changes only.

    USB Device Stack 1.5.1
    - No change from previous release.

    Wi-SUN SDK 2.8.0
    - Added an event logging system that forwards network events to the application. It can be used for troubleshooting or passive scanning.

    Z-Wave and Z-Wave Long Range 800 SDK 7.24.2 GA is self-certified according to the 2024B-1 Z-Wave Alliance Cert Program
    - Targeted quality improvements and bug fixes.

    Zigbee EmberZNet SDK 8.2 Revision 2
    - Zigbee
    - Targeted quality improvements and bug fixes.
    - Multiprotocol
    - Targeted quality improvements and bug fixes.
    ```

    Bug fixes mentioned in Zigbee EmberZNet. Could lead to some clues.

## Closing thoughts

The build instructions from the original developer seems to work, however the TX and RX pins needed to be swapped, and the flow control needed to be disabled. (This has been verified only using the SiLabs flasher --probe command. Will try it properly tomorrow by setting up a real network)

The EZSP version from this build doesn't seem to match the original firmware. Suggesting that the original firmware is on a much older SDK version than that suggested in the guide.

**Next steps/ideas:** 

1. Try to build an identical binary by rolling back to the same EZSP version the original firmware contains. If this can be done, we can attempt to enable debug logging to a different serial port and monitor logs in order to catch the bug.

1. The bug has occoured again at one of the previous locations which we have access to. Set up a sniffer at the location and attempt to get logs from the network. This might be awkward if the network is secured. We'll need to set up a sniffer with the correct keys and then restart the network to try and catch the issue again.

1. Update the current firmware to the latest SDKs. Now that the project builds, it may be worth updating everything to rule out bugs from old SDKs.