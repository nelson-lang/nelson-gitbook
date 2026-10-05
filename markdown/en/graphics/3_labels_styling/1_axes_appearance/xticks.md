# xticks

Set or get x-axis tick values.

## 📝 Syntax

- ticks = xticks()
- xticks(values)
- xticks('auto')
- xticks('manual')
- m = xticks('mode')
- xticks(ax, ...)

## 📥 Input argument

- values - Numeric vector of x-axis tick values.
- 'auto' - Enable automatic x-tick selection.
- 'manual' - Freeze the current x-tick values.
- 'mode' - Return the x-tick mode.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- ticks - Numeric row vector of x-axis tick values.
- m - 'auto' or 'manual'.

## 📄 Description


<b>xticks</b> gets or sets the tick values along the x-axis of the current axes. 

Specifying tick values switches the x-tick mode to <b>manual</b>.

## 💡 Example

Set x-axis ticks.

```matlab

x = linspace(0, 10, 50);
plot(x, sin(x));
xticks(0:2:10);
ticks = xticks()

```


## 🔗 See also

[xticklabels](../../../graphics/3_labels_styling/1_axes_appearance/xticklabels.md), [xtickangle](../../../graphics/3_labels_styling/1_axes_appearance/xtickangle.md), [xlim](../../../graphics/3_labels_styling/1_axes_appearance/xlim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
