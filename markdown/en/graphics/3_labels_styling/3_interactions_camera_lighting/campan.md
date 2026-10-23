# campan

Rotate the camera target around the position.

## 📝 Syntax

- campan(dtheta, dphi)
- campan(dtheta, dphi, coordsys)
- campan(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- dtheta - horizontal rotation in degrees.
- dphi - vertical rotation in degrees.
- coordsys - 'data' (default, horizontal rotation about the z axis) or 'camera' (horizontal rotation about the camera up vector).

## 📄 Description


<b>campan</b> rotates the camera target around the camera position, keeping the camera-to-target distance constant. This changes the direction the camera points without moving the camera itself.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
campan(10, 0);
```


## 🔗 See also

[camorbit](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camorbit.md), [camdolly](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camdolly.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
