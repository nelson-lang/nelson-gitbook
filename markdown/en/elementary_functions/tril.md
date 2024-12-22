# tril

Lower triangular part of matrix

## Syntax

- T = tril(M)
- T = tril(M, k)

## Input argument

- M - 2D input matrix
- k - Diagonals to include: integer real value

## Output argument

- R - Lower Triangular Portions of Matrix

## Description

  <p><b>tril</b> computes Lower Triangular Portions of Matrix.</p>
  <p><b>R = tril(M, k)</b> returns the elements on and above the kth diagonal of M.</p>

## Example

```matlab
x = [1+i,-i;i,2i];
r = tril(x)
```

## See also

[diag](diag.html), [triu](triu.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
