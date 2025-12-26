# waterfall

waterfall plot.

## 📝 Syntax

- waterfall(X, Y, Z)
- waterfall(Z)
- waterfall(Z, C)
- waterfall(X, Y, Z, C)
- waterfall(parent, ...)
- waterfall(..., propertyName, propertyValue)
- go = waterfall(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: vector or matrix.
- C - Color array: m-by-n-by-3 array of RGB triplets.
- parent - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: surface type.

## 📄 Description

<b>waterfall</b> creates a waterfall plot, which is a mesh plot with a partial curtain along the y dimension.

This results in a 'waterfall' effect.

The function takes the same input arguments as the <b>mesh</b> function.

## 💡 Examples

```matlab
f = figure();
Z = peaks();
waterfall(Z);
title ("waterfall function");

```

<img src="waterfall_1.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
p = waterfall(X, Y, Z);

```

<img src="waterfall_2.svg" align="middle"/>

## 🔗 See also

[mesh](../graphics/mesh.md), [meshgrid](../elementary_functions/meshgrid.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
