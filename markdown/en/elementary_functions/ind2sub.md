# ind2sub

Linear index to matrix subscript values

## Syntax

- [row, col] = ind2sub(sz, ind)
- [I1, I2, ..., In] = ind2sub(sz, ind)

## Input argument

- sz - size of array: vector of positive integers.
- ind - linear indices.

## Output argument

- row - row subscripts.
- col - column subscripts.
- I1, I2, ..., In - multidimensional subscripts.

## Description

<p>
            ind2sub converts linear indices to subscript.</p>

## Example

```matlab
ind = [4 5 6 7];
sz = [4 4];
[row,col] = ind2sub(sz,ind)
```

## See also

[sub2ind](../elementary_functions/sub2ind.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
