# spones

Replaces non zero sparse matrix elements with ones.

## Syntax

- s = spones(S)

## Input argument

- S - Sparse or 2D matrix.

## Output argument

- S - a sparse matrix.

## Description

  <p><b>s = spones(S)</b> returns a matrix <b>s</b> with the same sparsity structure as <b>S</b>, but with one's in the nonzero positions.</p>

## Example

```matlab
S = sparse([1,0;3,4]);
R = spones(S)
```

## See also

[speye](speye.md), [sparse](sparse.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
