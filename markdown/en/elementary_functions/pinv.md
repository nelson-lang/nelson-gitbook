# pinv

Moore-Penrose pseudoinverse

## Syntax

- y = pinv(A)
- y = pinv(A, tol)

## Input argument

- A - matrix: input matrix
- tol - scalar: singular value tolerance

## Output argument

- y - Moore-Penrose Pseudoinverse of matrix A.

## Description

<p>
            <b>pinv</b> returns Moore-Penrose Pseudoinverse of matrix A.</p>

## Example

```matlab
A = [1, 2, 3; 4, 5, 6];
R = pinv(A)
R = pinv(A, 2)
```

## See also

[inv](../linear_algebra/inv.md), [svd](../linear_algebra/svd.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
