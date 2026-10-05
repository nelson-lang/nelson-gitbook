# clearpoints

Clear points from animated line.

## 📝 Syntax

- clearpoints(an)

## 📥 Input argument

- an - animatedline graphics object.

## 📄 Description


<b>clearpoints</b> removes all stored coordinates from an animated line and refreshes the parent figure.

## 💡 Example



```matlab
an = animatedline(1:5, [2 4 1 3 5]);
clearpoints(an);
[x, y] = getpoints(an)
```


## 🔗 See also

[animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [addpoints](../../../graphics/1_plots/8_animation/addpoints.md), [getpoints](../../../graphics/1_plots/8_animation/getpoints.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
