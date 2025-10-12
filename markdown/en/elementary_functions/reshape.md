# reshape

Reshapes a vector or a matrix to a different size matrix.

## Syntax

- M2 = reshape(M1, s1, ... ,sN)
- M2 = reshape(M1, ..., [], ...)
- M2 = reshape(M1, size)

## Input argument

- M1 - a vector or an matrix
- size - a size vector
- s1, ... ,sN - a s1 - by - ... - by - sN array where s1, ..., sN indicates the size of each dimension.

## Output argument

- M2 - Matrix reshaped

## Description

<p>
            reshape performs a reshape to a different size matrix. If only one dimension is specified, reshape will determine complementary size automatically. [ ] is used to unspecify the dimension.</p>

## Example

```matlab
M1 = ones(3, 4, 5);
M2 = reshape(M1, [5, 3, 4])
M2 = reshape(M1, 5, [], 4)

```

## See also

[colon](../elementary_functions/colon.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
