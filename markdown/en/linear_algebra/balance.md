# balance

Diagonal scaling to improve eigenvalue accuracy.

## Syntax

- B = balance(A)
- B = balance(A,'noperm')
- [T, B] = balance(A)
- [S, P, B] = balance(A)

## Input argument

- A - a matrix: square, finite single or double.

## Output argument

- B - balanced matrix.
- T - similarity transformation: Rearrange the elements of a diagonal matrix containing integer powers of two in order to minimize the impact of roundoff errors.
- S - scaling vector
- P - permutation vector

## Description

<p>
            B = balance(A) returns the balanced matrix B.</p>

<p>
                B = balance(A, 'noperm') scales A without permuting its rows and columns.</p>

## Used function(s)

LAPACKE_dgebal, LAPACKE_sgebal, LAPACKE_zgebal, LAPACKE_cgebal

## Example

```matlab
A = [10  1000  100000; .1  10  1000; .001  .1  10]
F = balance(A)

```

## See also

[eig](../linear_algebra/eig.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
