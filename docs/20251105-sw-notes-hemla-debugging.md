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
    
    - Found network key inside `/app/data/coordinator_backup.json` in `zigbee2mqtt` docker container. For the gateway `3ee0cab`, this was `fc:98:6a:9d:6a:d8:1c:db:93:e9:44:85:8c:fa:da:2d`

