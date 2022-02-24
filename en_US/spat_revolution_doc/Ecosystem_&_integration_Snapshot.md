# Snapshot

Snapshots are an important part of a live show.
It can be used to capture an audio scene into SPAT Revolution.
Sources, rooms and master properties will be stored in a snapshot.
It allows a complete transformation of the soundscape, with interpolation.

!> To use snapshots, timecode needs to run in SPAT Revolution.

Two ways to run the timecode:
- if working with Hardware IO, an audio device must be selected into SPAT preferences.
- if working with Local Audio Path, the DAW needs to play back and the SPAT session needs at least one send and one return connected together.

The timecode activity is apparent in the bottom left of the screen.
If timecode isn't running, the recall will fail.

![Sync](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/Generic/Sync.png)

Snapshots could be controlled by the dedicated menu, and with OSC messages.

![SPAT Revolution_snapshot_recall](include/SpatRevolution_snapshot_recall.gif)

<!-- TODO: update the image -->

## Create a snapshot

We can create a snapshot:
- by using the "Create" action into the "Snapshots" menu.
In this case, the snapshot will be added at the end of the list.
The shortcut <code>Alt + Space</code> could also be used to capture a snapshot (currently note working on Windows).

- by using the "Insert Before" action.
This option is available only if another snapshot exists.
The snapshot will be inserted before the selected snapshot, and all the snapshots will be renumbered.

- by using the "Insert After" action.
This option is available only if another snapshot exists.
The snapshot will be inserted after the selected snapshot, and all the snapshots will be renumbered.


## Recall a snapshot

Recalling a snapshot will interpolate all the current properties with the stored values of the snapshot.
Different options located on the "Snapshots/option recall" menu could alter the snapshot running:

- Recall time

This option is available in the menu "Snapshots/Options recall."
The values are ranged between 0 and 3600 seconds.

- Recall Sources / Room / Master

As all the properties are stored into snapshots, this option gives us the possibility to enable or disable the recall of some properties.
The recall of each section could be separately activated.

!> Be careful with the Room properties recall, changing some properties like _Reverberation Density_ or Size causes reverb reconstruction (and audio drops).

## Snapshots handling

 Different actions could be executed with snapshots:

 - updating a snapshot

 - renaming a snapshot

 - removing a snapshot

 - remove all snapshots

# Handle snapshots with OSC

Different snapshots actions could be launched by OSC messages.

> Like sources and rooms, the index could be part of the message (<code>/snapshot/3/update</code>), or send as an argument (<code>/snapshot/update, 3</code>). All the example below will use it as part of the message.

> If the index is part of the message, it can be replaced by "next", "current" or "previous": <code>/snapshot/next/recall</code> will then recall the next snapshot on the list using the default options set it.

- Create a snapshot: <code>/snapshot/create [*snapshot Name]</code>

The snapshot name could be added in argument.

- Recall a snapshot: <code>/snapshot/[index]/recall [*time, *Recall Effective Selection, *Recall Actual Selection, *Enable sources recall, *Enable rooms recall, *Enable masters recall] </code>

 _index_: the snapshot index to recall. Used as an argument, it can be replaced by the snapshot name.

 _Time_: optional, it will define the recall time. If not given, the default value is 0s.

 _Recall Effective Selection_: optional, if the value is <code>True</code>, the sources' selection on the snapshot creation will be recalled. It's the default value. If <code>False</code>, selection will not be recalled.

 _Recall Actual Selection_: optional, if the value is <code>True</code>, only the parameters of selected sources' will be recalled. Else, all the sources will recalled (default behavior).

_Enable sources recall, Enable rooms recall, Enable masters recal_: optional, enable to define if sources, rooms and masters parameters will be recalled. If not given, the default set value will be used. 


- Update a snapshot: <code>/snapshot/[index]/update </code>

_index_: the snapshot index to update.
It can be replaced by the snapshot name.

- List all the snapshots: <code>/snapshot/list</code>

This will return the list of the snapshot, index and name.

- Len the number of snapshots: <code>/snapshot/len</code>

This will return the total number of snapshots.

- Rename the snapshot: <code>/snapshot/[index]/rename [name]</code>

_index_: the snapshot index to rename.
_Name_: the new name of the snapshot.

- Remove a snapshot: <code>/snapshot/[index]/remove</code>

_index_: the snapshot index to remove.
It can be replaced by the snapshot name.

!> Be careful: there isn't any confirmation.

- Change the recall options: <code>/snapshot/options/recall/sources [State]</code>, <code>/snapshot/options/recall/rooms [State]</code>, <code>/snapshot/options/recall/masters [State]</code>.

_State_: 0 will disable the recall of related objects, 1 will enable it.

- Change the timing recall option:  <code>/snapshot/options/recall/timing [Timing]</code>

_Timing_: Timing in seconds.

<code>/snapshot/options/recall [State] [State] [State]</code> takes the three options (sources, rooms and masters)

- Remove all the snapshots: <code>/snapshot/removeall</code>

!> Be careful: there isn't any confirmation.