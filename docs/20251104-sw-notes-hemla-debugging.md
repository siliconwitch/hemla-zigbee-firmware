# Raj/Hemla - Notes from onsite debugging session

**Onsite at:** 09:15
**Lunch:** 
**End:** 

**Participants:**
- Raj

## Morning:

- Create a new repository to store new firmware files and documentation

- Copied the `raj-built-swapped-tx-rx-no-flow-control.gbl` to the gateway `3ee0cab`. Firmware successfully flashed and seems to work. Motion sensor is reporting correctly.

- Created a new project in Simplicity Studio 6 based on the `zigbee_ncp_uart_hw` example. No changes from the default. TX/RX pins seem correctly swapped in this default. Flow control is enabled by default. Builds fine using makefile.

- Tested the built binary on development gateway. Didn't work

- Rebuilt with flow control disabled. Didn't work

- Rebuilt with exactly matched pins to initial version. Didn't work

- Tried with all combinations of UART configuration. Didn't work. [EZSP appnote](https://www.silabs.com/documents/public/application-notes/an706-ezsp-uart-host-interfacing-guide.pdf) suggests that flow control is required.

- Rolled back to SDK v2024.12.1. The included example project didn't build. Required some edits to `main.c`. Once built, the app still didn't seem to work.

- Rolled back to SDK v2024.6.3. This version works.

- Enabled flow control with correct pins.

- Automated GBL creation

- Released v1.0.0 binary and tested on gateway `3ee0cab`. This version works:

    ```sh
    # Start zigbee2mqtt terminal session in balenaCloud

    mv ncp-uart-hw_7.4.4.0.gbl ncp-uart-hw_7.4.4.0.gbl.old
    wget https://github.com/siliconwitch/hemla-zigbee-firmware/releases/download/v1.0.0/hemla-zigbee-firmware.gbl
    mv hemla-zigbee-firmware.gbl ncp-uart-hw_7.4.4.0.gbl

    # Restart container
    ```

    ```
    2025-11-04 15:53:34.720 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.GECKO_BOOTLOADER at 115200 baud
    2025-11-04 15:53:36.723 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 460800 baud
    2025-11-04 15:53:41.030 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 115200 baud
    2025-11-04 15:53:45.336 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.CPC at 230400 baud
    2025-11-04 15:53:49.643 rp-hemla universal_silabs_flasher.flasher INFO Probing ApplicationType.EZSP at 115200 baud
    2025-11-04 15:53:50.778 rp-hemla universal_silabs_flasher.flasher INFO Detected ApplicationType.EZSP, version '8.0.3.0 build 581' (8.0.3.0.581) at 115200 baudrate (bootloader baudrate None)
    2025-11-04 15:53:50.778 rp-hemla universal_silabs_flasher.flash INFO Dumping EmberZNet Config
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
    CONFIG_CTUNE_VALUE=65535
    CONFIG_ASSUME_TC_CONCENTRATOR_TYPE=1
    CONFIG_GP_PROXY_TABLE_SIZE=5
    EZSP_CONFIG_GP_SINK_TABLE_SIZE=0
    ```