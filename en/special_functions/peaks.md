# peaks

Peaks function

## Syntax

- Z = peaks()
- Z = peaks(n)
- Z = peaks(Xi, Yi)
- [X, Y, Z] = peaks()
- [X, Y, Z] = peaks(n)
- [X, Y, Z] = peaks(Xi, Yi)

## Input argument

- n - Value representing 2-D grid: scalar or vector.
- Xi - x-coordinates of points.
- Yi - y-coordinates of points.

## Output argument

- X - x-coordinates of points.
- Y - y-coordinates of points.
- Z - z-coordinates of points.

## Description

  <p><b>peaks</b> function has the form:</p>
  <p>
    <b>f(x, y) = 3*(1-x)^2*exp(-x^2 - (y+1)^2) - 10*(x/5 - x^3 - y^5)*exp(-x^2-y^2) - 1/3*exp(-(x+1)^2 - y^2)</b>
  </p>

## Example

```matlab
x = -2:0.5:2;
y = 1:0.2:2;
[X, Y] = meshgrid(x, y);
Z = peaks(X, Y)
```

## See also

[meshgrid](../elementary_functions/meshgrid.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
