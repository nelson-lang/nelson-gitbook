# camroll

Roll the camera about the viewing axis.

## 📝 Syntax

- camroll(dtheta)
- camroll(ax, dtheta)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- dtheta - the roll angle in degrees.

## 📄 Description


<b>camroll</b> rotates the <b>CameraUpVector</b> about the line joining the camera position and the camera target, rolling the view by the given angle.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camroll(30);
```


## 🔗 See also

[camup](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camup.md), [camorbit](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camorbit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
