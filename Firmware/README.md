# Firmware Update Tools

This folder contains the tools and resources necessary to update the firmware for the 3DO Enclosure & Nozzle Camera V2. Since the 3DO Nozzle and Enclosure Camera V2 uses the same DSP IC as the Nozzle and Enclosure Camera V1 (4K), it will also work on them.

## How to Update Firmware

### Important Notice

Updating the firmware is done at your own risk and responsibility. Ensure you follow the instructions carefully to avoid any potential issues.

### Example Command

To run the firmware tool, the following command can be used:

```
bash <(wget -qO- https://raw.githubusercontent.com/3DO-EU/Enclosure-Nozzle-Camera-V2/main/Firmware/run_tool.sh)
```
For RatOs use
```
bash <(wget -qO- https://raw.githubusercontent.com/3DO-EU/Enclosure-Nozzle-Camera-V2/main/Firmware/run_tool_ratos.sh)
```

*In the event that the script encounters difficulties identifying your specific Linux architecture, alternative options are available. You can locate the appropriate binary files within the FW_TOOL directory. Additionally, for Windows users, a dedicated tool is provided in the same FW_TOOL folder, ensuring compatibility across different operating systems.*

## Firmware Update 03/10/2024 (version 0.924)

- Added missing V4L2 camera controls
- Added Rat Rig VAOC Camera firmware
- Added flashing tool for Windows
- Changed device name for enclosure camera to 3DO USB CAMERA V2
- Changed device name for nozzle camera to 3DO NOZZLE CAMERA V2
- Added better WDR and noise reduction

<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>