# blkdiag

Block diagonal matrix

## Syntax

- R = blkdiag(M1, ... , MN)

## Input argument

- M1, ..., MN - a numeric 2D matrix

## Output argument

- R - a matrix.

## Description

  <p><b>R = blkdiag(M1, ... , MN)</b> build the block diagonal matrix created by aligning the input matrices <b>M1, ... , MN</b> along the diagonal of <b>R</b>.</p>

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
