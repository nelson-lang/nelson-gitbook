# slicot_tg01ad

Balancing the matrices of the system pencil corresponding to a descriptor triple (A-lambda E, B, C).

## Syntax

- [A_OUT, E_OUT, B_OUT, C_OUT, LSCALE, RSCALE, INFO] = slicot_tg01ad(JOB, THRESH, A_IN, E_IN, B_IN, C_IN)

## Input argument

- JOB - = 'A': All matrices are involved in balancing; = 'B': B, A and E matrices are involved in balancing; = 'C': C, A and E matrices are involved in balancing; = 'N': B and C matrices are not involved in balancing.
- THRESH - Threshold value for magnitude of elements: elements with magnitude less than or equal to THRESH are ignored for balancing.
- A_IN - The leading L-by-N part of this array must contain the state dynamics matrix A.
- E_IN - The leading L-by-N part of this array must contain the descriptor matrix E.
- B_IN - The leading L-by-M part of this array must contain the input/state matrix B.
- C_IN - The leading P-by-N part of this array must contain the state/output matrix C.

## Output argument

- A_OUT - The leading L-by-N part of this array contains the balanced matrix Dl*A*Dr.
- E_OUT - The leading L-by-N part of this array contains the balanced matrix Dl*E*Dr.
- B_OUT - The leading L-by-M part of this array contains the balanced matrix Dl\*B.
- C_OUT - The leading P-by-N part of this array contains the balanced matrix C\*Dr.
- LSCALE - The scaling factors applied to S from left.
- RSCALE - The scaling factors applied to S from right.
- INFO - = 0: successful exit.

## Description

<p>To balance the matrices of the system pencil corresponding to the descriptor triple (A-lambda E,B,C), by balancing.</p>

## Bibliography

http://slicot.org/objects/software/shared/doc/TG01AD.html

## Used function(s)

TG01AD

## Example

```matlab
L = 4;
N = 4;
M = 2;
P = 2;
JOB = 'A';
THRESH = 0;

A_IN = [ -1         0         0    0.003;
         0         0    0.1000    0.02;
       100        10         0    0.4;
         0         0         0    0.0];

E_IN = [1       0.2         0    0.0;
         0         1         0    0.01;
       300        90         6    0.3;
         0         0        20    0.0];

B_IN = [10         0;
         0         0;
         0      1000;
     10000     10000];

C_IN = [-0.1      0.0    0.001    0.0;
       0.0      0.01  -0.001    0.0001];

[A_OUT, E_OUT, B_OUT, C_OUT, LSCALE, RSCALE, INFO] = slicot_tg01ad(JOB, THRESH, A_IN, E_IN, B_IN, C_IN)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
