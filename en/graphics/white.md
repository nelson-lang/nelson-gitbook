# white

white colormap array.

## Syntax

- c = white
- c = white(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - White colormap array.

## Description

  <p><b>white</b> returns the colormap with white colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
view(2);
colormap('white');
```

<img src="white_A7B0A008.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
