# copygraphics

Copy plot to clipboard.

## Syntax

- copygraphics(fig)

## Input argument

- fig - figure object.

## Description

  <p><b>copygraphics</b> copy figure to clipboard.</p>

## Example

```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
copygraphics(gcf());
```

## See also

[gcf](gcf.html), [saveas](saveas.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
