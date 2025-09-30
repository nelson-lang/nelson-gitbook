# norm

Matrix and vector norms

## Syntax

- R = norm(V)
- R = norm(V, p)
- R = norm(V, 'fro')
- R = norm(M)
- R = norm(M, 1)
- R = norm(M, 2)
- R = norm(M, Inf)
- R = norm(M, 'fro')

## Input argument

- M - a 2D matrix single or double
- V - a vector single or double
- p - a scalar (p-norm)

## Output argument

- R - result of norm: scalar.

## Description

<p>
            <b>norm</b> computes the norm of a vector or a matrix.</p>
<p>Frobenius norm of M is equal to <b>sqrt (sum (diag (M' * M)))</b> .</p>

## Examples

```matlab
M = [1 2; 3 4];
norm(M)
norm(M, 1)
norm(M, 2)
norm(M, Inf)
norm(M, 'fro')
V = [1 2 3 4];
norm(V)
norm(V, 1)
norm(V, 2)
norm(V, Inf)
norm(V, 'fro')
```

```matlab
x = ones(3000, 3000);
tic();R = norm(x);toc
```

## See also

[svd](../linear_algebra/svd.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
