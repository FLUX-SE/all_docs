# Snapshot page

![Snapshot page](include/Snapshot_page.png)

The new Snapshots page of SPAT Revolution allows the user to deeply manage its show. Snapshots are an easy way to create different session states. A classic example would be to have different snapshots for different songs, or section of a song, in a live show.

The system built in SPAT Revolution is both simple and powerful. As a generality, when a snapshot is created, it store the entire session state. Only the recall function can filter what is recallen.

The page is divided into four different sections: the action bar, the snapshot list, the version history and the inspector.

## The action bar

![Action bar](include/Snapshot_page_action_bar.png)

This action bar countain many buttons to manage snapshots

- <code>Create</code> allows to create a new snapshot, storing the current sources/rooms/masters state.
- <code>Duplicate</code> allows to duplicate the current snapshot selected in the snapshot list.
- <code>Recall</code> allows to restore a previously saved snapshot selected in the snapshot list.
- <code>Relative recall</code> is a parameter of the recall function. It allows to recall a snapshot while preserving anything that was offseted from the previous state. Here is an exemple. Let's say you have two snapshot, "A" and "B". Sources inside your project have different place in space between the two snapshots. Now, let's presume that once the show is started, you feel that one of the sources, let's say the source "2" is too close. So you grab the distance parameter and put it further away. The "Relative recall" function will preserve this offset to any of the futur recallen snapshot. This allow a perfect blend of live mixing and preparation work.
- <code>Update</code> allows to update the selected snapshot in the snapshot list with the current state of the session.
- <code>Remove</code> allows to delete the snapshot selected in the snapshot list
- <code>Enable</code> allows to disable or enable the selected snapshots. This will exclude them of the next/previous behavior of the snapshot toolbar and the OSC messages.

## The snapshot list

### Generality

![Snapshot list](include/Snapshot_page_snapshot_list.png)

The snapshot list serves many purpose. First, it display the snapshot organization of your session. You can change the order of each snapshot drag & dropping them in the list. The snapshot name can also be edited by clicking on the text field. To recall a snapshot from the snapshot list, simply double click on number of one of them.

A snapshot can have different states. First, it can be selected or unselected inside the list. The state of selection is graphical element that let the user know on which snapshot an action is performed.

![Unselected snapshot](include/Snapshot_page_unselected_snapshot.png)

Unselected snapshot

![Selected snapshot](include/Snapshot_page_selected_snapshot.png)

Selected snapshot

A snapshot can also be disabled. A disabled snapshot will be darken in the list. It cannot be recallen. The <code>next</code> and <code>previous</code> snapshot buttons will automatically skip a disabled snapshot. To activate or deactivate a snapshot, seleect the snapshot and click on the <code>Enable</code> button on the action bar, or right-click on a selected snapshot and click on the <code>Enable/disable</code> option.

![Active / inactive](include/Snapshot_page_active_inactive.png)

Active snapshot (1) VS unactive snapshot (2)

Lastly, the last recallen snapshot is displayed with a white border around it. This allows the user to monitor where he is in his show.

![In-play / not-in-play](include/Snapshot_page_play_notinplay.png)

In-play snapshot (2) VS not-in-play snapshot (1)

### Global snapshot preferences, global and override

The snapshot list also exposes four recall options on its top right corner : the recall time, the source option, the room option and the master option. These parameters affect each snapshot.

- The recall time is an interpolation between the current session state and the session state recallen from a snapshot. This allows to smooth out the transition between two scenes and can also be used to create some movements.
- The source option defines if the sources state should be recallen. This refers to the sources position and other properties.
- The room option defines if the rooms state should be recallen. This refers to the reverb parameters of rooms and also the listener head.
- The master option defines if the rooms state should be recallen. This refers to the master level output.

By default only sources properties are recallen from snapshots. Remember than even if only some parameters are recall, the whole session is stored on the creation of a snapshot.

Beside each snapshot, there is a tickbox, under a collumn named "**GLobal**". If the tickbox is checked, the default values of the recall preferences refer to the global value. If the tickbox is unchecked, you can override the global preferences and enter a specific recall values for the snapshot.

### Changing snapshots color

![Coloring snapshot](include/Snapshot_page_color.png)

To help to a better organisation of the session, snapshots can be recolored. To do so, right-click on the selected snapshot and choose "Set colors". A palette, from which you can pick a color, will appear. 

## Version history

![Snapshot version history](include/Snapshot_page_version_history.png)

In this panel takes place a very powerful feature. For each snapshot, SPAT Revolution automatically stores the last ten version. Of course, you can recall any of this ten previous state, remove one, make a previous one the current.

Very much like the snapshot list, an entry in the version history list can have various state :

- It can be selected or unselected
- It can be in-play or not-in-play.

An entry in the version history as for the name its creation date and time. It is not editable, but you can also insert a custom note.

An entry can be deleted by right clicking on the selected entry and by choosing <code>delete</code>.

A previous snapshot version can be recallen by double clicking.

If you want to set a previous version as the one to be in used when recalling the snasphot, right-click on the snasphot and click on <code>Make current</code>.

## Inspector

The inspector lets you visualize the difference between the current state of your session and the selected snapshot, and selected version of a snapshot.

It allows to easily monitor what was changed and how it was changed.

![Untitled](include/Snapshot_page_inspector.png)

You can filter the list by an object name and/or a property name. You can also choose to show only informations by sources, rooms or masters.


## Snapshot preferences

A new panel relative to the snapshot is available on the preferences page.

- Recall source name: determines if the source names is recalled with snasphots.
- Number of saved version: determines the number of version saved when updating a snapshot. Carefull: increasing this number increases deeply the size of the .json SPAT file. 