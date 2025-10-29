# xlim

set or get x-axis limits.

## 📝 Syntax

- lims = xlim()
- xlim([xmin, xmax])
- xlim('auto')
- xlim('manual')
- m = xlim('mode')
- xlim(ax, ...)

## 📥 Input argument

- [xmin, xmax] - x-coordinates: vector or matrix.
- 'auto' - enable automatic limit selection.
- 'manual' - freeze the x-axis limits at their current value.
- 'mode' - returns the current x-axis limits mode.
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📤 Output argument

- lims - two-element vector: [xmin, xmax]
- m - 'auto' or 'manual'.

## 📄 Description

<b>xlim</b> get or set the limits of the x-axis for the current plot.

## 💡 Example

```matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = xlim()
m = xlim('mode')

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
