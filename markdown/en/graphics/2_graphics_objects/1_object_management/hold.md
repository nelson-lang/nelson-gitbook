# hold

Retain current plot when adding new plots.

## 📝 Syntax

- hold('on')
- hold('off')
- hold('all')
- hold()
- hold(ax, ...)

## 📥 Input argument

- 'on' - turn hold on.
- 'off' - turn hold off.
- 'all' - same as hold on.
- ax - Target axes: axes.

## 📤 Output argument

- ax - a graphics object: axes type.

## 📄 Description

<b>hold</b> allows to construct a plot sequence incrementally.

## 💡 Example

```matlab
f = figure();
x = linspace(-pi, pi);
y1 = cos(x);
plot(x, y1)
hold on
y2 = sin(x);
plot(x, y2)
hold off

```

<img src="hold.svg" align="middle"/>

## 🔗 See also

[ishold](../../../graphics/2_graphics_objects/1_object_management/ishold.md), [newplot](../../../graphics/2_graphics_objects/1_object_management/newplot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
