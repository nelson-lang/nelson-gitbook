# xtickformat

Set or get the x-axis tick label format.

## 📝 Syntax

- xtickformat(fmt)
- fmt = xtickformat()
- xtickformat(ax, ...)

## 📥 Input argument

- fmt - Format specifier: a sprintf-style conversion or a preset keyword.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- fmt - Current tick label format.

## 📄 Description

<b>xtickformat</b> sets or gets the format used for the x-axis tick labels of the current axes.

The format applies to automatically generated tick labels.

The format is a sprintf-style conversion (for example <b>%.2f</b> or <b>%g</b>) applied to each numeric tick value. The preset keywords <b>usd</b>, <b>eur</b>, <b>gbp</b>, <b>jpy</b>, <b>degrees</b> and <b>percentage</b> are also accepted. Custom tick labels set with xticklabels take precedence over the format.

## 💡 Example

Format x-axis tick labels.

```matlab

plot(1:10, (1:10) / 4);
xtickformat('%.2f');

```

## 🔗 See also

[xticks](../../../graphics/3_labels_styling/1_axes_appearance/xticks.md), [xticklabels](../../../graphics/3_labels_styling/1_axes_appearance/xticklabels.md), [ytickformat](../../../graphics/3_labels_styling/1_axes_appearance/ytickformat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
