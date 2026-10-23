# camproj

Set or query the camera projection type.

## 📝 Syntax

- camproj
- p = camproj
- camproj('orthographic')
- camproj('perspective')
- camproj(ax, ...)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.
- type - the projection type: 'orthographic' or 'perspective'.

## 📤 Output argument

- p - the current projection type.

## 📄 Description


<b>camproj</b> sets or queries the <b>Projection</b> property of an axes. 

An <b>orthographic</b> projection keeps parallel lines parallel and the apparent size independent of distance. A <b>perspective</b> projection adds foreshortening, so objects farther from the camera appear smaller.

## 💡 Example



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
p = camproj()
```


## 🔗 See also

[camva](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camva.md), [campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
