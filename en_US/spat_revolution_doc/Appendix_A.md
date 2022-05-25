# SPAT Revolution specifications

## Availability

SPAT Revolution is a stand-alone application for macOS and Windows.
SPAT Send/Return/Room plugins are available in AU/VST/AAX Native.
SPAT Send plugin is available in AAX VENUE.

See [plugins specifications](https://www.flux.audio/plugin-specifications/) for more details.

## Processing

SPAT Revolution stand-alone software:
- unlimited number of Inputs and Outputs (Ultimate only, hardware and audio interface dependent).
- 32/64-bits internal floating-point processing.
- Sampling rates up to 384kHz, block size starting at 16 samples.

## OS Compatibility

- Windows 10 - 64 bits.

- macOS - All versions from 10.12 including macOS Big Sur and Monterey compliant. *

> *See hardware details for more information on compatibility.

## Hardware Recommendations and requirements

### Single Computer (Creative Station with DAW and SPAT Revolution)

Single computer systems can provide an excellent option for portability but come with the importance of having a performing computer. As SPAT Revolution comes with a 3D graphic engine where audio objects are manipulated, GPU resources are required.

**Apple based recommended hardware:**

- Apple Silicon / ARM M1 *
  - Mac Studio M1 Max / M1 Ultra off the shelf models
  - Mac Mini M1 Chip
  - MacBook Pro (13/14/16 inches) M1 Chip
- Apple Intel
  - MacPro, 3.5GHz 8‑core Intel Xeon W processor, Radeon Pro W5500X, 32GB RAM
  - iMac Pro, 3.2GHz 8‑core Intel Xeon W Turbo Boost, Radeon Pro Vega 56 8 GB, 32GB RAM
  - MacBook Pro with dedicated GPU video graphic card

> *SPAT Revolution is fully supported to Silicon / ARM Apple computers via the Rosetta binary translator.


**Generic hardware specification:**

- Processing: Intel Core i9-9900K, i7-9700K or equivalent. Intel 8th generation or greater processor. (Minimum 6 cores - 8 preferred), 8 MB Cache.
- System Memory: 16 minimum GB DDR4 (32 preferred when integrating with DAW and SPAT Revolution on the same machine with local audio path - LAP)
- Chipset: High-quality / Professional main-board
- Graphic: GeForce GTX 1060 - 4GB GDDR5 Graphic Memory or greater. _Graphic card fully supporting OpenGL 2.0 is required. USB displays are not supported_.
- Audio Interfaces:
  - macOS: Core Audio compatible interface or virtual sound card
  - Windows: ASIO compatible interface or virtual sound card.

### Hardware for Live Productions (Dedicated SPAT Revolution Computer)

**Recommended audio interfaces:**

- RME Digiface AVB or Dante, USB 3 Audio interface
- RME Madi HDSPe (PCIe), MADI FX or MADIface XT.

**Apple based recommended hardware:**

- Apple Silicon / ARM M1
  - Mac Studio M1 Max (10-Core CPU, 24-Core GPU, 32 GB RAM)
  - Mac Studio M1 Ultra (20-Core CPU, 48-Core GPU, 64 GB RAM)
- Apple Intel
  - MacPro, 3.5GHz 8‑core Intel Xeon W processor, Radeon Pro W5500X, 32GB RAM

  > Rackmounted Apple Mac Studio is possible using Sonnet’s xMac Studio or RackMac Studio 3U rackmount systems. xMac Studio can hold one Mac Studio and provide PCIe card expansion module while the RackMac Studio can hold 2 units such as in redundant configuration. MacPro can be installed in a Sonnet’s RackMac™


**Generic recommended hardware specification:**

- Intel® Xeon® W family W-2200 or W-3200 Series CPU (preferred), E-22xx, or equivalent. Higher core speed. Minimum 8 Cores, 12 MB Cache
- Chipset: Professional workstation chipset C422, C621, or equivalent.
- System Memory: 32 – 64 GB. A system with ECC support is preferred.
- Graphic: Professional NVIDIA Quadro P4000 or equivalent - 8GB GDDR5 Graphic Memory (Graphic card with full support for OpenGL 2.0), with the latest graphic drivers.
- Network: Dual network interface (NIC) - Intel I210-T1 or equivalent
- OS drive (Operating System): NVMe Internal SSD
- Audio Projects Hard Drive: no specifics. For redundant systems, only certified RAID systems should be used.
- Real-Time optimized OS with minimum services.

### Software License Requirements

To use the software, an iLok.com user account is required (the iLok USB Smart Key is not required, authorization can be made to hardware machines).

## Certified configurations (SPAT Revolution v.22.02.50151)

These configurations are tested and validated on a computer dedicated to SPAT Revolution. All other applications have been closed, and computer has been optimized as indicated below.

Computer optimization:
- Disable Wi-Fi and Bluetooth if not absolutely required.
- Disable Airdrop
- Disable Spotlight
- Disable display sleep, disk spin-down, and system sleep
- Disable screen saver
- Disable Time Machine
- Disable software update
- Disable dashboard (Catalina and prior)
- Disable photos processing and Cloud services
- Log out of iCloud

The below configurations have been **tested at the worst scenario**, with the reverberation at the highest density for all rooms, all sources active with reverberation and all sources in full movement using OSC input. WFS and Binaural PanType are used as reference as they are the most processing heavy techniques.

!> **Processing can be different according to the used HRTF**. Kemar HRTF were used for these tests.

---

### 48000 kHz

#### mac Mini M1 | Basic configuration

Number of sources | Number of speakers |         Room and PanType          |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:---------------------------:|:-------------------------------------:| :---:
64 |         32         |         1 WFS room          |       RME Digiface Dante / AVB        | 256 (11.5ms)
64 |         64         |         1 WFS room          | RME Digiface Dante / AVB | 512 (22.16ms)
64 |   16 + Binaural    | 2 rooms: 1 WFS + 1 Binaural | RME Digiface Dante / AVB | 1024 (43.5ms)

#### mac Studio M1 Max | Basic configuration

Number of sources | Number of speakers |      Room and PanType       |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:---------------------------:|:-------------------------------------:| :---:
64 |         32         |         1 WFS room          |       RME Digiface Dante / AVB        | 64 (3.5ms)
64 |         64         |         1 WFS room          | RME Digiface Dante / AVB | 128 (6.16ms)
64 |   16 + Binaural    | 2 rooms: 1 WFS + 1 Binaural | RME Digiface Dante / AVB | 128 (6.16ms)

---

### 96000 kHz

#### mac Mini M1 | Basic configuration

Number of sources | Number of speakers |      Room and PanType       |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:---------------------------:|:-------------------------------------:| :---:
32 |         16         |         1 WFS room          |       RME Digiface Dante / AVB        | 256 (6.05ms)
32 |         48         |         1 WFS room          | RME Digiface Dante / AVB | 512 (11.44ms)
32 |   32 + Binaural    | 2 rooms: 1 WFS + 1 Binaural | RME Digiface Dante / AVB | 1024 (22.1ms)
64 |         16         |         1 WFS room          |       RME Digiface Dante / AVB        | 512 (11.44ms)
64 |         24         |         1 WFS room          | RME Digiface Dante / AVB | 1024 (22.1ms)

#### mac Studio M1 Max | Basic configuration

Number of sources | Number of speakers |      Room and PanType       |              Sound card               | Buffer size / reported Latency
 :---: |:------------------:|:---------------------------:|:-------------------------------------:| :---:
32 |         16         |         1 WFS room          |       RME Digiface Dante / AVB        | 64 (2.1ms)
32 |         48         |         1 WFS room          | RME Digiface Dante / AVB | 128 (3.42ms)
32 |   32 + Binaural    | 2 rooms: 1 WFS + 1 Binaural | RME Digiface Dante / AVB | 256 (6.05ms)
64 |         16         |         1 WFS room          |       RME Digiface Dante / AVB        | 128 (3.42ms)
64 |         24         |         1 WFS room          | RME Digiface Dante / AVB | 256 (6.05ms)
