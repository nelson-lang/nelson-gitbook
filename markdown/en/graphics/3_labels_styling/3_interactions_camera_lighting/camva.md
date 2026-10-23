# camva

Set or query the camera view angle.

## 📝 Syntax

- camva
- a = camva
- camva(angle)
- camva('auto')
- camva('manual')
- mode = camva('mode')
- camva(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- angle - the camera view angle in degrees, a real scalar in the range (0, 180).

## 📤 Output argument

- a - the current camera view angle in degrees.

## 📄 Description


<b>camva</b> sets or queries the <b>CameraViewAngle</b> property of an axes. 

The view angle is the field of view of the camera: a larger angle makes the scene appear smaller. With a perspective projection it controls the strength of the foreshortening. Specifying an angle switches <b>CameraViewAngleMode</b> to <b>manual</b>.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camva(30);
```


## 🔗 See also

[campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md), [camzoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camzoom.md), [camproj](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camproj.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
