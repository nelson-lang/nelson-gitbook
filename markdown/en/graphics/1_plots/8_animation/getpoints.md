# getpoints

Return points from animated line.

## 📝 Syntax

- [x, y] = getpoints(an)
- [x, y, z] = getpoints(an)

## 📥 Input argument

- an - animatedline graphics object.

## 📤 Output argument

- x, y, z - stored coordinates.

## 📄 Description


<b>getpoints</b> returns only the coordinates stored on the animated line. 

Two-dimensional lines store and return zero z-coordinates when a third output is requested.

## 💡 Example



```matlab
an = animatedline(1:4, [1 4 2 3]);
[x, y, z] = getpoints(an)
```


## 🔗 See also

[animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [addpoints](../../../graphics/1_plots/8_animation/addpoints.md), [clearpoints](../../../graphics/1_plots/8_animation/clearpoints.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
