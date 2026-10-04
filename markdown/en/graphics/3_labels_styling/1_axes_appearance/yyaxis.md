# yyaxis

Create or select an axes with two y-axes.

## 📝 Syntax

- yyaxis left
- yyaxis right
- yyaxis(ax, 'left')
- yyaxis(ax, 'right')

## 📥 Input argument

- 'left' - Activate the left side. New plots are added to the left y-axis.
- 'right' - Activate the right side. New plots are added to the right y-axis.
- ax - Target axes: axes.

## 📄 Description

<b>yyaxis</b> creates a chart with two y-axes and selects the active side. If the current axes does not already have two y-axes, one is added; if there is no current axes, one is created.

The two sides share the same x-axis but each has its own limits, colour, scale, direction, ticks, label and children. Properties whose name starts with <b>Y</b> (such as <b>YLim</b>, <b>YColor</b> or <b>YLabel</b>) apply to the active side only. Query <b>YAxisLocation</b> to know which side is active.

By default the left ruler uses the first colour of the axes <b>ColorOrder</b> and the right ruler the second colour.

The two rulers are also available as objects through the axes <b>YAxis</b> property: <b>YAxis(1)</b> is the left ruler and <b>YAxis(2)</b> the right ruler, whatever the active side.

<b>cla reset</b> removes the second y-axis and returns to a single y-axis.

## 💡 Example

```matlab
f = figure();
x = linspace(0, 10);
yyaxis left
plot(x, sin(x))
ylabel('left side')
yyaxis right
plot(x, 100 * cos(x))
ylabel('right side')

```

<img src="yyaxis.svg" align="middle"/>

## 🔗 See also

[hold](../../../graphics/2_graphics_objects/1_object_management/hold.md), [axis](../../../graphics/3_labels_styling/1_axes_appearance/axis.md), [ylabel](../../../graphics/3_labels_styling/4_labels_annotations/ylabel.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
