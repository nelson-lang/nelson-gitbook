# xline

Vertical constant line.

## 📝 Syntax

- xline(xvalue)
- xline(xvalue, LineSpec)
- xline(xvalue, LineSpec, label)
- xline(xvalue, propertyName, propertyValue)
- xline(ax, xvalue)
- cl = xline(xvalue)

## 📥 Input argument

- xvalue - a real numeric scalar or vector: location of the vertical line(s) on the x-axis.
- LineSpec - a row vector character or a scalar string: line style and color, for example <b>'--r'</b>.
- label - a row vector character, a scalar string or a cell of character vectors: text displayed next to the line.
- ax - Target axes: axes object.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- cl - a graphics object: ConstantLine type.

## 📄 Description

<b>xline(xvalue)</b> draws a vertical line at the value <b>xvalue</b> on the current axes. The line spans the full height of the axes.

Use a <b>LineSpec</b> to set the line style and color, and a <b>label</b>to annotate the line.

When <b>xvalue</b> is a vector, one vertical line is created for each value.

## 💡 Examples

```matlab
f = figure();
plot(1:10, (1:10).^2);
xline(5, '--r', 'threshold');

```

```matlab
f = figure();
plot(-10:10, (-10:10).^2);
xline([-3 3], 'Color', [0 0 1], 'LineWidth', 2);

```

## 🔗 See also

[yline](../../../graphics/1_plots/1_line_plots/yline.md), [line](../../../graphics/1_plots/1_line_plots/line.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
