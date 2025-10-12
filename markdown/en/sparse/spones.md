# spones

Replaces non zero sparse matrix elements with ones.

## Syntax

- s = spones(S)

## Input argument

- S - Sparse or 2D matrix.

## Output argument

- S - a sparse matrix.

## Description

<p>
            s = spones(S) returns a matrix s with the same sparsity structure as S, but with one's in the nonzero positions.</p>

## Example

```matlab
S = sparse([1,0;3,4]);
R = spones(S)
```

## See also

[speye](../sparse/speye.md), [sparse](../sparse/sparse.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
