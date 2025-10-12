# rref

Gauss-Jordan elimination.

## Syntax

- R = rref(A)
- R = rref(A, tol)
- [R, p] = rref(A)
- [R, p] = rref(A, tol)

## Input argument

- A - input matrix (double or single)
- tol - tolerance: scalar or max(rows, cols) _ eps(class(A)) _ norm(A, inf) (default)

## Output argument

- R - a matrix: reduced row echelon form of A.
- p - a vector: nonzero pivot columns.

## Description

<p>
            R = rref(A) returns the reduced row echelon form of A.</p>

<p>
                [R, p] = rref(A) returns also the nonzero pivots p.</p>

## Bibliography

https://en.wikipedia.org/wiki/Gaussian_elimination

## Example

```matlab
A = [magic(4), eye(4)]
[R, p] = rref(A)
```

## See also

[rank](../linear_algebra/rank.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
