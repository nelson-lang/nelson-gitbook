# campos

Set or query the camera position.

## 📝 Syntax

- campos
- pos = campos
- campos([x y z])
- campos('auto')
- campos('manual')
- mode = campos('mode')
- campos(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- [x y z] - the camera position, specified as a three-element vector.

## 📤 Output argument

- pos - the current camera position, a three-element vector.

## 📄 Description


<b>campos</b> sets or queries the <b>CameraPosition</b> property of an axes. 

Specifying a position switches <b>CameraPositionMode</b> to <b>manual</b>.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
camtarget([0 0 0]);
campos([80 -120 90]);
camva(35);
```


## 🔗 See also

[camtarget](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camtarget.md), [camva](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camva.md), [camproj](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camproj.md), [view](../../../graphics/3_labels_styling/3_interactions_camera_lighting/view.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
