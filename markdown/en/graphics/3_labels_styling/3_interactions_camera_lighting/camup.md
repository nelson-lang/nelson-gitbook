# camup

Set or query the camera up vector.

## 📝 Syntax

- camup
- u = camup
- camup([x y z])
- camup('auto')
- camup('manual')
- mode = camup('mode')
- camup(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- [x y z] - the camera up vector, specified as a three-element vector.

## 📤 Output argument

- u - the current camera up vector, a three-element vector.

## 📄 Description


<b>camup</b> sets or queries the <b>CameraUpVector</b> property of an axes. 

Specifying an up vector switches <b>CameraUpVectorMode</b> to <b>manual</b>.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camup([0 0 1]);
u = camup()
```


## 🔗 See also

[campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md), [camroll](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camroll.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
