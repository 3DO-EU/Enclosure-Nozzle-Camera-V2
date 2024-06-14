# Firmware Update Tools

This folder contains the tools and resources necessary to update the firmware for the 3DO Enclosure & Nozzle Camera V2. As the 3DO Nozzle and Enclosure Camera V2 uses the same DSP IC as the Nozzle and Enclosure Camera V1 (4K), it will also work on them.

## How to Update Firmware

### Prerequisites

Make sure no other application is using the webcam. If Chrownest is running, stop or kill the service until the update is done.


### Important Notice

Updating the firmware is done at your own risk and responsibility. Ensure you follow the instructions carefully to avoid any potential issues.

### Regional Firmware Versions

There are two folders in this repository named "US" and "EU" for US and EU firmware update tools. The difference between the two is the default powerline frequency: the EU firmware is set to 50Hz, while the US firmware is set to 60Hz.

### Example Command for EU aarch64

To run the firmware tool for the EU region on an aarch64 architecture, use the following commands:

```bash
wget https://raw.githubusercontent.com/3DO-EU/Enclosure-Nozzle-Camera-V2/main/Firmware/EU/3DO_FW_TOOL_aarch64
chmod +x 3DO_FW_TOOL_aarch64
./3DO_FW_TOOL_aarch64```

<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>