# datetick

Date formatted tick labels.

## 📝 Syntax

- datetick()
- datetick(tickaxis)
- datetick(tickaxis, dateFormat)
- datetick(..., 'keeplimits')
- datetick(..., 'keepticks')
- datetick(ax, ...)

## 📥 Input argument

- tickaxis - Axis to label: 'x' (default), 'y' or 'z'.
- dateFormat - Date format, given as a <b>datestr</b> format string (for example 'yyyy') or format number.
- 'keeplimits' - Keep the current axis limits.
- 'keepticks' - Keep the current tick locations.
- ax - Target axes. Default is the current axes.

## 📄 Description

<b>datetick</b> labels the ticks of an axis using dates, treating the tick values as serial date numbers (see <b>datenum</b>).

When no format is given, a format is chosen from the range spanned by the ticks. Use <b>keepticks</b> to preserve the current tick locations and <b>keeplimits</b> to preserve the current limits.

## 💡 Example

Label the x-axis with years.

```matlab

t = datenum(2000, 1, 1):365:datenum(2010, 1, 1);
plot(t, rand(1, numel(t)));
datetick('x', 'yyyy');

```

## 🔗 See also

[xticks](../../../graphics/3_labels_styling/1_axes_appearance/xticks.md), [xticklabels](../../../graphics/3_labels_styling/1_axes_appearance/xticklabels.md), [xtickformat](../../../graphics/3_labels_styling/1_axes_appearance/xtickformat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
