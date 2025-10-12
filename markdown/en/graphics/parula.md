# parula

Parula colormap array.

## Syntax

- c = parula
- c = parula(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Parula colormap array.

## Description

<p>
            parula returns the colormap with parula colors.</p>

<p>
                parula is the default colormap.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('parula');
```

<img src="parula.svg" align="middle"/>

## See also

[colormap](../graphics/colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
