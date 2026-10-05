# rticks

Set or get radial tick values for polar axes.

## 📝 Syntax

- ticks = rticks()
- rticks(values)
- rticks('auto')
- rticks('manual')
- m = rticks('mode')
- rticks(ax, ...)

## 📥 Input argument

- values - Numeric vector of radial tick values.
- 'auto' - Enable automatic radial tick selection and automatic radial tick labels.
- 'manual' - Keep current radial tick values.
- 'mode' - Return the radial tick mode.
- ax - Target polar axes.

## 📤 Output argument

- ticks - Numeric row vector of radial tick values.
- m - 'auto' or 'manual'.

## 📄 Description


<b>rticks</b> gets or sets radial tick values on the current polar axes. 

Setting numeric tick values switches radial tick mode to <b>manual</b>. If radial tick labels are in automatic mode, labels are regenerated from the new values.

## 💡 Example

Set radial ticks.

```matlab

polarplot(linspace(0, 2*pi, 80), linspace(0, 4, 80));
rticks([0 1 2 3 4]);
ticks = rticks()

```


## 🔗 See also

[rticklabels](../../../graphics/3_labels_styling/1_axes_appearance/rticklabels.md), [rlim](../../../graphics/3_labels_styling/1_axes_appearance/rlim.md), [thetaticks](../../../graphics/3_labels_styling/1_axes_appearance/thetaticks.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
