# Snapshots page

![Snapshots page](../../../doc_images/SpatR/Snapshots/Page.png)

The new Snapshots page of _SPAT Revolution_ allows the user to deeply manage its show. Snapshots are an easy way to create different session states. A classic example would be to have different snapshots for different songs, or sections of a song, in a live show.

The system built in _SPAT Revolution_ is both simple and powerful. As a generality, when a snapshot is created, it stores the mix parameters, i.e. the source, room and master parameters. All parameters are always stored, but it is possible to filter the recalled parameters.

The page is divided into three different sections: the snapshot list, the versions' history and the inspector.

## The snapshot list

### Generality

![Snapshot list](../../../doc_images/SpatR/Snapshots/SnapshotsList.png)

The snapshot list is the main section of snapshot management and serves many purposes. First, it displays the snapshot organization of your session. The snapshot name can also be edited by clicking on the text field. To recall a snapshot from the snapshot list, simply double-click on the number of one of them.

#### Snapshot selection

A snapshot can have different states. First, it can be selected or unselected inside the list. It will serve to make a specific action on the selected snapshot(s) and reveals the versions' history and inspector section (if only one is selected). The state of selection is a graphical element that let the user know on which snapshot an action is performed.

![Unselected snapshot](../../../doc_images/SpatR/Snapshots/UnselectedSnapshot.png)
Unselected snapshot

![Selected snapshot](../../../doc_images/SpatR/Snapshots/SelectedSnapshot.png)
Selected snapshot

#### Snapshot activation and deactivation

A snapshot can also be disabled using the dedicated toggle. A disabled snapshot will be darkened in the list. It cannot be recalled. The <code>next</code> and <code>previous</code> snapshot buttons on the snapshot toolbar will automatically skip a disabled snapshot.

![Active / inactive](../../../doc_images/SpatR/Snapshots/SnapshotEnableDisable.png)
Activated snapshot (1) VS. deactivated snapshot (2)

#### Current snapshot

Lastly, the last recalled snapshot is displayed with the "current" field set on. This allows the user to monitor where he is in his show.

![In-play / not-in-play](../../../doc_images/SpatR/Snapshots/SnapshotRecalled.png)
In-play snapshot (2) VS. not-in-play snapshot (1)

### The actions

![Action bar](../../../doc_images/SpatR/Snapshots/SnapshotsListActions.png)

This snapshot list's top bar regroups all the snapshot actions:

- <code>New</code> allows creating a new snapshot, storing the current sources, rooms and masters state.
- <code>Duplicate</code> allows duplicating the current snapshot selected in the snapshot list.
- <code>Update</code> allows updating the selected snapshot in the snapshot list with the current state of the session.
- <code>Remove</code> allows deleting the snapshot(s) selected in the snapshot list.
- <code>Move up</code> moves the selected snapshot(s) up one row in the snapshot list.
- <code>Move down</code> moves the selected snapshot(s) down one row in the snapshot list.
- <code>Recall</code> allows loading a previously saved snapshot selected in the snapshot list.

!> Keep in mind that source with "Snapshot" parameter set off will be stored, but not recalled. Please check the "item page" section for more information.

### Snapshot Index

To recall through OSC a snapshot, the name or the index is required. As snapshot order can be changed, the snapshot index does not depend on the snapshot position in the list. The snapshot index is indicated on each snapshot, on the left side of the recall options.

![Snapshot index](../../../doc_images/SpatR/Snapshots/SelectedSnapshot.png)

It is possible to generate new indexes for all the snapshots according to list order. To do so, click on the menu <code>Snapshot/Reindex all snapshots</code>.

### Recall options

Recalling a snapshot will use four different options:
- The **timing** is the transition time between the current session state and the session state recalled from a snapshot. This allows smoothing out the transition between two scenes and can also be used to create some movements.
- The **source option** defines if the sources state should be recalled. This refers to the sources' position and other properties.
- The **room option** defines if the rooms' state should be recalled. This refers to the reverb parameters of rooms and also the listener head. Be careful with this as some parameters of the reverberation can be recalled without sound dropping.
- The **master option** defines if the masters' state should be recalled. This refers to the master level output.

