# yticklabels

Set or query y-axis tick labels.

## 📝 Syntax

- yticklabels(labels)
- yticklabels('auto')
- yticklabels('manual')
- mode = yticklabels('mode')
- labels = yticklabels
- yticklabels(ax, ...)
- labels = yticklabels(ax)

## 📥 Input argument

- labels - string array, cell array of character vectors, or character vector used as y-axis tick labels.
- ax - target axes object. If omitted, the current axes is used.

## 📤 Output argument

- labels - current y-axis tick labels.
- mode - current y-axis tick label mode: 'auto' or 'manual'.

## 📄 Description

<b>yticklabels</b> sets or queries the <b>YTickLabel</b> property of an axes.

Assigning labels switches <b>YTickLabelMode</b> to <b>manual</b>. Use <b>yticklabels('auto')</b> to return to automatic labels.

## 💡 Examples

Set y-axis tick labels for a horizontal bar graph.

```matlab
f = figure();
barh([10 20 30 41]);
yticklabels({'April', 'May', 'June', 'July'});

```

<img src="yticklabels_1.svg" align="middle"/>
Set labels on specified axes and query the mode.

```matlab
f = figure();
ax = axes('Parent', f);
plot(ax, 1:4, [2 4 3 5]);
ax.YTick = 2:5;
yticklabels(ax, ["low"; "mid"; "high"; "top"]);
mode = yticklabels(ax, 'mode')

```

## 🔗 See also

[axes](../../../graphics/2_graphics_objects/1_object_management/axes.md), [barh](../../../graphics/1_plots/6_discrete_data_plots/barh.md).

<!--
## 👤 Author

Allan CORNET
-->
