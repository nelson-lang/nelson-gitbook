# bdschur

Block-diagonal Schur factorization.

## Syntax

- [T, B] = bdschur(A)
- [T, B] = bdschur(A, CONDMAX)

## Input argument

- A - Square real matrix.
- CONDMAX - upper bound on the condition number of T. By default, CONDMAX = 1e4.

## Output argument

- T - Transformation matrix.
- B - B = T \ A \* T

## Description

<p>
            <b>[T, B] = bdschur(A, CONDMAX)</b> calculates a transformation matrix <b>T</b>, where <b>B = T \ A * T</b> results in a block diagonal matrix with each block being a quasi upper-triangular Schur matrix, ensuring the diagonalization of matrix A while preserving certain structural properties.</p>

## Bibliography

http://slicot.org/objects/software/shared/doc/MB03RD.html

## Used function(s)

MB03RD

## Example

```matlab

A = [1.   -1.    1.    2.    3.    1.    2.    3.;
   1.    1.    3.    4.    2.    3.    4.    2.;
   0.    0.    1.   -1.    1.    5.    4.    1.;
   0.    0.    0.    1.   -1.    3.    1.    2.;
   0.    0.    0.    1.    1.    2.    3.   -1.;
   0.    0.    0.    0.    0.    1.    5.    1.;
   0.    0.    0.    0.    0.    0.    0.99999999   -0.99999999;
   0.    0.    0.    0.    0.    0.    0.99999999    0.99999999];
[T, B] = bdschur(A)

```

## See also

[slicot_mb03rd](../slicot/slicot_mb03rd.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
