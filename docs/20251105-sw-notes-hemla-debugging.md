# Raj/Hemla - Notes from onsite debugging session

**Onsite at:** 11:30<br>
**Lunch:** 12:45 - 13:15<br>
**Moved to lab:** 14:30 - 14:00<br>
**End:** 16:30

**Participants:**
- Raj
- Benji

## Afternoon:

- Setting up a sniffer using [nRF52840DK](https://www.nordicsemi.com/Products/Development-hardware/nRF52840-DK)

    - Following [these instructions](https://www.zigbee2mqtt.io/advanced/zigbee/04_sniff_zigbee_traffic.html#adding-the-network-key).
    
    - Opened the `zigbee2mqtt` docker terminal and found the network key inside `/app/data/coordinator_backup.json`. For the gateway `3ee0cab`, this was `fc:98:6a:9d:6a:d8:1c:db:93:e9:44:85:8c:fa:da:2d`. Added this key to Wireshark.

    - Flashed sniffer firmware from [here](https://github.com/NordicSemiconductor/nRF-Sniffer-for-802.15.4) and copied `nrf802154_sniffer/nrf802154_sniffer.py` → `~/.local/lib/wireshark/extcap/nrf802154_sniffer.py`

        ```sh
        nrfutil device recover
        nrfutil device program --firmware nrf802154_sniffer_nrf52840dk.hex

        mkdir -p ~/.local/lib/wireshark/extcap/
        cp nrf802154_sniffer/nrf802154_sniffer.py ~/.local/lib/wireshark/extcap/
        ```

    - Refreshed Wireshark but interface doesn't show up. Python dependency issues. Fixed by pointing shebang in the python to a virtual environment and providing the `pyserial` module there.

        ```sh
        cd ~/.local/lib/wireshark/extcap/
        python3 -m venv .venv
        source .venv/bin/activate
        pip install pyserial
        ```

        Change the first line in `nrf802154_sniffer.py` to:

        ```python
        #!/usr/bin/env /Users/raj/.local/lib/wireshark/extcap/.venv/bin/python
        ```
    
    - Plugin now loading in Wireshark, but interface still not detected.

    - Tried following [these instructions](https://docs.nordicsemi.com/bundle/ug_sniffer_802154/page/UG/sniffer_802154/configuring_sniffer_802154_script.html) to run the sniffer from a python script. The latest version from git doesn't work (shows threading errors), however the previous version does. The logs describe that the firmware isn't responding to commands.

    - Tried nrf52840 dongle. Didn't work either. No ports show up in `/dev/`. Tried rebuilding the sniffer firmware in latest zephyr and noticed that the default configuration uses USB transport rather than UART. i.e we where using the wrong USB port. Device now shows up in Wireshark.

    > **Important:** After programming, use side USB port of the the nRF52820DK rather than the programming port.

    - Tested sniffer with gateway `3ee0cab` and motion sensor running. Able to capture packets.
        
        ```
        1	0.000000	0xcee0	                    0x0000      ZigBee HA	    83	ZCL: Report Attributes, Seq: 120
        2	0.002206			                                IEEE 802.15.4	31	Ack
        3	13.540853	fe80::50c2:628a:689d:7db3	ff02::1	    MLE	            95	
        4	14.349848	0x0000	                    Broadcast	ZigBee	        73  Link Status
        5	28.263498	0x0000	                    Broadcast	ZigBee	        73  Link Status
        6	29.845319	0xcee0	                    0x0000	    ZigBee HA	    83  ZCL: Report Attributes, Seq: 121
        7	29.847526			                                IEEE 802.15.4	31	Ack
        8	33.636686	0x0000	                    Broadcast	ZigBee	        77	Many-to-One Route Request, Dst: 0xfffc, Src: 0x0000
        9	34.287769	0x0000	                    Broadcast	ZigBee	        77	Many-to-One Route Request, Dst: 0xfffc, Src: 0x0000
        10	34.596914	0x0000	                    Broadcast	ZigBee	        77	Many-to-One Route Request, Dst: 0xfffc, Src: 0x0000
        11	42.216770	0x0000	                    Broadcast	ZigBee	        73	Link Status
        12	59.138451	0x0000	                    Broadcast	ZigBee	        73	Link Status
        ...
        ```