# slicot_ab01od

Staircase form for multi-input systems using orthogonal state and input transformations.

## Syntax

- [A_OUT, B_OUT, U_OUT, V, NCONT_OUT, INDCON_OUT, KSTAIR_OUT, INFO] = slicot_ab01od(STAGES, JOBU, JOBV, A_IN, B_IN, U_IN, NCONT_IN, INDCON_IN, KSTAIR_IN, TOL)

## Input argument

- STAGES - Specifies the reduction stage: 'F': Perform the forward stage only; 'B': Perform the backward stage only; 'A': Perform both (all) stages.
- JOBU - Indicates whether the user wishes to accumulate in a matrix U the state-space transformations: 'N': Do not form U; 'I': U is internally initialized to the unit matrix
- JOBV - Indicates whether the user wishes to accumulate in a matrix V the input-space transformations: 'N': Do not form V; I': V is initialized to the unit matrix and the orthogonal transformation matrix V is returned.
- A_IN - the leading N-by-N part of this array must contain the state transition matrix A to be transformed
- B_IN - the leading N-by-M part of this array must contain the input matrix B to be transformed.
- U_IN - If STAGES ~= 'B' or JOBU = 'N', then U need not be set on entry. If STAGES = 'B' and JOBU = 'I', then, on entry, the leading N-by-N part of this array must contain the transformation matrix U that reduced the pair to the orthogonal canonical form.
- NCONT_IN - The order of the controllable state-space representation. NCONT_IN is input only if STAGES = 'B'.
- INDCON_IN - The number of stairs in the staircase form (also, the controllability index of the controllable part of the system representation).
- TOL - The tolerance to be used in rank determination when transforming (A, B).

## Output argument

- A*OUT - On exit, the leading N-by-N part of this array contains the transformed state transition matrix U' * A _ U. The leading NCONT-by-NCONT part contains the upper block Hessenberg state matrix Acont in Ac, given by U' _ A \_ U, of a controllable realization for the original system. The elements below the first block-subdiagonal are set to zero. If STAGES ~='F', the subdiagonal blocks of A are triangularized by RQ factorization, and the annihilated elements are explicitly zeroed.
- B*OUT - On exit with STAGES = 'F', the leading N-by-M part of this array contains the transformed input matrix U' * B, with all elements but the first block set to zero. On exit with STAGES ~= 'F', the leading N-by-M part of this array contains the transformed input matrix U' \_ B \* V, with all elements but the first block set to zero and the first block in upper triangular form.
- U_OUT - if JOBU = 'I', the leading N-by-N part of this array contains the transformation matrix U that performed the specified reduction. If JOBU = 'N', the array U is not referenced and can be supplied as a dummy array.
- V - If JOBV = 'I', then the leading M-by-M part of this array contains the transformation matrix V.
- NCONT_OUT - NCONT_OUT is input only if STAGES = 'B'.
- INDCON_OUT - INDCON is input only if STAGES = 'B'.
- KSTAIR_OUT - KSTAIR is input if STAGES = 'B', and output otherwise.
- INFO - 0: successful exit; if INFO = -i, the i-th argument had an illegal value.

## Description

  <p>To reduce the matrices A and B using (and optionally accumulating) state-space and input-space transformations U and V respectively, such that the pair of matrices</p>
  <p>Ac = U' * A * U,    Bc = U' * B * V</p>

Used function(s)

AB01OD

Bibliography

http://slicot.org/objects/software/shared/doc/AB01OD.html

## Example

```matlab
N = 5;
M = 2;
TOL = 0.
STAGES = 'F';
JOBU = 'N';
JOBV = 'N';
A_IN = [17.0   24.0    1.0    8.0   15.0;
   23.0    5.0    7.0   14.0   16.0;
   4.0    6.0   13.0   20.0   22.0;
   10.0   12.0   19.0   21.0    3.0;
   11.0   18.0   25.0    2.0    9.0];

% SLICOT 5.0 have an error in the example.
A_IN = A_IN.';

B_IN = [   -1.0   -4.0;
    4.0    9.0;
   -9.0  -16.0;
   16.0   25.0;
  -25.0  -36.0];

U_IN = zeros(N, N);
INDCON_IN = N;
NCONT_IN = 1;
KSTAIR_IN = zeros(1,N);
[A_OUT, B_OUT, U_OUT, V, NCONT_OUT, INDCON_OUT, KSTAIR_OUT, INFO] = slicot_ab01od(STAGES, JOBU, JOBV, A_IN, B_IN, U_IN, NCONT_IN, INDCON_IN, KSTAIR_IN, TOL)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
