# camzoom

Zoom the camera in or out.

## 📝 Syntax

- camzoom(zf)
- camzoom(ax, zf)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- zf - the zoom factor, a positive real scalar. A value greater than 1 zooms in, a value less than 1 zooms out.

## 📄 Description


<b>camzoom</b> zooms the camera by dividing the tangent of half the <b>CameraViewAngle</b> by the zoom factor, so the scene appears <b>zf</b> times larger, switching <b>CameraViewAngleMode</b> to <b>manual</b>.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camzoom(2);
```


## 🔗 See also

[camva](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camva.md), [camdolly](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camdolly.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
