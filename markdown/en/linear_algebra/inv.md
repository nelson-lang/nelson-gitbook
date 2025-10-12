# inv

Matrix inverse.

## Syntax

- res = inv(x)

## Input argument

- x - a numeric value: scalar or square matrix (double or single)

## Output argument

- res - a numeric value: a square matrix

## Description

<p>
            inv(x) computes the matrix inverse of x.</p>

## Example

```matlab
X = rand(10, 10);
Y = inv(X);
Y * X

```

## See also

[expm](../linear_algebra/expm.md).

## History

| Version | Description                                             |
| ------- | ------------------------------------------------------- |
| 1.0.0   | initial version                                         |
| 1.4.0   | warning about 'Matrix is singular to working precision' |

## Author

Allan CORNET
