# sparse

Sparse matrix definition.

## Syntax

- sp = sparse(M)
- sp = sparse(m, n)
- sp = sparse(I, J, V)
- sp = sparse(I, J, V, m, n)
- sp = sparse(I, J, V, m, n, nz)

## Input argument

- M - a matrix: double or logical.
- m - an integer value: rows dimension.
- n - an integer value: columns dimension
- I - a vector.
- J - a vector.
- V - a vector.
- nz - an integer value: storage allocation for nonzero elements.

## Output argument

- S - a single.

## Description

  <p><b>sparse</b> is used to build a sparse matrix. Only non-zero entries are stored.</p>
  <p>If <b>M</b>is a full matrix, <b>sparse</b> converts it to a sparse matrix representation, removing all zero values.</p>
  <p>If nz is not specified, <b>sparse</b> uses as default value: nz = max([numel(i), numel(j), numel(v)])</p>
  <p>If multiple values are specified with the same i, j indices, the associated value will be the sum of the values at the repeated index.</p>

## Examples

```matlab
sp = sparse(eye(3,3))
```

```matlab
sp = sparse(3, 3)
```

```matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V)
size(sp)
```

```matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4)
size(sp)
nnz(sp)
nzmax(sp)
```

```matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
```

## See also

[full](full.md), [IJV](IJV.md), [nnz](nnz.md), [nzmax](nzmax.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
