# nebula

Nebula colormap array.

## 📝 Syntax

- c = nebula
- c = nebula(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Nebula colormap array.

## 📄 Description

<b>nebula</b> returns the colormap with nebula colors.

## 💡 Example

```matlab
f = figure();
n = 256;
cmap = nebula(n);
colormap(cmap);
imagesc(peaks(100));
colorbar;
title(['Nebula Colormap with ', num2str(n), ' Colors']);
```

<img src="nebula.svg" align="middle"/>

## 🔗 See also

[colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.14.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
