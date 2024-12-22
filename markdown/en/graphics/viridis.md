# viridis

Viridis colormap array.

## Syntax

- c = viridis
- c = viridis(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Viridis colormap array.

## Description

  <p><b>viridis</b> returns the colormap with viridis colors.</p>

Bibliography

Color map created by Stéfan van der Walt and Nathaniel Smith

## Example

```matlab
f = figure();
surf(peaks);
view(2);
colormap('viridis');
```

<img src="viridis_AB1045AC.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
