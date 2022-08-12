# slicot_ab04md

Discrete-time / continuous-time systems conversion by a bilinear transformation.

## Syntax

- [A_OUT, B_OUT, C_OUT, D_OUT, INFO] = slicot_ab04md(TYPE, ALPHA, BETA, A_IN, B_IN, C_IN, D_IN)

## Input argument

- TYPE - a character: 'D' discrete or 'C' continuous time
- ALPHA, BETA - Parameters specifying the bilinear transformation. Recommended values for stable systems: ALPHA = 1, BETA = 1. ALPHA ~= 0, BETA ~= 0
- A_IN - N-by-N part of this array must contain the state matrix A of the original system.
- B_IN - N-by-M part of this array must contain the input matrix B of the original system.
- C_IN - P-by-N part of this array must contain the output matrix C of the original system.
- D_IN - P-by-M part of this array must contain the input/output matrix D for the original system.

## Output argument

- A_OUT - N-by-N part of this array contains the state matrix \_A of the transformed system.
- B_OUT - N-by-M part of this array contains the input matrix \_B of the transformed system.
- C_OUT - the leading P-by-N part of this array contains the output matrix \_C of the transformed system.
- D_OUT - P-by-M part of this array contains the input/output matrix \_D of the transformed system.
- INFO - Error Indicator: = 0: successful exit;
  less than 0: if INFO = -i, the i-th argument had an illegal value;
  = 1: if the matrix (ALPHA*I + A) is exactly singular;
  = 2: if the matrix (BETA*I - A) is exactly singular.

## Description

  <p> To perform a transformation on the parameters (A, B, C, D) of a system, which is equivalent to a bilinear transformation of the corresponding transfer function matrix.</p>

Used function(s)

AB04MD

Bibliography

http://slicot.org/objects/software/shared/doc/AB04MD.html

## Example

```matlab
N = 2;
M = 2;
P = 2;
TYPE= 'C';
ALPHA = 1;
BETA = 1;
A = [   1.0  0.5; 0.5  1.0];
B = [   0.0 -1.0; 1.0  0.0];
C = [  -1.0  0.0; 0.0  1.0];
D = [   1.0  0.0; 0.0 -1.0];
[A_OUT, B_OUT, C_OUT, D_OUT, INFO] = slicot_ab04md(TYPE, ALPHA, BETA, A, B, C, D)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
