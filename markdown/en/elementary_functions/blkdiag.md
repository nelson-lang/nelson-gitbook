# blkdiag

Block diagonal matrix

## Syntax

- R = blkdiag(M1, ... , MN)

## Input argument

- M1, ..., MN - a numeric 2D matrix

## Output argument

- R - a matrix.

## Description

<p>
            R = blkdiag(M1, ... , MN) build the block diagonal matrix created by aligning the input matrices M1, ... , MN along the diagonal of R.</p>

## Example

```matlab
blkdiag(magic(2), magic(3), magic(4))
```

## See also

[diag](../constructors_functions/diag.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
