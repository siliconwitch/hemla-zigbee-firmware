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