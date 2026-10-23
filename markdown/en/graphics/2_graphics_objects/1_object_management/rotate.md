# rotate

Rotate graphics objects about an axis.

## 📝 Syntax

- rotate(h, direction, alpha)
- rotate(h, direction, alpha, origin)

## 📥 Input argument

- h - a graphics object or an array of objects with XData/YData(/ZData).
- direction - the rotation axis: a three-element vector [x y z], or a two-element [azimuth elevation] in degrees.
- alpha - the rotation angle in degrees.
- origin - the center of rotation (default: the center of the axes plot box).

## 📄 Description


<b>rotate</b> rotates the graphics objects <b>h</b> by <b>alpha</b> degrees about the axis given by <b>direction</b>, passing through <b>origin</b>. The object data is transformed in place.

## 💡 Example



```matlab
f = figure();
s = surf(peaks(20));
rotate(s, [0 0 1], 45);
```


## 🔗 See also

[gca](../../../graphics/2_graphics_objects/1_object_management/gca.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
