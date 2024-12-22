# slicot_tb01id

Balancing a system matrix corresponding to a triplet (A, B, C).

## Syntax

- [MAXRED_OUT, A_OUT, B_OUT, C_OUT, SCALE, INFO] = slicot_tb01id(JOB, MAXRED_IN, A_IN, B_IN, C_IN)

## Input argument

- JOB - = 'A': All matrices are involved in balancing; = 'B': B and A matrices are involved in balancing; = 'C': C and A matrices are involved in balancing; = 'N': B and C matrices are not involved in balancing.
- MAXRED_IN - the maximum allowed reduction in the 1-norm of S (in an iteration) if zero rows or columns are encountered.
- A_IN - The leading N-by-N part of this array must contain the system state matrix A.
- B_IN - The leading N-by-M part of this array must contain the system input matrix B.
- C_IN - The leading P-by-N part of this array must contain the system output matrix C.

## Output argument

- MAXRED_OUT - if the 1-norm of the given matrix S is non-zero, the ratio between the 1-norm of the given matrix and the 1-norm of the balanced matrix.
- A_OUT - The leading N-by-N part of this array contains the balanced matrix inv(D)*A*D.
- B_OUT - The leading N-by-M part of this array contains the balanced matrix inv(D)\*B.
- C_OUT - The leading P-by-N part of this array contains the balanced matrix C\*D.
- SCALE - The scaling factors applied to S.
- INFO - = 0: successful exit.

## Description

  <p>To reduce the 1-norm of a system matrix corresponding to the triple (A,B,C), by balancing.</p>

Used function(s)

TB01ID

Bibliography

http://slicot.org/objects/software/shared/doc/TB01ID.html

## Example

```matlab
N = 5;
M = 2;
P = 5;
JOB = 'A';
MAXRED_IN = 0.0;

A_IN = [0.0  1.0000e+000          0.0          0.0          0.0;
 -1.5800e+006 -1.2570e+003          0.0          0.0          0.0;
  3.5410e+014          0.0 -1.4340e+003          0.0 -5.3300e+011;
          0.0          0.0          0.0          0.0  1.0000e+000;
          0.0          0.0          0.0 -1.8630e+004 -1.4820e+000];

B_IN = [0.0          0.0;
  1.1030e+002          0.0;
          0.0          0.0;
          0.0          0.0;
          0.0  8.3330e-003];

C_IN = [1.0000e+000          0.0          0.0          0.0          0.0;
          0.0          0.0  1.0000e+000          0.0          0.0;
          0.0          0.0          0.0  1.0000e+000          0.0;
  6.6640e-001          0.0 -6.2000e-013          0.0          0.0;
          0.0          0.0 -1.0000e-003  1.8960e+006  1.5080e+002];
[MAXRED_OUT, A_OUT, B_OUT, C_OUT, SCALE, INFO] = slicot_tb01id(JOB, MAXRED_IN, A_IN, B_IN, C_IN)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
