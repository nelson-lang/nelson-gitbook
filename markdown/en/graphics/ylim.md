# ylim

set or get y-axis limits.

## 📝 Syntax

- lims = ylim()
- ylim([ymin, ymax])
- ylim('auto')
- ylim('manual')
- m = ylim('mode')
- ylim(ax, ...)

## 📥 Input argument

- [ymin, ymax] - y-coordinates: vector or matrix.
- 'auto' - enable automatic limit selection.
- 'manual' - freeze the y-axis limits at their current value.
- 'mode' - returns the current y-axis limits mode.
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📤 Output argument

- lims - two-element vector: [ymin, ymax]
- m - 'auto' or 'manual'.

## 📄 Description

<b>ylim</b> get or set the limits of the y-axis for the current plot.

## 💡 Example

```matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = ylim()
m = ylim('mode')

```

## 🔗 See also

[axes](../graphics/axes.md), [axis](../graphics/axis.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
