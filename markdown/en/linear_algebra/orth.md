# orth

Range space of a matrix.

## Syntax

- O = orth(A)
- O = orth(A, tol)

## Input argument

- A - Input matrix
- tol - a numeric value: scalar, singular value tolerance

## Output argument

- O - real or complex number (double or single).

## Description

  <p><b>O = orth(A)</b> returns an orthonormal basis for the range of <b>A</b>.</p>

## Example

```matlab
M = [10 -20 40; -50 20 0; 10 0 30]
O = orth(M)
```

## See also

[svd](svd.md), [rank](rank.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
