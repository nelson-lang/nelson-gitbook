# jet

Jet colormap array.

## Syntax

- c = jet
- c = jet(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Jet colormap array.

## Description

  <p><b>jet</b> returns the colormap with jet colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('jet');
```

<img src="jet_5A19EC92.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
