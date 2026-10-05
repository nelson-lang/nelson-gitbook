# rlim

Set or get radial limits for polar axes.

## 📝 Syntax

- lims = rlim()
- rlim([rmin, rmax])
- rlim('auto')
- rlim('manual')
- m = rlim('mode')
- rlim(ax, ...)

## 📥 Input argument

- [rmin, rmax] - Two-element vector. The second value must be greater than the first value.
- 'auto' - Enable automatic radial limit selection from plotted polar data.
- 'manual' - Keep the current radial limits until they are changed explicitly.
- 'mode' - Return the current radial limits mode.
- ax - Target polar axes.

## 📤 Output argument

- lims - Two-element vector: [rmin, rmax].
- m - 'auto' or 'manual'.

## 📄 Description


<b>rlim</b> gets or sets the radial limits of the current polar axes. 

Setting numeric limits switches radial limit mode to <b>manual</b>. Setting mode to <b>auto</b> recomputes limits when the polar axes is refreshed.

## 💡 Example

Set radial limits.

```matlab

theta = linspace(0, 2*pi, 100);
polarplot(theta, 2 + sin(theta));
rlim([0 3]);
currentLimits = rlim()
currentMode = rlim('mode')

```


## 🔗 See also

[polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md), [polaraxes](../../../graphics/1_plots/2_polar_plots/polaraxes.md), [rticks](../../../graphics/3_labels_styling/1_axes_appearance/rticks.md), [thetalim](../../../graphics/3_labels_styling/1_axes_appearance/thetalim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
