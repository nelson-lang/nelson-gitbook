# camorbit

Rotate the camera position around the target.

## 📝 Syntax

- camorbit(dtheta, dphi)
- camorbit(dtheta, dphi, coordsys)
- camorbit(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- dtheta - horizontal rotation in degrees.
- dphi - vertical rotation in degrees.
- coordsys - 'data' (default, horizontal rotation about the z axis) or 'camera' (horizontal rotation about the camera up vector).

## 📄 Description


<b>camorbit</b> rotates the camera position around the camera target, keeping the camera-to-target distance constant. It is the programmatic equivalent of orbiting the scene with the mouse.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
for k = 1:36
  camorbit(10, 0);
  drawnow();
end
```


## 🔗 See also

[campan](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campan.md), [camdolly](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camdolly.md), [camroll](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camroll.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
