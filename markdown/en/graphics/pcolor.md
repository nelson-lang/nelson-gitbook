# pcolor

Pseudocolor plot.

## 📝 Syntax

- pcolor(C)
- pcolor(X, Y, C)
- pcolor(parent, ...)
- go = pcolor(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- C - Color array: m-by-n-by-3 array of RGB triplets.
- parent - a scalar graphics object value: parent container, specified as a axes.

## 📤 Output argument

- go - a graphics object: surface type.

## 📄 Description

<b>pcolor(C)</b> creates a pseudocolor plot of the data in the matrix <b>C</b>, where each cell or 'face' in the plot is colored according to the corresponding value in the matrix.

The color of each face is determined by a colormap, which maps data values to colors.

## 💡 Examples

```matlab
X = linspace(0, 2*pi, 100);
Y = linspace(0, 2*pi, 100);
Z = sin(X' * Y);
f = figure()
pcolor(X, Y, Z)
```

<img src="pcolor_1.svg" align="middle"/>

```matlab
f = figure();
rng('default');
ax1 = subplot(1, 2, 1);
C1 = rand(20, 10);
pcolor(ax1, C1)
ax2 = subplot(1, 2, 2);
C2 = rand(50, 10);
pcolor(ax2, C2)
```

<img src="pcolor_2.svg" align="middle"/>

## 🔗 See also

[surf](../graphics/surf.md), [meshgrid](../elementary_functions/meshgrid.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
