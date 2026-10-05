# addpoints

Add points to animated line.

## 📝 Syntax

- addpoints(an, x, y)
- addpoints(an, x, y, z)

## 📥 Input argument

- an - animatedline graphics object.
- x, y, z - numeric coordinates with the same number of elements.

## 📄 Description


<b>addpoints</b> appends coordinates to an animated line and refreshes the parent figure. 

If <b>z</b> is omitted, zero z-coordinates are stored. 

The <b>MaximumNumPoints</b> property limits stored coordinates and keeps the most recently added points.

## 💡 Example



```matlab
an = animatedline('MaximumNumPoints', 50);
x = linspace(0, 4*pi, 200);
addpoints(an, x, sin(x));
drawnow
```


## 🔗 See also

[animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [clearpoints](../../../graphics/1_plots/8_animation/clearpoints.md), [getpoints](../../../graphics/1_plots/8_animation/getpoints.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
