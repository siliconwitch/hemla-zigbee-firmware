# Raj/Hemla - Notes from onsite debugging session

**Onsite at Jakob's apartment:** 09:30<br>
**Lunch:** 11:00 - 11:45<br>
**Afternoon from SW office:** 11:45 - 14:30

**Participants:**
- Raj
- Benji

## Morning

- Running sniffer onsite at Jakob's apartment: 
    
    - Channel: `20`
    - Network key: `41:db:ba:59:a1:be:c5:1b:68:cb:e1:0d:c0:33:a7:5c`

- Connected to local WiFi and tried to SSH into `8f5be88.local` but device wasn't found. Found IP address instead `192.168.0.63` and that worked.

- zigbee2mqtt management console shows that two devices are offline:

    - 0xA82A - Temperature sensors
    - 0x9235 - Emergency button

- Sniffer had been running for about 1 hour and these devices had never checked in. Clicked the pairing button on the temperature sensor, and the device came back.

- Clicking the emergency button (main function button) did not bring the device back, however clicking the pairing button did.

- Took down zigbee2mqtt container (~packet number 4975 in the sniffer logs). Clicked emergency button and blew into temperature sensor. Both devices can be seen trying to reach the network.

- Brought network back up. Clicked button and blew into sensor. Both devices checked in just fine.

## Afternoon

- Set up sniffer at SW lab. Running continuously on dedicated PC to stay on all weekend.

- Powered on `3ee0cab` gateway and connected an emergency button and temperature sensor. Now three devices are attached including the previously attached motion sensor.

- Discovered that the Zigbee firmware on the `3ee0cab` gateway isn't downgrading back to the original:

    ```
    zigbee2mqtt  2025-11-07 13:30:07.088 3ee0cab universal_silabs_flasher.flash INFO Extracted GBL metadata: NabuCasaMetadata(metadata_version=1, sdk_version='4.4.4', ezsp_version='7.4.4.0', ot_rcp_version=None, cpc_version=None, fw_type=<FirmwareImageType.ZIGBEE_NCP: 'zigbee_ncp'>, fw_variant=None, baudrate=115200)
    zigbee2mqtt  2025-11-07 13:30:07.090 3ee0cab universal_silabs_flasher.flasher INFO Probing ApplicationType.GECKO_BOOTLOADER at 115200 baud
    zigbee2mqtt  2025-11-07 13:30:09.094 3ee0cab universal_silabs_flasher.flasher INFO Probing ApplicationType.EZSP at 115200 baud
    zigbee2mqtt  2025-11-07 13:30:10.230 3ee0cab universal_silabs_flasher.flasher INFO Detected ApplicationType.EZSP, version '8.0.3.0 build 581' (8.0.3.0.581) at 115200 baudrate (bootloader baudrate None)
    zigbee2mqtt  2025-11-07 13:30:10.230 3ee0cab universal_silabs_flasher.flash INFO Firmware version '7.4.4.0' does not upgrade current version '8.0.3.0 build 581' (8.0.3.0.581)
    ```

- The `universal-silabs-flasher` allows for a `--allow-downgrades` flag to allow rollbacks. Unfortunately the `zigbee2mqtt` application holds the serial port which prevent the flasher form being run while the container is running normally. The container can be started without the app initialization using the following steps:

    ```
    balena ps
    CONTAINER ID   IMAGE                                                            COMMAND                  CREATED          STATUS                             PORTS                      NAMES
    0eaec1b4095b   c27bac8e5c9b                                                     "/bin/prometheus --c…"   29 seconds ago   Up 27 seconds                                                 prometheus_12932896_3745238_94f7163d8e01181756eac858bca26205
    56e14a9fe9c1   2d9f7b292d56                                                     "/sbin/tini -- go2rt…"   29 seconds ago   Up 27 seconds                                                 go2rtc_12932895_3745238_94f7163d8e01181756eac858bca26205
    9652021c25b0   7c8e1e68aaa0                                                     "/app/broker"            29 seconds ago   Up 27 seconds                                                 broker_12932892_3745238_94f7163d8e01181756eac858bca26205
    abd76701407a   7288abd7ac26                                                     "/app/lm-config-watc…"   29 seconds ago   Up 27 seconds                                                 vpn-server_12932898_3745238_94f7163d8e01181756eac858bca26205
    6ddeeaa94feb   42ceb0c3e2f0                                                     "/usr/bin/observabil…"   29 seconds ago   Up 27 seconds                                                 vector_12932900_3745238_94f7163d8e01181756eac858bca26205
    f735b6e7a5a6   dbf498317c6a                                                     "./WatchYourLAN"         29 seconds ago   Up 27 seconds                                                 watchyourlan_12932902_3745238_94f7163d8e01181756eac858bca26205
    9de59fd3f9ea   2ede57316adb                                                     "/usr/local/bin/star…"   29 seconds ago   Up 27 seconds (health: starting)                              nvr_12932901_3745238_94f7163d8e01181756eac858bca26205
    d8b3a4d7ee2b   6667f1777456                                                     "./coredns -conf Cor…"   29 seconds ago   Up 27 seconds                                                 coredns_12932897_3745238_94f7163d8e01181756eac858bca26205
    6b7859a853ca   b6001d2975a2                                                     "./core"                 29 seconds ago   Up 27 seconds                                                 core_12932899_3745238_94f7163d8e01181756eac858bca26205
    eb838e9a2268   b31480bd8005                                                     "docker-entrypoint.s…"   29 seconds ago   Up 27 seconds                      127.0.0.1:6379->6379/tcp   redis_12932893_3745238_94f7163d8e01181756eac858bca26205
    ebd7449e33e9   96db5922466a                                                     "/usr/local/bin/star…"   29 seconds ago   Up 28 seconds                                                 zigbee2mqtt_12932894_3745238_94f7163d8e01181756eac858bca26205
    c1523e5ca336   registry2.balena-cloud.com/v2/2034733fa4f91a97f33b39f92d26f3cb   "/usr/src/app/entry.…"   3 years ago      Up 2 days (healthy)                                           balena_supervisor

    balena kill ebd7449e33e9

    balena run -it --device /dev/ttyAMA3:/dev/ttyAMA3 --entrypoint /bin/sh 96db5922466a

    # From inside the container
    silabs-universal-flasher --device /dev/ttyAMA3 flash --firmware firmware/ncp-uart-hw_7.4.4.0.gbl --allow-downgrades
    ```

- The gateway is now running the correct Zigbee firmware. Sniffing re-started.