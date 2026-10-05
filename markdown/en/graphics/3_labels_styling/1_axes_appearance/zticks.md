# zticks

Set or get z-axis tick values.

## 📝 Syntax

- ticks = zticks()
- zticks(values)
- zticks('auto')
- zticks('manual')
- m = zticks('mode')
- zticks(ax, ...)

## 📥 Input argument

- values - Numeric vector of z-axis tick values.
- 'auto' - Enable automatic z-tick selection.
- 'manual' - Freeze the current z-tick values.
- 'mode' - Return the z-tick mode.
- ax - Target axes. Default is the current axes.

## 📤 Output argument

- ticks - Numeric row vector of z-axis tick values.
- m - 'auto' or 'manual'.

## 📄 Description


<b>zticks</b> gets or sets the tick values along the z-axis of the current axes. 

Specifying tick values switches the z-tick mode to <b>manual</b>.

## 💡 Example

Set z-axis ticks.

```matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t);
zticks(0:2:10);
ticks = zticks()

```


## 🔗 See also

[zticklabels](../../../graphics/3_labels_styling/1_axes_appearance/zticklabels.md), [ztickangle](../../../graphics/3_labels_styling/1_axes_appearance/ztickangle.md), [zlim](../../../graphics/3_labels_styling/1_axes_appearance/zlim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
