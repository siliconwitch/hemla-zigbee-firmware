# Hemla Gateway Zigbee Firmware

This firmware targets the Silicon Labs [MGM210PB22JIA](https://www.silabs.com/wireless/zigbee/efr32mg21-series-2-modules/device.mgm210pb22jia) module internal to Hemla's Basehnet 01 Gateway. It is based on the NCP (network co-processor) UART example.

## Getting started

1. Download and unzip the [v2024.6.3](https://github.com/SiliconLabs/simplicity_sdk/releases/tag/v2024.6.3) SDK. Specifically, the file named `simplicity-sdk.zip` listed under the assets header of the release page.

1. Install [Simplicity Studio 6](https://www.silabs.com/software-and-tools/simplicity-studio). Follow the installation wizard, and select **Technology Install** without any of the optional packages.

1. From within Simplicity Studio, click the **Settings** tab → **SDKs** → **Add SDK**, and then browse to the location of the unzipped SDK folder downloaded above. Finally, select the SDK from the list.

1. Navigate to the **Projects** tab, and then open this project.

### Building from command-line

The firmware is built simply using the `make` command from the command-line.

1. Rename the installed Application from `Simplicity Studio` → `SimplicityStudio` to prevent the Makefile from complaining about the space.

1. Navigate to the root of the project in a terminal and run the build command:

    ```sh
    make -f hemla-zigbee-firmware.Makefile -j 8
    ```

1. A `.gbl` will be generated in the `build/` folder which can then be flashed to the module.

### Flashing

The `.gbl` firmware file can be flashed directly from the gateway hardware.

1. `ssh` into the gateway.

1. Transfer your newly built file over to the gateway using `scp` or another suitable command.

1. If `universal-silabs-flasher` is not already installed, it can be installed using python pip:

    ```sh
    pip install universal-silabs-flasher
    ```

1. Flash the firmware using the command:

    ```sh
    universal-silabs-flasher --device /dev/ttyAMA3 flash --firmware hemla-zigbee-firmware.gbl
    ```

1. Ensure the module works by probing the newly installed firmware:

    ```sh
    universal-silabs-flasher --device /dev/ttyAMA3 probe
    ```

1. If a bad firmware was flashed to the module, the UART may no respond for re-flashing. To un-brick the module, the following script can be copied to the host gateway and then run to recover the module:

    ```sh
    python module-bootloader-enable-script.py
    ```

### Debugging

Debugging Zigbee issues can be difficult without a sniffer to monitor the traffic. The [following guide](/tools/sniffer/README.md) describes how to build one using a Raspberry Pi and Nordic nRF52 dongle.