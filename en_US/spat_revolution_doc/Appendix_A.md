# SPAT Revolution specifications

## Availability

SPAT Revolution is a stand-alone application for macOS and Windows
SPAT Send/Return/Room plugins are available in AU/VST/AAX Native. 
SPAT Send plugins is available in AAX VENUE.

Plugins Compatibility.
[Access to all Plugins specifications](https://www.flux.audio/plugin-specifications/)

## Processing

SPAT Revolution—stand-alone software:
- unlimited number of Input and Output (hardware and audio interface dependent).
- 32/64-bits internal floating-point processing.
- Sampling rates up to 384 kHz, buffer starting at 16 samples.

## OS Compatibility

Windows 10, all in 64 bits only.

macOS x (Intel)—All versions from 10.12 including macOS Big Sur compliance.

## Software Licence Requirements

In order to use the software, an iLok.com user account is required. The iLok USB Smart Key is not required, authorisation can be made to hardware machines. Cloud session is not supported.

## Hardware Recommendations and requirements 
 
### Single Computer (Creative Station with DAW and SPAT Revolution) 

Single computer systems can provide a great option for portability but come with the importance of having a performing computer. As SPAT Revolution comes with a 3D graphic engine where audio objects are manipulated, GPU resources are required. 

__Base system/Portable:__

* Processing: Intel Core i9-9900K, i7-9700K or equivalent. Intel 8th generation or greater processor. (Minimum 6 cores - 8 preferred), 8 MB Cache.
* System Memory: 16 minimum GB DDR4 (32 preferred when integrating with DAW and SPAT Revolution on the same machine with local audio path—LAP) 
* Chipset: High-quality/Professional mainboard such as Intel® Z370 Chipset
* Graphic: GeForce GTX 1060 — 4 GB GDDR5 Graphic Memory or greater (Graphic card fully supporting OpenGL 2.0 is required. USB displays are not supported).
* Audio Interfaces: Mac OS X: Core Audio compatible interface or virtual sound cards, Windows: ASIO compatible interface or virtual sound cards. Preferred interfaces: USB 3 Audio interface. 
* OS: macOS High Sierra, Mojave or Catalina. Windows Pro 10 64 bits.
 
>  Mac OS X: OpenGL 2.0 required 
> 
>  Windows: If your computer has an ATi or Nvidia graphics card, please assure the latest graphic drivers from the ATi or Nvidia website are installed.

### Hardware for live productions (Dedicated SPAT Revolution Computer)
 
**Recommended audio interfaces:**

* Dante PCIe interfaces from Yamaha, Focusrite, or any Dante PCIe high-density card.
* RME Digiface AVB, USB 3 audio interface
* RME Madi HDSPe MADI FX or MADIface XT. 

**Recommended SPAT workstation system:**

* Intel® Xeon® W family W-2200 or W-3200 Series CPU (preferred), E-22xx, or equivalent. Higher core speed. Minimum 8 cores, 12 MB Cache
* Chipset: Professional workstation chipset C422, C621, or equivalent. 
* System Memory: 32–64 GB. A system with ECC support preferred.
* Graphic: Professional NVIDIA Quadro P4000 or equivalent — 8 GB GDDR5 Graphic Memory (graphic card with full support for OpenGL 2.0) 
* Network: Dual network interface (NIC)—Intel I210-T1 or equivalent 
* OS drive (Operating System): NVMe Internal SSD
* Audio Projects Hard Drive: No specifics. For redundant systems, only certified RAID systems should be used.
* OS: macOS High Sierra, Mojave or Catalina. Windows Pro 10 64 bits. Real time optimized OS.


## Certificated configurations (SPAT Revolution version 2022.02.50151)

The configurations are tested on a computer dedicated to SPAT. All others applications have been closed, and all unwanted process like Wi-Fi avoided. The reverberation is set to high density channels for all rooms, all sources on the reverberation and automated by OSC.

### 48000 kHz

#### mac Mini M1 | Basic configuration

Sources number | Number of speakers |    Pan Type    |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:--------------:|:-------------------------------------:| :---:
64 |         32         |      WFS       |       RME Digiface Dante / AVB        | 256 (11.5ms)
64 |         64         |      WFS       | RME Digiface Dante / AVB | 512 (22.16ms)
64 |   16 + Binaural    | WFS + Binaural | RME Digiface Dante / AVB | 1024 (43.5ms)

#### mac Studio | Basic configuration

Sources number | Number of speakers |    Pan Type    |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:--------------:|:-------------------------------------:| :---:
64 |         32         |      WFS       |       RME Digiface Dante / AVB        | 64 (3.5ms)
64 |         64         |      WFS       | RME Digiface Dante / AVB | 128 (6.16ms)
64 |   16 + Binaural    | WFS + Binaural | RME Digiface Dante / AVB | 128 (6.16ms)

### 96000 kHz

#### mac Mini M1 | Basic configuration

Sources number | Number of speakers |    Pan Type    |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:--------------:|:-------------------------------------:| :---:
32 |         16         |      WFS       |       RME Digiface Dante / AVB        | 256 (6.05ms)
32 |         48         |      WFS       | RME Digiface Dante / AVB | 512 (11.44ms)
32 |   32 + Binaural    | WFS + Binaural | RME Digiface Dante / AVB | 1024 (22.1ms)
64 |         16         |      WFS       |       RME Digiface Dante / AVB        | 512 (11.44ms)
64 |         24         |      WFS       | RME Digiface Dante / AVB | 1024 (22.1ms)

#### mac Studio | Basic configuration

Sources number | Number of speakers |    Pan Type    |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:--------------:|:-------------------------------------:| :---:
32 |         16         |      WFS       |       RME Digiface Dante / AVB        | 64 (2.1ms)
32 |         48         |      WFS       | RME Digiface Dante / AVB | 128 (3.42ms)
32 |   32 + Binaural    | WFS + Binaural | RME Digiface Dante / AVB | 256 (6.05ms)
64 |         16         |      WFS       |       RME Digiface Dante / AVB        | 128 (3.42ms)
64 |         24         |      WFS       | RME Digiface Dante / AVB | 256 (6.05ms)