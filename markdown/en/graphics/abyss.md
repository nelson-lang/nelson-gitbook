# abyss

Abyss colormap array.

## Syntax

- c = abyss
- c = abyss(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Abyss colormap array.

## Description

  <p><b>abyss</b> returns the colormap with abyss colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('abyss');
```

<img src="abyss_60679900.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
