# Usage
Multiple audio files can be added to the list for unattended queue processing.

## Principle
The media queue is intended for processing a soundtrack possibly split across several reels and channels. 
Reels are processed in the order in which they are added and in which they appear in the list.

## Usage
Audio files are added by clicking the icon ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Plus.png), which brings up a standard file selection dialog, where you can select as many files as you want, provided they all have the same channel count and in a supported format, with a recognized extension (.wav).
When you are ready, click the ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Play.png) icon to start processing the list, which will be computed much faster than real-time, especially if you have a fast computer.

The results are displayed when ready in the main view, and you can export these to a file just as you would with metering statistics computed on incoming audio.

## Reel grouping
If reels are split across several multichannel files, you can add all the files at once directly in the file selection dialog. 
Reel order corresponds to the order in which the files were added.

## Channel grouping
If your source material consists of mono-tracks, you must add reels one-by-one, adding all files for the various channels of the current reel. 
Please ensure different reels have the same channel count or the software will report an error. 
Channel configuration and names are inferred from the file names using a fuzzy-logic algorithm that looks for the presence of typical marker characters such as C / Center for the center channel, R / Right for the right channel etc. (case insensitive).

If the automatic channel grouping does not succeed, an error message will be displayed. 
Please rename the offending file(s) according to one of the expected schemes above to correct the problem.

> This function is not intended to process unrelated soundtracks in batch mode. 
> Please repeat the operation as necessary if you wish to obtain separate results for individual tracks.


