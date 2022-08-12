# tanm

Computes the matrix tangent of a square matrix.

## Syntax

- res = tanm(x)

## Input argument

- x - a numeric value: scalar or square matrix

## Output argument

- res - a numeric value: a square matrix

## Description

<b>tanm(x)</b> computes the matrix tangent of x.

## Example

```matlab
A = eye(3, 3);
res = tanm(A)
A = [1, 2; 3, 4];
res = tanm(A)
```

## See also

[tan](tan.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
