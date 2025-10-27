# zlim

set or get z-axis limits.

## 📝 Syntax

- lims = zlim()
- zlim([zmin, zmax])
- zlim('auto')
- zlim('manual')
- m = zlim('mode')
- zlim(ax, ...)

## 📥 Input argument

- [zmin, zmax] - z-coordinates: vector or matrix.
- 'auto' - enable automatic limit selection.
- 'manual' - freeze the z-axis limits at their current value.
- 'mode' - returns the current z-axis limits mode.
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📤 Output argument

- lims - two-element vector: [zmin, zmax]
- m - 'auto' or 'manual'.

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

[axes](../graphics/axes.md), [axis](../graphics/axis.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
