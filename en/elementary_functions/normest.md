# normest

2-norm estimate

## Syntax

- nrm = normest(A)
- [nrm, count] = normest(A)
- nrm = normest(A, tolerance)
- [nrm, count] = normest(A, tolerance)

## Input argument

- A - Input matrix
- tolerance - Relative error tolerance

## Output argument

- nrm - Matrix norm: scalar.
- count - Number of power iterations: scalar.

## Description

  <p><b>nrm = normest(A)</b> returns an estimate of the 2-norm of the matrix <b>A</b>.</p>

## Example

```matlab
M = [    0    2.4495         0         0         0         0         0
    2.4495         0    3.1623         0         0         0         0
         0    3.1623         0    3.4641         0         0         0
         0         0    3.4641         0    3.4641         0         0
         0         0         0    3.4641         0    3.1623         0
         0         0         0         0    3.1623         0    2.4495
         0         0         0         0         0    2.4495         0];
[nrm, count] = normest(M)
norm(M)
```

## See also

[norm](norm.md), [svd](../linear_algebra/svd.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
