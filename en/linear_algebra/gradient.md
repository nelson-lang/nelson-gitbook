# gradient

Numerical gradient.

## Syntax

- FX = gradient(F)
- [FX, FY] = gradient(F)
- [FX, FY, FZ, ..., FN] = gradient(F)
- [...] = gradient(F, h)
- [...] = gradient(F, hx, hy, ... , hN)

## Input argument

- F - Input array: vector, matrix or multidimensional array.
- h - Uniform spacing between points: scalar or 1 (default).
- hx, hy, ..., hN - Spacing between points: vector, scalar or 1 (default).

## Output argument

- FX, FY, FZ, ..., FN - Numerical gradients: array.

## Description

  <p><b>gradient(F)</b> calculates the one-dimensional numerical gradient of the vector or matrix F.</p>
  <p>The output FX represents the differences in the x (horizontal) direction, corresponding to ∂F/∂x.</p>
  <p>It assumes that the spacing between points is 1.</p>
  <p><b>gradient(F, h)</b> allows for specifying a uniform spacing h between points in each direction.</p>
  <p>This uniform spacing can also be individually specified for each dimension of F using <b>gradient(F, hx, hy, ..., hN)</b>.</p>

## Example

```matlab
[X, Y] = meshgrid(-2:0.2:2);
Z = X .* exp(-X.^2 - Y.^2);
[U, V] = gradient(Z, 0.2, 0.2);
```

## See also

[diff](diff.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.3.0   | initial version |

## Author

Allan CORNET
