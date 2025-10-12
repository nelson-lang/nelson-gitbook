# copper

Copper colormap array.

## Syntax

- c = copper
- c = copper(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Copper colormap array.

## Description

<p>
            copper returns the colormap with copper colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('copper');
```

<img src="copper.svg" align="middle"/>

## See also

[colormap](../graphics/colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
