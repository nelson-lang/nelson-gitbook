# colorbar

Colorbar showing color scale.

## Syntax

- colorbar()
- colorbar('off')
- colorbar(..., propertyName, propertyValue)
- colorbar(target, ...)
- colorbar(target, 'off')
- c = colorbar(...)

## Input argument

- propertyName - a scalar string or row vector character.
- propertyValue - a value.
- target - Target: axes.
- 'off' - deletes colorbar associated with the current axes.

## Output argument

- c - graphics object: axes on color bar.

## Description

  <p><b>colorbar</b>adds a color bar into a plot.</p>

## Examples

```matlab
f = figure();
surf(peaks);
colormap('summer');
colorbar()
```

<img src="colorbar_1_CBB5124C.svg" align="middle"/>

```matlab
f = figure();
surf(peaks);
colormap('gray');
cb = colorbar(gca);
```

<img src="colorbar_2_3526FDC1.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
