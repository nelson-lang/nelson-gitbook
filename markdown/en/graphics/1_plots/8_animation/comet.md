# comet

Create 2-D comet plot.

## 📝 Syntax

- comet(y)
- comet(x, y)
- comet(x, y, p)
- comet(ax, x, y, p)

## 📥 Input argument

- x, y - numeric vectors with the same number of elements.
- p - body length scale factor in the interval [0, 1).
- ax - target axes.

## 📄 Description


<b>comet</b> animates a marker head, a trailing body, and a complete trace for a two-dimensional comet plot. 

The final axes state contains two animated line objects and one marker-only line object.

## 💡 Example



```matlab
t = 0:pi/80:2*pi;
comet(cos(t), sin(t), 0.2)
```


## 🔗 See also

[comet3](../../../graphics/1_plots/8_animation/comet3.md), [animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
