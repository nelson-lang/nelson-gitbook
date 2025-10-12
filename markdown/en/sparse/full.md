# full

Sparse to full matrix conversion.

## Syntax

- M = full(sp)

## Input argument

- sp - a matrix: double or logical, sparse.

## Output argument

- M - a matrix.

## Description

<p>
            full converts a sparse matrix into its full representation.</p>

<p> If input argument is already full then output argument will be equal to input argument.</p>

## Example

```matlab
sp = sparse(eye(3,3))
F = full(sp)
```

## See also

[sparse](../sparse/sparse.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
