# slicot_mb02md

Solution of Total Least-Squares problem using a SVD approach.

## Syntax

- [RANK_OUT, C_OUT, S, X, IWARN, INFO] = slicot_mb02md(JOB, M, N, L, RANK_IN, C_IN, TOL)

## Input argument

- JOB - Determines whether the values of the parameters RANK and TOL are to be specified by the user or computed by the routine as follows: = 'R': Compute RANK only; = 'T': Compute TOL only; = 'B': Compute both RANK and TOL; = 'N': Compute neither RANK nor TOL.
- M - The number of rows in the data matrix A and the observation matrix B.
- N - The number of columns in the data matrix A.
- L - The number of columns in the observation matrix B.
- RANK_IN - if JOB = 'T' or JOB = 'N', then RANK must specify r, the rank of the TLS approximation [A + DA | B + DB].
- C_IN - the leading M-by-(N+L) part of this array must contain the matrices A and B.
- TOL - A tolerance used to determine the rank of the TLS approximation [A+DA|B+DB] and to check the multiplicity of the singular values of matrix C.

## Output argument

- RANK_OUT - if JOB = 'R' or JOB = 'B', and INFO = 0, then RANK contains the computed (effective) rank of the TLS approximation [A + DA | B + DB].
- C_OUT - the leading (N+L)-by-(N+L) part of this array contains the (transformed) right singular vectors, including null space vectors, if any, of C = [A | B].
- S - If INFO = 0, the singular values of matrix C
- X - If INFO = 0, the leading N-by-L part of this array contains the solution X to the TLS problem specified by A and B.
- IWARN - = 0: no warnings; = 1: if the rank of matrix C has been lowered because a singular value of multiplicity greater than 1 was found; = 2: if the rank of matrix C has been lowered because the upper triangular matrix F is (numerically) singular.
- INFO - = 0: successful exit;

## Description

<p>To solve the Total Least Squares (TLS) problem using a Singular Value Decomposition (SVD) approach. The TLS problem assumes an overdetermined set of linear equations AX = B, where both the data matrix A as well as the observation matrix B are inaccurate. The routine also solves determined and underdetermined sets of equations by computing the minimum norm solution. It is assumed that all preprocessing measures (scaling, coordinate transformations, whitening, ... ) of the data have been performed in advance.</p>

## Bibliography

http://slicot.org/objects/software/shared/doc/MB02MD.html

## Used function(s)

MB02MD

## Example

```matlab
M = 6;
N = 3;
L = 1;
JOB = 'B';
TOL = 0.0;
RANK_IN = 1;
C_IN = [0.80010  0.39985  0.60005  0.89999;
   0.29996  0.69990  0.39997  0.82997;
   0.49994  0.60003  0.20012  0.79011;
   0.90013  0.20016  0.79995  0.85002;
   0.39998  0.80006  0.49985  0.99016;
   0.20002  0.90007  0.70009  1.02994];
[RANK_OUT, C_OUT, S, X, IWARN, INFO] = slicot_mb02md(JOB, M, N, L, RANK_IN, C_IN, TOL)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
