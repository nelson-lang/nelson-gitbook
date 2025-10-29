# clim

Set colormap limits.

## 📝 Syntax

- clim(limits)
- clim('auto')
- clim('manual')
- clim(ax, ...)
- lims = clim()

## 📥 Input argument

- limits - New limits: [cmin cmax].
- 'auto' - enables automatic limit updates when values in the colormap indexing array change.
- 'manual' - disables automatic limit update.
- ax - Target object: axes graphics object.

## 📤 Output argument

- lims - [cmin cmax]

## 📄 Description

<b>clim</b> set or get colormap limits.

## 💡 Examples

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X .^ 2 + Y .^ 2;
surf(Z);
limits = clim()

```

<img src="clim_1.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X.^2 + Y.^2;
surf(Z);
clim([25 75])
limits = clim()

```

<img src="clim_2.svg" align="middle"/>

## 🔗 See also

[colormap](../graphics/colormap.md), [colorbar](../graphics/colorbar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
