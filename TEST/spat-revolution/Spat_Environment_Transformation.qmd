# Transformation

It is possible to edit objects all at once using geometric transformation. In _SPAT Revolution_, these transformations are mathematical laws used to distribute points (in our case, speakers) in the space, and can be used in either speakers or sources. In other words, it can help to create circles, spheres or lines of speakers in second instead of minutes.

## Sources Transformations

As with the custom speaker arrangement editor, we can apply some transformations to one or multiple sources. This feature is especially handy if you wish to quickly set sources on a circle, or to put a selection of sources at the distance for examples.

To open the transform menu, right-click on a source in the source panel and choose "Transform." You can also use the shortcut <code>CMD/CTRL + SHIFT + T</code>.

Please check the section about [Speaker Arrangement](Spatialisation_Technology_Speaker_Arrangement.md) if you want more details about the different transform.
Sources’ transformations also include an integration time which allows to create smooth transition between the current and the new source position.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/SourceTransform.png)

## Speaker Transformation

To modify a speaker arrangement with a predefined action, you can use the "transform" menu. To access it, click on the <code>Transform</code> button. A pop-up window will appear.

![width=800, atl=_SPAT Revolution_ Transform Speaker](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditorTransform.png)

**Normalize Distance**: The further speaker will be place at the given distance. All the other speakers will be placed at the relative distance from it.

**Set Elevation**: The first ring of speakers will be placed at the given elevation.

**Offset Distance**: This transformation applies an offset to the distance parameter of all speakers. It preserves the relative position of speakers.

**Offset Position XYZ**: Same as above but with XYZ parameter.

**Scale Distance**: This transformation allows scaling all the speakers inside a certain range of distance. It preserves the relative position of speakers.

**Scale XYZ**: Same as above but with XYZ parameters.

**Rotation Azimuth**: With this transform, we can apply a rotation to our speaker array.

**Mirror**: As its name implies, this transform creates a mirror of the speaker arrangement regarding of a certain axis.

**Linear uniform distribution along the selected axis**: This transformation puts all the speakers on the same axis, with an even space between them.

**Circle**: This transformation places all the speakers on the same circle, with an even space between them.

**Sinus**: This transformation creates a sinus shape with the speakers.