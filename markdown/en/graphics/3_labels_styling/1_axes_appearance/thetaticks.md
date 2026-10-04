# thetaticks

Set or get angular tick values for polar axes.

## 📝 Syntax

- ticks = thetaticks()
- thetaticks(values)
- thetaticks('auto')
- thetaticks('manual')
- m = thetaticks('mode')
- thetaticks(ax, ...)

## 📥 Input argument

- values - Numeric vector of angular tick values in degrees.
- 'auto' - Enable automatic angular tick selection and automatic angular tick labels.
- 'manual' - Keep current angular tick values.
- 'mode' - Return the angular tick mode.
- ax - Target polar axes.

## 📤 Output argument

- ticks - Numeric row vector of angular tick values in degrees.
- m - 'auto' or 'manual'.

## 📄 Description

<b>thetaticks</b> gets or sets angular tick values on the current polar axes. Tick values are expressed in degrees.

Setting numeric tick values switches angular tick mode to <b>manual</b>. If angular tick labels are in automatic mode, labels are regenerated from the new values.

## 💡 Example

Set angular ticks.

```matlab

polarplot(linspace(0, 2*pi, 80), ones(1, 80));
thetaticks(0:45:360);
ticks = thetaticks()

```

## 🔗 See also

[thetaticklabels](../../../graphics/3_labels_styling/1_axes_appearance/thetaticklabels.md), [thetalim](../../../graphics/3_labels_styling/1_axes_appearance/thetalim.md), [rticks](../../../graphics/3_labels_styling/1_axes_appearance/rticks.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
