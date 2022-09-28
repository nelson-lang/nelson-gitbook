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

  <p><b>R = rref(A)</b> returns the reduced row echelon form of <b>A</b>.</p>
  <p><b>[R, p] = rref(A)</b> returns also the nonzero pivots <b>p</b>.</p>

Bibliography

https://en.wikipedia.org/wiki/Gaussian_elimination

## Example

```matlab
A = [magic(4), eye(4)]
[R, p] = rref(A)
```

## See also

[rank](rank.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
