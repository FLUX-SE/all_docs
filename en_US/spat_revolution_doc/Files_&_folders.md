# Spat Revolution files and folders

## Spat Revolution files

Spat uses 3 different file types:

* .json
* .ioconfig
* .reverbPresets

*.json* are the main files of Spat Revolution: sessions are saved in this file type.

To save a session, click on the "Save session" button on the Setup page, or use the shortcut <code>Ctrl + S</code> on Windows, or <code>Cmd + S</code> on Mac, on any page of Spat Revolution.

User created custom speaker arrangement(s) can be exported or imported as *.ioconfig* files in the edit speaker config window. 

Reverb preset can be stored and exported as *.reverbPresets.* They can later be imported back into a session.

## Preferences and Ressource files

<code>Users/.../Document/FLUX SE</code>

<code>Users/.../Document/FLUX SE - IRCAM</code>

<code>Users/.../Document/Ircam</code>

The FLUX SE Folder contains a subfolder named *Config*  which has 3 files:  

* .ioconfig contains your added speaker arrangements to Spat Revolution
* .presets contains your reverb presets 
* .theme contains your theme (Dark or Light mode)

A subfolder named *Preferences* containing:

*  hrtf.json file which includes your HRTF files location
*  users.json contains your saved software preferences
*  Preferences.xml saves some paths
*  UI.xml saves your user interface preferences
*  Property Memory subfolder contains the memory slots saved by parameters

A subfolder named *Shell* containing:

*  history.txt an history of the terminal commands

The FLUX SE - IRCAM Folder contains preferences and presets of the three Spat Revolution plug-ins. 

The Ircam Folder contains a subfolder called *sofa* which contains the sofa.catalog.xml file. The HRTF catalog.

> *When backing up a system, make sure to copy all these folders to secure the  complete software configuration.*

## Paths for python script

<code>Users/.../Desktop</code>

<code>Users/.../Document/FLUX SE/Spat Revolution</code>

> *An example of a script file is the [customSpeakerArrangement](https://public.3.basecamp.com/p/rQStK3igPkaXisYS4Gs5sJ2g/upload/download/customSpeakerArrangement.py?disposition=attachment) that can be used as a method to add arrangements to Spat Revolution.*
