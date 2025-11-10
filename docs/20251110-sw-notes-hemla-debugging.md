# Raj/Hemla - Notes from debugging

**Weekend:** 30min<br>
**Monday morning:** 1.5 hours<br>

**Participants:**
- Raj

## Weekend:

- Emailed Lucian at Aquara (lucian.li@aqara.com) to ask regarding rejoin behavior. His reply:

    > Thank you very much for your detailed description and feedback. The temperature sensor and button are our battery-powered sub-devices.
    >
    > When a device loses communication with the co-ordinator, it is programmed to attempt rejoin every hour.  Should be able to see the device's rejoin request messages using a Zigbee debugging tool at one-hour intervals, and this logic remains unchanged regardless of how long the network outage lasts.
    >
    >The only possible reasons for them failing to report data are either running out of battery or being unable to connect to the corresponding Zigbee coordinator when attempting to rejoin.

## Morning:

- Checked the sniffer logs and Zigbee management page after running over the weekend:

    - Coordinator had been taken down for ~1day between Friday and Saturday. The sniffer showed that over this period, the devices had been trying to reconnect roughly every hour.

    - The devices had rejoined and were reporting as normal when checked on Monday morning.

## Next steps:

- Order an nRF52840 dongle and a raspberry pi to set up a permanent sniffer in Jakob's apartment. This should hopefully catch the next instance of the devices going offline.

- Schedule a call with Lucian to discuss what else might cause the behavior of devices failing to report.