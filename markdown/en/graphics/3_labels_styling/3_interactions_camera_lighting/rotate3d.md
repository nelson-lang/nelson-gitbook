# rotate3d

Enable rotate mode.

## 📝 Syntax

- rotate3d
- rotate3d option
- rotate3d(fig, ...)
- rotate3d(ax, ...)

## 📥 Input argument

- option - string: 'on', 'off' or 'toggle'.
- fig - Figure object: Target figure
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📄 Description


Use rotate mode to interactively rotate the 3-D axes view during data exploration. Enable or disable rotate mode and configure basic options with the rotate3d function. 

<b>rotate3d option</b> establishes the rotate mode for all axes within the current figure. For instance, rotate3d on activates rotate mode, while rotate3d off deactivates it. 

 

When rotate mode is enabled, you can adjust the view of axes using the cursor or the keyboard: 

 

Cursor: Click and drag within the axes. 

Keyboard: Use the right arrow (->) or left arrow (←) keys to adjust azimuth, and the up arrow (↑) or down arrow (↓) keys to modify elevation.

## 💡 Example



```matlab
surf(peaks)
rotate3d
```


## 🔗 See also

[zoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/zoom.md), [pan](../../../graphics/3_labels_styling/3_interactions_camera_lighting/pan.md), [view](../../../graphics/3_labels_styling/3_interactions_camera_lighting/view.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.2.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
