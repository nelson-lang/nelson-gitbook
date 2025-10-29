# colormap

View and set current colormap.

## 📝 Syntax

- colormap(map)
- colormap(target ,map)
- cmap = colormap()
- cmap = colormap(target)

## 📥 Input argument

- map - colormap name, 'default' or RGB triplets (matrix).
- target - Target: figure or axes.

## 📤 Output argument

- cmap - Colormap values: RGB triplets (matrix).

## 📄 Description

<b>colormap</b> allows to view and set the colormap used into a plot.

## 💡 Examples

```matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);
colormap('summer')

```

<img src="colormap_1.svg" align="middle"/>

```matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);
colormap('gray')
```

<img src="colormap_2.svg" align="middle"/>

```matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);

map = [0 0 0.3;
    0 0 0.4;
    0 0 0.5;
    0 0 0.6;
    0 0 0.8;
    0 0 1.0];
colormap(map)
```

<img src="colormap_3.svg" align="middle"/>

## 🔗 See also

[rgbplot](../graphics/rgbplot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
