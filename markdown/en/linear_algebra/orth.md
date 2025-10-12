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

<p>
            O = orth(A) returns an orthonormal basis for the range of A.</p>

## Example

```matlab
M = [10 -20 40; -50 20 0; 10 0 30]
O = orth(M)

```

## See also

[svd](../linear_algebra/svd.md), [rank](../linear_algebra/rank.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
