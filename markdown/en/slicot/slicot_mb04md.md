# slicot_mb04md

Balancing a general real matrix.

## Syntax

- [MAXRED_OUT, A_OUT, SCALE, INFO] = slicot_mb04md(MAXRED_IN, A_IN)

## Input argument

- MAXRED_IN - The maximum allowed reduction in the 1-norm of A (in an iteration) if zero rows or columns are encountered. If MAXRED greater than 0.0, MAXRED must be larger than one (to enable the norm reduction). If MAXRED less or equal than 0.0, then the value 10.0 for MAXRED is used.
- A_IN - The leading N-by-N part of this array must contain the input matrix A.

## Output argument

- MAXRED_OUT - If the 1-norm of the given matrix A is non-zero, the ratio between the 1-norm of the given matrix and the 1-norm of the balanced matrix. Usually, this ratio will be larger than one, but it can sometimes be one, or even less than one (for instance, for some companion matrices).
- A_OUT - The leading N-by-N part of this array contains the balanced matrix.
- SCALE - The scaling factors applied to A. If D(j) is the scaling factor applied to row and column j, then SCALE(j) = D(j), for j = 1,...,N.
- INFO - = 0: successful exit.

## Description

  <p>To reduce the 1-norm of a general real matrix A by balancing. This involves diagonal similarity transformations applied iteratively to A to make the rows and columns as close in norm as possible.</p>

Used function(s)

MB04MD

Bibliography

http://slicot.org/objects/software/shared/doc/MB04MD.html

## Example

```matlab
MAXRED_IN  = 0.0;
A_IN = [1.0   0.0   0.0   0.0;
 300.0 400.0 500.0 600.0;
   1.0   2.0   0.0   0.0;
   1.0   1.0   1.0   1.0];
[MAXRED_OUT, A_OUT, SCALE, INFO] = slicot_mb04md(MAXRED_IN, A_IN)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
