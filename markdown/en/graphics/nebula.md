# nebula

Nebula colormap array.

## Syntax

- c = nebula
- c = nebula(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Nebula colormap array.

## Description

  <p><b>nebula</b> returns the colormap with nebula colors.</p>

## Example

```matlab
f = figure();
n = 256;
cmap = nebula(n);
colormap(cmap);
imagesc(peaks(100));
colorbar;
title(['Nebula Colormap with ', num2str(n), ' Colors']);
```

<img src="nebula_BA1B0DA1.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.14.0  | initial version |

## Author

Allan CORNET
