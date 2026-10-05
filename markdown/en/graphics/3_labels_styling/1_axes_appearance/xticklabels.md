# xticklabels

Set or get x-axis tick labels.

## 📝 Syntax

- labels = xticklabels()
- xticklabels(labels)
- xticklabels('auto')
- xticklabels('manual')
- m = xticklabels('mode')
- xticklabels(ax, ...)

## 📥 Input argument

- labels - Cell array of character vectors or string array of x-axis tick labels.
- 'auto' - Enable automatic x-tick labels.
- 'manual' - Freeze the current x-tick labels.
- 'mode' - Return the x-tick label mode.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- labels - Cell array of character vectors of x-axis tick labels.
- m - 'auto' or 'manual'.

## 📄 Description


<b>xticklabels</b> gets or sets the tick labels along the x-axis of the current axes. 

Specifying labels switches the x-tick label mode to <b>manual</b>.

## 💡 Example

Set x-axis tick labels.

```matlab

bar([10 20 30 41]);
xticks(1:4);
xticklabels({'A','B','C','D'});
labels = xticklabels()

```


## 🔗 See also

[xticks](../../../graphics/3_labels_styling/1_axes_appearance/xticks.md), [xtickangle](../../../graphics/3_labels_styling/1_axes_appearance/xtickangle.md), [yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
