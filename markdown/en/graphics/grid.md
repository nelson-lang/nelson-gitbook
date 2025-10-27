# grid

Display or hide axes grid lines.

## 📝 Syntax

- grid
- grid('on')
- grid('off')
- grid('minor')
- grid(ax, ...)

## 📥 Input argument

- 'on' - displays the major grid line.
- 'off' - removes all grid lines.
- 'minor' - toggles the visibility of the minor grid lines.
- ax - Target object: axes.

## 📄 Description

<b>grid()</b> toggles the visibility of the major grid lines.

## 💡 Example

```matlab
f = figure();
x = linspace(0, 20);
y = cos(x);
plot(x, y)
grid on
```

<img src="grid.svg" align="middle"/>

## 🔗 See also

[axes](../graphics/axes.md), [plot](../graphics/plot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
