# Items' page

This page gives an overview and allow to edit the major parameters for each type of items (Input, Source, Room, etc.)

![The items' page](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ItemsPage/ItemsPage.png)

The following video illustrates some possibilities that this page offers.

![The Items' page demo](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ItemsPage/ItemsPageDemo.gif)

## Items' type selection

The upper left list control allows to choose which kind of items you want to display in the Items' Page.

![Items' selection](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ItemsPage/ItemsPage_item_selection.gif)


## Parameters

Depending on the selected item's type, the editable parameters are the following.

### Common parameters

For all items (except Snapshots) the items' page allows quick edition of: 

- **Number**: the item number order of the list. 
- **Name**: edit this field to change the name of the item
- **Active**: define if the item is computed or not. _If the item is inactive due to license restriction, the field cannot be edited_

### Source specific parameters

In addition to the common parameters, when the _Source_ item's type is selected, the Items' Page allows quick edit of:

- **Color**: select the color of the source
- **Room**: list the rooms' names the source belongs to. _The rows can be grouped by rooms. See [Group sources by rooms](Items_Page.md#Group sources by rooms)_
- **Speaker arrangement**: select the speaker arrangement of the source.
- **Remote**: define if the source can be controlled by OSC or not.
- **Remote number**: define the index of the source on OSC side. _If set to 0, the remote number is equal to the source number. Careful with this behavior: this will be edited with the source order._
- **Automation**: define if the source can be controlled by automation via Local Audio Path.
- **Snapshot**: define if the source can be controlled by snapshot recall.
- **Tracking number**: define the RTTrPM beacon number used for control this source. If set to 0, the tracking will be disabled. _Ultimate license only._ 
- **Gain**: define the gain of the source.
- **Mute**: define the mute status of the source.

![Items page for sources](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ItemsPage/Sources.png)

### Input specific parameters

In addition to the common parameters, when the _Input_ item's type is selected, the Items' Page shows:

- **Type**: displays if the input is _Live inpput_ or _Signal generator_.
- **Connected**: displays if the input is connected to other items. 

![Items page for sources](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ItemsPage/Inputs.png)

### Snapshot specific parameters

Regarding the Snapshots, the Items' page shows and allow to edit the following information:

<!-- todo document ! and add picture -->

## Navigation

In order to give an easy navigation on this page and its parameters, keyboard shortcuts have been implemented, including powerful multi-selection and edition.

- <code>Up</code>: select the cell of the previous row.
- <code>Shift + Up</code>: add the previous row to the row selection.
- <code>Down</code>: select the celle of the next row.
- <code>Shift + Down</code>: add the next row to the row selection.
- <code>Shift + click</code>: select all the rows in between the two selected
- <code>Ctrl + click</code>: select only the wanted rows.
- <code>Left key</code>: select the previous cell.
- <code>Right key</code>: select the next cell.
- <code>Space</code> on an on/off button: it will toggle the button for the actual selection.
- <code>Enter</code> (return) on a string or float edit, or a list: it will begin the edit of the selected cell. Using it a second time will edit the cell of the next row.
- <code>Home</code>: go to the first row.
- <code>End</code>: go to the last row.
- <code>Page Up</code>: select the cell on the previous page.
- <code>Page Down</code>: select the cell on the next page.

## Filtering and Group by

To go further in easing the edition of parameters, the Items' page allows to filter of the displayed data. Moreover, for sources, they can be grouped according to the rooms they belong to.

### Filtering
Enter text in the top search field to filter the displayed objects. 

### Group sources by rooms

![Group by rooms](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ItemsPage/GroupBy.gif)

