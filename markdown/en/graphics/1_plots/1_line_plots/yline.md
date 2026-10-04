# yline

Horizontal constant line.

## 📝 Syntax

- yline(yvalue)
- yline(yvalue, LineSpec)
- yline(yvalue, LineSpec, label)
- yline(yvalue, propertyName, propertyValue)
- yline(ax, yvalue)
- cl = yline(yvalue)

## 📥 Input argument

- yvalue - a real numeric scalar or vector: location of the horizontal line(s) on the y-axis.
- LineSpec - a row vector character or a scalar string: line style and color, for example <b>'--r'</b>.
- label - a row vector character, a scalar string or a cell of character vectors: text displayed next to the line.
- ax - Target axes: axes object.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- cl - a graphics object: ConstantLine type.

## 📄 Description

<b>yline(yvalue)</b> draws a horizontal line at the value <b>yvalue</b> on the current axes. The line spans the full width of the axes.

Use a <b>LineSpec</b> to set the line style and color, and a <b>label</b>to annotate the line.

When <b>yvalue</b> is a vector, one horizontal line is created for each value.

## 💡 Examples

```matlab
f = figure();
plot(1:10, (1:10).^2);
yline(50, '-.b', 'mean');

```

```matlab
f = figure();
plot(1:10, sin(1:10));
yline([-1 0 1], 'Color', [0 0 1]);

```

## 🔗 See also

[xline](../../../graphics/1_plots/1_line_plots/xline.md), [line](../../../graphics/1_plots/1_line_plots/line.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
