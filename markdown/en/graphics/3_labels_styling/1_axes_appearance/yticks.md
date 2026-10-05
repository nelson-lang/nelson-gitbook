# yticks

Set or get y-axis tick values.

## 📝 Syntax

- ticks = yticks()
- yticks(values)
- yticks('auto')
- yticks('manual')
- m = yticks('mode')
- yticks(ax, ...)

## 📥 Input argument

- values - Numeric vector of y-axis tick values.
- 'auto' - Enable automatic y-tick selection.
- 'manual' - Freeze the current y-tick values.
- 'mode' - Return the y-tick mode.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- ticks - Numeric row vector of y-axis tick values.
- m - 'auto' or 'manual'.

## 📄 Description


<b>yticks</b> gets or sets the tick values along the y-axis of the current axes. 

Specifying tick values switches the y-tick mode to <b>manual</b>.

## 💡 Example

Set y-axis ticks.

```matlab

x = linspace(0, 10, 50);
plot(x, sin(x));
yticks(-1:0.5:1);
ticks = yticks()

```


## 🔗 See also

[yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md), [ytickangle](../../../graphics/3_labels_styling/1_axes_appearance/ytickangle.md), [ylim](../../../graphics/3_labels_styling/1_axes_appearance/ylim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
