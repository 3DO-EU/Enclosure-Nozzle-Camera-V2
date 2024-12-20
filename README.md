# 3DO Enclosure & Nozzle Camera V2

[![3DO Discord Server](https://discordapp.com/api/guilds/1030739969272201236/widget.png?style=banner2)](https://discord.com/invite/Ss3q9ccwDq)

Introducing the 3DO Enclosure & Nozzle Camera V2, a modular camera system designed for 3D printers. Building on the success of our V1 camera, this new version offers enhanced flexibility with interchangeable FPC cables and camera sensors/lenses, all supported by a single DSP PCB with added LED functionality.


## Repository Folders
- **Design Files**: Contains CAD files and tolerances of the camera for mount designing.
- **Printers**: Various mounts for different printers.
- **Firmware**: Tools to update camera firmware.


## Key Features
- **Modular System**: Interchangeable FPC cables and camera sensors/lenses.
- **Single DSP PCB**: One DSP PCB for all configurations, now with LED support.
- **High Flexibility**: Various FPC cable options for different setups.
- **Enhanced Lighting**: Optional FPC cables with integrated LEDs.

## Modular System Overview
The modular design allows for easy customization to suit various 3D printing setups. The DSP PCB remains consistent across all configurations, simplifying inventory and setup changes.

## IMPORTANT - Camera Sensor PCB Orientation

The small connector in our modular system allows for the possibility of incorrect orientation when mounting the camera sensor, which can potentially DAMAGE the camera.

**Please note the following when mounting the sensor/FPC/DSP to each other:**

- **Keep an eye on the white dot on the silkscreen.**
- When mounted, the white dots on both the camera sensor PCB and the DSP PCB should touch or "kiss" each other.

This ensures correct alignment and prevents damage to the components.           

<img src="./images/pcb_alignment_marker.png">                                                                                                                                                                                     


## FPC Cable Options
- 5cm
- 10cm
- 25cm
- 5cm with LEDs
- 10cm with LEDs
- 25cm with LEDs

## Camera Options
- **Nozzle Camera (Glued)**: Lens glued in place to focus 3.45cm from the back of FPC to the object.
- **Nozzle Camera (Adjustable)**: Lens focus can be adjusted by rotating the lens.
- **Enclosure Camera (Adjustable)**: Lens focus can be adjusted by rotating the lens, FoV 120°.

## Specifications
|                         | 4K (Sony IMX258)     |
|-------------------------|----------------------|
| Sensor Size             | 1/3.06               |
| Mega-Pixel              | 13MP                 |
| Frame Rate*             | 30FPS@4K 60FPS@1080P*|
| Operating temperature** | -20°C TO 65°C        |

_*Frame rates are achievable when connected directly. Performance may vary with different streaming setups._

## Pinout
PCB uses a 5P 1.0mm pitch connector.
| Pin No. | Function    | Color                |
|---------|-------------|----------------------|
| 1       | USB 5VDC    | Red                  |
| 2       | Data -      | White                |
| 3       | Data +      | Green                |
| 4       | USB -VDC/GND| Black                |
| 5       | GND/Shield  | Black (heat shrink)  |

Wire no. 5 is an optional shield/drain wire. Though optional, its installation is recommended.

<img src="./images/pinout_5p.png" width="35%" align="left">
<img src="./images/pinout_usb2.png" width="40%">
</br>

## Software

The camera functions as a standard UVC web camera and is compatible with Linux, Windows, and Mac. For streaming, we recommend using [mainsail](https://github.com/mainsail-crew/mainsail) and [crowsnest](https://github.com/mainsail-crew/crowsnest).

The camera system supports various controls and options, primarily managed via V4l2-ctl commands. Below are the detailed controls and their options available through V4l2-ctl:

### User Controls

| Control                     | Details                                                                 |
|-----------------------------|-------------------------------------------------------------------------|
| **brightness**              | min=0, max=64, step=1, default=15                                       |
| **contrast**                | min=0, max=95, step=1, default=4                                        |
| **saturation**              | min=0, max=100, step=1, default=70                                      |
| **hue**                     | min=-2000, max=2000, step=1, default=0                                  |
| **white_balance_automatic** | default=1                                                               |
| **gamma**                   | min=1, max=300, step=1, default=115                                     |
| **gain**                    | (ISO control) min=0, max=480, step=1, default=0                         |
| **power_line_frequency**    | min=0, max=2, default=1                                                 |
|                             | 0: Disabled                                                             |
|                             | 1: 50 Hz                                                                |
|                             | 2: 60 Hz                                                                |
| **white_balance_temperature** | min=2800, max=6500, step=1, default=4600, flags=inactive              |
| **sharpness**               | min=1, max=7, step=1, default=1                                         |
| **backlight_compensation**  | min=0, max=2, step=1, default=1                                         |
|                             | 0: LED off                                                              |
|                             | 1: LED on when stream is open                                           |
|                             | 2: LED always on                                                        |

### Camera Controls

| Control                    | Details                                                                  |
|----------------------------|--------------------------------------------------------------------------|
| **auto_exposure**          | min=0, max=3, default=3                                                  |
|                            | 1: Manual Mode                                                           |
|                            | 3: Aperture Priority Mode                                                |
| **exposure_time_absolute** | min=3, max=2047, step=1, default=166, flags=inactive                     |
| **pan_absolute**           | min=-648000, max=648000, step=3600, default=0                            |
| **tilt_absolute**          | min=-648000, max=648000, step=3600, default=0                            |
| **focus_absolute**         | min=0, max=1023, step=1, default=0, flags=inactive                       |
| **focus_automatic_continuous** | default=0                                                           |
| **zoom_absolute**          | min=0, max=60, step=1, default=0                                         |

**Notes:**

- `exposure_time_absolute` controls the shutter speed and can only be set when `auto_exposure` is in manual mode.

- PTZ controls (`pan_absolute`, `tilt_absolute`, `zoom_absolute`) are used to crop the image. All 30fps streams are downscaled to 4K, and all 60fps streams are downscaled to 1080p. To use the crop feature, you need to select a downscaled stream.


## FAQ
- **Does it work in an enclosed printer?**

  Yes, our camera is rated for 65°C but has been tested in an 80°C industrial heat chamber for 48 hours without issues.
  
- **Why don't you offer autofocus cameras?**

  In our experience and testing, autofocus cameras are not ideal for 3D printer use. For nozzle cameras, the lens shakes with fast movements, leading to quicker breakdowns and shorter lifespans. For enclosure cameras, most customers set a fixed focus for autofocus cameras anyway, so we opted for fixed-focus cameras for reliability, as it is one less part that can break.
  
- **Can I bend/fold the FPC cable to make it shorter?**

  Yes, FPC cables are flexible and can be bent. For folding (180 degrees), limit this to one time at the same spot to avoid damaging the lanes inside the FPC.

Example of folding FPC:

<img src="./images/FPC_BEND.jpg" width="20%">

## Where to Buy
### EU / UK
<a alt="3DO" href="https://3do.dk/"><img src="https://3do.dk/img/logo-1724678217.jpg" width="200"></a>

### USA
<a alt="Fabreeko" href="https://www.fabreeko.com/"><img src="https://cdn.shopify.com/s/files/1/0266/5001/7990/files/Fabreeko_Logo_ecf1536e-3074-4a0e-9306-87ca89f1abbd_320x.png" width="200"></a>
<a alt="KB3D" href="https://kb-3d.com/"><img src="https://kb-3d.com/store/img/kb-3d-logo-1673465361.jpg" width="200"></a>

<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>
