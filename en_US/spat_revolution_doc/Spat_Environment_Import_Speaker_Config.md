# Import Speaker Array

For systems that are regularly changing such as in live production, setting up the speaker configuration in the simulation software and then  repeating it in the immersive software is not the most fun part!

To ease this part of the setup, you can now import from software of Nexo  (NS-1), Adamson (Blueprint), d&b (ArrayCalc), CODA Audio (System Optimiser) and the standard EASE software.

This import is integrated into the "Speaker Config" editor where you can find the "Import from" button.

![image](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditorImportFrom.png)
To begin is the FLUX IOConfig. This is the FLUX:: speaker arrangements file format. This can be a great tool to export and save your FLUX:: arrangements or to import an arrangement into another session / computer system.

In SPAT Revolution, it is important to understand that speaker arrangements **DO**  follow the session file. So if you are opening a .JSON with an arrangement new to your system, SPAT Revolution will copy that arrangement and it will then be part of the user-created arrangements. In consequence, this new arrangement will be accessible for any new SPAT Revolution session.

If you care to know where these arrangements are stored, <code>Document/FLUX SE/Spat Revolution/Config</code> is where your master IOCONFIG file, containing all the user-defined arrangement, is located. Note that the repertory <code>Document/FLUX SE/Spat Revolution</code> is now the folder that contains all of your SPAT preferences. If you ever need to erase your preferences, for troubleshooting purpose, remember to export your speaker arrangements first, and then back them up outside of this folder.

## How to import a speaker configuration from

### Nexo NS-1 :

In NS-1, to export all the speakers : Go to the <code>Speaker Positions Windows</code>,  <code>Speakers/Speakers Position</code> or <code>Ctrl + P</code>. Select all the Speakers, and click on <code>Export, File...</code>. This will export a .txt file, readable by SPAT Revolution.

### Adamson BluePrint

In BluePrint, to export all the cabinets: Go to the Cabinet tab. In the  line <code>Cabinet Group</code>, click on the 4th button, <code>Export All Cabinets</code>. This will export an .arys file readable by SPAT Revolution.

![image(1)](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/AdamsonExport.png)


### d&b ArrayCal

In ArrayCal, export all the sources with "Files/Export/EASE/Coordinates of all sources". This will export a .xld file readable by SPAT Revolution.

![image(2)](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/d&bExport.png)

### Excel

![image(2)](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditorImportExcel.png)

**[Speaker import from Excel template](https://public.3.basecamp.com/p/w1VQL9UbbndSXP5P3qpU6DnU)**

