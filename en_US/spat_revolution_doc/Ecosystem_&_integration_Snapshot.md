# Snapshot

Snapshots are an important part of a live show.
It can be used to capture an audio scene into _SPAT Revolution_.
Sources, rooms and master properties will be stored in a snapshot.
It allows a complete transformation of the soundscape, with interpolation.

Snapshots could be controlled by the dedicated page, the dedicated menu, and with OSC messages.

Sources can be excluded of a snapshot recall:
- on the **Source Page**, disabling "Snapshot" on the wanted sources.
- on a **Room Page**, right-clicking on the wanted source and disabling the "Snapshot recall enable" option.

![_SPAT Revolution_ snapshot recall](include/SpatRevolution_snapshot_recall.gif)

<!-- TODO: update the image -->


## Create a snapshot

We can create a snapshot:
- by using the <code>Create</code> action into the "Snapshots" menu, or the <code>Create snapshot</code> available on the snapshot bar.
In this case, the snapshot will be added, following the current snapshot (if there is any).
The shortcut <code>Alt + Space</code> could also be used to capture a snapshot (currently not working on Windows).

- by using the "Insert Before" action.
This option is available only if another snapshot exists.
The snapshot will be inserted before the selected snapshot, and all the snapshots will be renumbered.

- by using the "Insert After" action.
This option is available only if another snapshot exists.
The snapshot will be inserted after the selected snapshot, and all the snapshots will be renumbered.


## Recall a snapshot

Recalling a snapshot will interpolate all the current properties with the stored values of the snapshot.
Different options located on the **Snapshot page** could alter the snapshot running:

- Recall relative

This option enable to keep differences between the current state and the current snapshots. More information about it [on the snapshot page section](Spat_Environment_Snapshot_Page.md)

- Global

This option enables to follow the global snapshot recall settings. It is also possible to setting up a particular one, disabling this option on the snapshot page.

- Recall time

This option is available in the menu "Snapshots/Options recall."
The values are ranged between 0 and 3600 seconds.

- Recall Sources / Room / Master

As all the properties are stored into snapshots, this option gives us the possibility to enable or disable the recall of some properties.
The recall of each section could be separately activated.

!> Be careful with the Room properties recall, changing some properties like _Reverberation Density_ or Size causes reverb reconstruction (and audio drops).

!> If **Ask for update before recalling** option is checked and changes are detected between the current snapshot and current state, a window will propose to update the current snapshot.

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