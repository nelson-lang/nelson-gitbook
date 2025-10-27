# view

Camera line of sigh.

## 📝 Syntax

- view(az, el)
- view([az, el])
- view([x, y, z])
- view(dim)
- view(ax, ...)
- [az, el] = view(...)

## 📥 Input argument

- dim - Dimensions: 2 equivalent to view(0, 90) or 3 equivalent to view(-37.5, 30).
- az - Azimuth: scalar
- el - Elevation: scalar
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📄 Description

<b>view</b> sets the view into a plot.

## 💡 Examples

```matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
```

<img src="view_1.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(90, 0)
```

<img src="view_2.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(2)
```

<img src="view_3.svg" align="middle"/>

## 🔗 See also

[axes](../graphics/axes.md).

## 🕔 History

| Version | 📄 Description                             |
| ------- | ------------------------------------------ |
| 1.0.0   | initial version                            |
| 1.2.0   | azimuth and elevation as output arguments. |

## 👤 Author

Allan CORNET
