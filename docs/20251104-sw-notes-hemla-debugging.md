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

- Rolled back SDK to v2024.12.1. The included example project didn't build. Required some edits to `main.c`. Once built, the app still didn't seem to work.