# thetalim

Set or get angular limits for polar axes.

## 📝 Syntax

- lims = thetalim()
- thetalim([thetamin, thetamax])
- thetalim('auto')
- thetalim('manual')
- m = thetalim('mode')
- thetalim(ax, ...)

## 📥 Input argument

- [thetamin, thetamax] - Two-element vector of angular limits in degrees. The second value must be greater than the first value.
- 'auto' - Use automatic angular limits, currently [0 360].
- 'manual' - Keep the current angular limits.
- 'mode' - Return the angular limits mode.
- ax - Target polar axes.

## 📤 Output argument

- lims - Two-element vector of angular limits in degrees.
- m - 'auto' or 'manual'.

## 📄 Description

<b>thetalim</b> gets or sets angular limits for the current polar axes. Unlike <b>polarplot</b> data angles, angular limits are expressed in degrees.

Setting numeric angular limits switches angular limit mode to <b>manual</b>.

## 💡 Example

Display only the upper half of a polar plot.

```matlab

theta = linspace(0, pi, 100);
polarplot(theta, sin(theta));
thetalim([0 180]);
lims = thetalim()

```

## 🔗 See also

[thetaticks](../../../graphics/3_labels_styling/1_axes_appearance/thetaticks.md), [thetaticklabels](../../../graphics/3_labels_styling/1_axes_appearance/thetaticklabels.md), [rlim](../../../graphics/3_labels_styling/1_axes_appearance/rlim.md), [polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
