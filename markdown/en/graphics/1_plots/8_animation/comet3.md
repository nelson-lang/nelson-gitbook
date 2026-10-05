# comet3

Create 3-D comet plot.

## 📝 Syntax

- comet3(z)
- comet3(x, y, z)
- comet3(x, y, z, p)
- comet3(ax, x, y, z, p)

## 📥 Input argument

- z - z-values: numeric vector.
- x, y, z - numeric vectors with the same number of elements.
- p - body length scale factor in the interval [0, 1).
- ax - target axes.

## 📄 Description


<b>comet3</b> animates a marker head, a trailing body, and a complete trace for a three-dimensional comet plot. 

<b>comet3(z)</b> plots <b>z</b> against index values on both x and y axes. 

The final axes state contains two animated line objects and one line object for the head marker.

## 💡 Example



```matlab
t = -pi:pi/120:pi;
comet3(sin(5 * t), cos(3 * t), t, 0.2)
```


## 🔗 See also

[comet](../../../graphics/1_plots/8_animation/comet.md), [animatedline](../../../graphics/1_plots/8_animation/animatedline.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
