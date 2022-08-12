# chol

Cholesky factorization.

## Syntax

- F = chol(A)

## Input argument

- A - a matrix: square and symmetric positive definite.

## Output argument

- F - Cholesky factor.

## Description

  <p><b>F = chol(A)</b> factorizes symmetric positive definite matrix <b>A</b> into an upper triangular F that satisfies <b>A = F' * F</b>.</p>

## Example

```matlab
A = [10 0 10; 0 20 0; 10 0 30];
F = chol(A)
```

## See also

[det](det.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
