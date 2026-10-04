# zlim

set or get z-axis limits.

## 📝 Syntax

- lims = zlim()
- zlim([zmin, zmax])
- zlim('auto')
- zlim('manual')
- m = zlim('mode')
- method = zlim('method')
- zlim('tight')
- zlim('padded')
- zlim('tickaligned')
- zlim(ax, ...)

## 📥 Input argument

- [zmin, zmax] - z-coordinates: vector or matrix.
- 'auto' - enable automatic limit selection.
- 'manual' - freeze the z-axis limits at their current value.
- 'mode' - returns the current z-axis limits mode.
- 'method' - returns the current automatic z-axis limit selection method.
- 'tight', 'padded' or 'tickaligned' - sets the automatic z-axis limit selection method.
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📤 Output argument

- lims - two-element vector: [zmin, zmax]
- m - 'auto' or 'manual'.
- method - 'tight', 'padded' or 'tickaligned'.

## 📄 Description

<b>zlim</b> get or set the limits of the z-axis for the current plot.

## 💡 Example

```matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = zlim()
m = zlim('mode')

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
