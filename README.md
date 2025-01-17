

![test](https://github.com/user-attachments/assets/5cf75f24-5993-4e64-b3b2-328f30d4ff31)
<div align="center">
<a href="https://t.me/TatshSecretCave" ><img height="50" src="https://www.vectorlogo.zone/logos/telegram/telegram-tile.svg"/></a>

<a href="https://t.me/TatshSecretCave" >Telegram</a>
</div>

# Never download from source!
Only download from releases

# Developer Notice
To adapt HyperOS 2 and eliminate compatibility problems\
I decided to rebuild from scratch again (polish and revise)\
Hoping it will be another good start on next release\
**[Not so soon]**

# What is this?
This is a Magisk Module for HyperOS based devices\
Reduce Power and RAM consumption by optimizing system parameters, disabling Apps & System Process

## What it does?
- **Hides Detection : Zygisk Injected**
- **Hides Detection : Debugging Environment**
- Debloat Apps
- Debloat system process
- Disable logging
- Disable Wakelocks
- CPU Optimization
- GPU Optimization
- I/O Optimization
- Surface Flinger Tweaks
- Memory Management Tweaks
- System parameters Optimization
- HyperOS System Optimization

## Requirements
- Device using HyperOS

## Dev Notes
- **Bootloop Rescue Module** is always recommended
- **MIUI** not tested
- **Tablets/Pads** not tested
- **NOT GUARANTEED** to work on all builds
- **CONFLICT** with module with same purpose

## Customize debloat list
- Edit `replace=""` section in the `setup.sh` file if you want specific apps to not be disabled (eg. Gboard)

## How to install?
- Flash the zip in Magisk.

## My Magisk break after uninstalled, what should I do?
- Reboot again

## Just in case you bricked it
1. boot into TWRP or `adb reboot recovery` or `fastboot reboot recovery`
2. Open File manager
3. Goto data/adb/modules
4. delete the module

## Disclaimer
* I'm not responsible for bricked devices, dead SD cards, thermonuclear war, or you getting fired because the alarm app failed (like it did for me...).
* YOU are choosing to make these modifications, and if you point the finger at me for messing up your device, I will laugh at you.
* Your warranty will be void if you tamper with any part of your device / software.
