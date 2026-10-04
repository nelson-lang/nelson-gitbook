# ztickformat

Set or get the z-axis tick label format.

## 📝 Syntax

- ztickformat(fmt)
- fmt = ztickformat()
- ztickformat(ax, ...)

## 📥 Input argument

- fmt - Format specifier: a sprintf-style conversion or a preset keyword.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- fmt - Current tick label format.

## 📄 Description

<b>ztickformat</b> sets or gets the format used for the z-axis tick labels of the current axes.

The format applies to automatically generated tick labels.

The format is a sprintf-style conversion (for example <b>%.2f</b> or <b>%g</b>) applied to each numeric tick value. The preset keywords <b>usd</b>, <b>eur</b>, <b>gbp</b>, <b>jpy</b>, <b>degrees</b> and <b>percentage</b> are also accepted. Custom tick labels set with zticklabels take precedence over the format.

## 💡 Example

Format z-axis tick labels.

```matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t / 4);
ztickformat('%.1f');

```

## 🔗 See also

[zticks](../../../graphics/3_labels_styling/1_axes_appearance/zticks.md), [zticklabels](../../../graphics/3_labels_styling/1_axes_appearance/zticklabels.md), [xtickformat](../../../graphics/3_labels_styling/1_axes_appearance/xtickformat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
