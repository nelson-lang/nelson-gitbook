# camtarget

Set or query the camera target.

## 📝 Syntax

- camtarget
- t = camtarget
- camtarget([x y z])
- camtarget('auto')
- camtarget('manual')
- mode = camtarget('mode')
- camtarget(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- [x y z] - the camera target point, specified as a three-element vector.

## 📤 Output argument

- t - the current camera target, a three-element vector.

## 📄 Description


<b>camtarget</b> sets or queries the <b>CameraTarget</b> property of an axes. 

Specifying a target switches <b>CameraTargetMode</b> to <b>manual</b>.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camtarget([20 20 0]);
t = camtarget()
```


## 🔗 See also

[campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md), [camup](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camup.md), [camlookat](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camlookat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
