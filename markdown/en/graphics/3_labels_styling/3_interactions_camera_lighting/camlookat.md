# camlookat

Aim the camera at an object.

## 📝 Syntax

- camlookat
- camlookat(obj)
- camlookat(ax)

## 📥 Input argument

- obj - a graphics object to look at (for example a surface or line).
- ax - an axes whose contents are framed.

## 📄 Description


<b>camlookat</b> sets the camera target to the center of the object and moves the camera along the current viewing direction so the object fills the view. With no argument it frames the current axes.

## 💡 Example



```matlab
f = figure();
[x, y, z] = sphere(20);
s = surf(x + 5, y - 3, z);
axis equal;
camlookat(s);
```


## 🔗 See also

[camtarget](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camtarget.md), [campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
