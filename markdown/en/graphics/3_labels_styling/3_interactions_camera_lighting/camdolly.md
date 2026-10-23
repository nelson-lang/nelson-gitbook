# camdolly

Move the camera position and target.

## 📝 Syntax

- camdolly(dx, dy, dz)
- camdolly(dx, dy, dz, coordsys)
- camdolly(dx, dy, dz, coordsys, units)
- camdolly(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- dx, dy, dz - the displacement along each axis of the chosen coordinate system.
- coordsys - 'camera' (default: dx right, dy up, dz along the view direction) or 'data' (world axes).
- units - 'normalized' (default: relative to the camera-to-target distance) or 'data'.

## 📄 Description


<b>camdolly</b> moves the camera position and the camera target by the same amount, sliding the view across the scene.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camdolly(0.2, 0, 0);
```


## 🔗 See also

[camorbit](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camorbit.md), [camzoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camzoom.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
