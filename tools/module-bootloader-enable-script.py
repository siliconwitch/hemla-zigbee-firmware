"""MGM210PB22JIA Bootloader Enable Script

Forces the Zigbee module into bootloader mode by holding
the bootloader pin and toggling reset.

In case of a bad update where UART no longer responds, this
script can recover the module from a soft-brick.
"""

import gpiozero
import time

boot_pin = gpiozero.LED(17)
reset_pin = gpiozero.LED(16)

# Hold the boot pin low
boot_pin.off()
time.sleep(0.1)

# Reset the Zigbee module
reset_pin.off()
time.sleep(0.1)
reset_pin.on()
time.sleep(0.1)

# Return the boot pin high
boot_pin.on()
