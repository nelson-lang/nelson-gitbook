# zticklabels

Set or get z-axis tick labels.

## 📝 Syntax

- labels = zticklabels()
- zticklabels(labels)
- zticklabels('auto')
- zticklabels('manual')
- m = zticklabels('mode')
- zticklabels(ax, ...)

## 📥 Input argument

- labels - Cell array of character vectors or string array of z-axis tick labels.
- 'auto' - Enable automatic z-tick labels.
- 'manual' - Freeze the current z-tick labels.
- 'mode' - Return the z-tick label mode.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- labels - Cell array of character vectors of z-axis tick labels.
- m - 'auto' or 'manual'.

## 📄 Description

<b>zticklabels</b> gets or sets the tick labels along the z-axis of the current axes.

Specifying labels switches the z-tick label mode to <b>manual</b>.

## 💡 Example

Set z-axis tick labels.

```matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t);
zticks([0 5 10]);
zticklabels({'low','mid','high'});
labels = zticklabels()

```

## 🔗 See also

[zticks](../../../graphics/3_labels_styling/1_axes_appearance/zticks.md), [ztickangle](../../../graphics/3_labels_styling/1_axes_appearance/ztickangle.md), [yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
