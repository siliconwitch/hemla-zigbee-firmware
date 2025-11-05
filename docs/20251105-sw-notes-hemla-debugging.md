# Raj/Hemla - Notes from onsite debugging session

**Onsite at:** 11:30
**Lunch:** 
**End:** 

**Participants:**
- Raj
- Benji

## Afternoon:

- Setting up a sniffer using [nRF52840DK](https://www.nordicsemi.com/Products/Development-hardware/nRF52840-DK)

    - Following [these instructions](https://www.zigbee2mqtt.io/advanced/zigbee/04_sniff_zigbee_traffic.html#adding-the-network-key).
    
    - Opened the `zigbee2mqtt` docker terminal and found the network key inside `/app/data/coordinator_backup.json`. For the gateway `3ee0cab`, this was `fc:98:6a:9d:6a:d8:1c:db:93:e9:44:85:8c:fa:da:2d`. Added this key to Wireshark.

    - Downloaded sniffer firmware from [here](https://github.com/NordicSemiconductor/nRF-Sniffer-for-802.15.4) and copied `nrf802154_sniffer/nrf802154_sniffer.py` → `~/.local/lib/wireshark/extcap/nrf802154_sniffer.py`

    - Refreshed Wireshark but interface doesn't show up. Python dependency issues. Fixed by pointing shebang in the python to a virtual environment and providing the `pyserial` module there.

        ```sh
        cd ~/.local/lib/wireshark/extcap/
        python3 -m venv .venv
        source .venv/bin/activate
        pip install pyserial
        ```

        Change the first line in `nrf802154_sniffer.py` to:

        ```python
        #!/usr/bin/env ~/.local/lib/wireshark/extcap/.venv/bin/python3
        ```
    
    - Plugin now loading in Wireshark, but interface still not detected.

    - Tried following [these instructions](https://docs.nordicsemi.com/bundle/ug_sniffer_802154/page/UG/sniffer_802154/configuring_sniffer_802154_script.html) to run the sniffer from a python script. The latest version from git doesn't work (shows threading errors), however the previous version does. The logs describe that the firmware isn't responding to commands.