> By default, only sources' properties are recalled from snapshots.
>
> If only some parameters are recalled, the whole session is stored on the creation of a snapshot.

### Using global options or override them

The snapshot list exposes the four global recall options on its top right corner : the recall timing, the sources recall option, the rooms recall option and the masters recall option. These parameters affect each snapshot with global options activated.

Beside each snapshot, there is a checkbox, under a column named "**Global options**". If the checkbox is checked, the default values of the recall preferences refer to the global value. If the checkbox is unchecked, you can override the global preferences and enter a specific recall value for the snapshot.

### Relative recall option

<code>Relative recall</code> is an option of the recall function. It allows recalling a snapshot while preserving anything that was offset from the previous state. This can help to prevent technical problems during a show.

Here is an example: let's say you have two snapshots, _A_ and _B_. Sources inside your project have different gains between the two snapshots: 0 dB for the snapshot _A_, -5 dB for the snapshot _B_. Now, let's presume that once the show is started, you feel that one of the sources is too quiet (the singer preserves his voice). So you grab the gain parameter and trim by 4 dB. The "Relative recall" function will preserve this offset to any of the future recalled snapshot. Recalling snapshot _B_ will set the gain of the singer to -1 dB instead of -5dB. This allows a perfect blend of live mixing and preparation work.

## Version history

![Snapshot version history](../../../doc_images/SpatR/Snapshots/VersionHistory.png)

In this panel takes place a very powerful feature. For each snapshot, SPAT Revolution automatically stores the last versions. By default, **ten versions** are stored. It is possible to increase or decrease this number on the Snapshot panel of the **Preferences** page. Of course, you can recall any of this ten previous state, remove one.

An entry in the version history has for indication its creation date and time. To describe the version, you can insert a custom note.

The **Active** field allows choosing which version will be used when the snapshot is recalled. Only one version can be activated. 

A set of actions is presented on the top:
  - A previous snapshot version can be recalled by clicking on the <code>Recall</code> button. The recalled version will be indicated by the **Current** field.
  - Versions can be deleted, clicking on <code>Delete</code>.
  - All versions excluding the selected one(s) can be deleted, clicking on <code>Delete all other versions</code>.

## Inspector

The inspector lets you visualize the difference between the current state of your session and the selected snapshot, and selected version of a snapshot.

It allows an easy monitoring of what was changed and how it was changed.

![Inspector](../../../doc_images/SpatR/Snapshots/Inspector.png)

Select the snapshot you want to compare, and click on the <code>Show differences</code>, or use the shortcut <code>Ctrl + D</code> on Windows, <code>Command + D</code> on macOS.

You can group the list by an object name or a property name, or research for objects or properties.

## Propagate through snapshots

In order to edit a large number of snapshots, a propagation system has been implemented into the new **Snapshot Page**.

There are two possibilities to propagate values:
- Propagate the differences between the _current state_ and the _current snapshot_.

This behavior happens by clicking on the <code>Propagate</code> button located on the **Snapshot bar**, or on the top of the snapshot list of the **Snapshot Page**.
- Propagate the differences between the _current state_ and the _selected snapshot and version_. 
It is deeply linked to the **Snapshot inspector**. The <code>Propagate differences</code> action is located on it.

It is possible to propagate the selected differences or all the differences (if no differences are selected).
To select differences, use <code>Ctrl + Click</code> on Windows, or <code>Cmd + Click</code> on macOS to add several items, or <code>Shift + Click</code> to select all between two items.

### Propagate dialog

![Inspector](../../../doc_images/SpatR/Snapshots/PropagateDialog.png)

On the propagate dialog, the selected data will be retrieved, displaying the absolute value which can be applied when validating on <code>Propagate absolute values</code> and the trim value which will be added to each snapshot value when validating with <code>Propagate trim values</code>.

> For example, if my Accordeon has an azimuth value of 50.0, it will become 13.475 propagating with absolute value, and 50.22 propagating with trim value.

On the left panel, the snapshot list is displayed in order to choose the snapshot for which the propagation will be applied.

![Inspector](../../../doc_images/SpatR/Snapshots/PropagateDialogSelectedSnapshots.png)

On the right panel, the differences are displayed. It is possible to select them in order to filter which ones will be propagated. Do not select rows for propagate all the values.
