# xlim

set or get x-axis limits.

## 📝 Syntax

- lims = xlim()
- xlim([xmin, xmax])
- xlim('auto')
- xlim('manual')
- m = xlim('mode')
- method = xlim('method')
- xlim('tight')
- xlim('padded')
- xlim('tickaligned')
- xlim(ax, ...)

## 📥 Input argument

- [xmin, xmax] - x-coordinates: vector or matrix.
- 'auto' - enable automatic limit selection.
- 'manual' - freeze the x-axis limits at their current value.
- 'mode' - returns the current x-axis limits mode.
- 'method' - returns the current automatic x-axis limit selection method.
- 'tight', 'padded' or 'tickaligned' - sets the automatic x-axis limit selection method.
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📤 Output argument

- lims - two-element vector: [xmin, xmax]
- m - 'auto' or 'manual'.
- method - 'tight', 'padded' or 'tickaligned'.

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

[axes](../../../graphics/2_graphics_objects/1_object_management/axes.md), [axis](../../../graphics/3_labels_styling/1_axes_appearance/axis.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
