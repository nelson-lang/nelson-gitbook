# ytickformat

Set or get the y-axis tick label format.

## 📝 Syntax

- ytickformat(fmt)
- fmt = ytickformat()
- ytickformat(ax, ...)

## 📥 Input argument

- fmt - Format specifier: a sprintf-style conversion or a preset keyword.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- fmt - Current tick label format.

## 📄 Description


<b>ytickformat</b> sets or gets the format used for the y-axis tick labels of the current axes. 

The format applies to automatically generated tick labels. 

The format is a sprintf-style conversion (for example <b>%.2f</b> or <b>%g</b>) applied to each numeric tick value. The preset keywords <b>usd</b>, <b>eur</b>, <b>gbp</b>, <b>jpy</b>, <b>degrees</b> and <b>percentage</b> are also accepted. Custom tick labels set with yticklabels take precedence over the format.

## 💡 Example

Format y-axis tick labels.

```matlab

plot(1:10, (1:10) * 100);
ytickformat('usd');

```


## 🔗 See also

[yticks](../../../graphics/3_labels_styling/1_axes_appearance/yticks.md), [yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md), [xtickformat](../../../graphics/3_labels_styling/1_axes_appearance/xtickformat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
