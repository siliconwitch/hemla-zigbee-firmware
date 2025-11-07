# Raj/Hemla - Notes from onsite debugging session

**Onsite at:** 09:30<br>

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