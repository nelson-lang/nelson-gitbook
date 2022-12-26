# winter

Winter colormap array.

## Syntax

- c = winter
- c = winter(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Winter colormap array.

## Description

  <p><b>winter</b> returns the colormap with winter colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('winter');
```

<img src="winter_AA835E63.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
