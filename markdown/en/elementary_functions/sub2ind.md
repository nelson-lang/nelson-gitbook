# sub2ind

Matrix subscript values to linear index

## Syntax

- ind = sub2ind(sz, row, col)
- ind = sub2ind(sz, I1, I2, ..., In)

## Input argument

- sz - size of array: vector of positive integers.
- row - row subscripts.
- col - column subscripts.
- I1, I2, ..., In - multidimensional subscripts.

## Output argument

- ind - linear indices.

## Description

<p>
            <b>ind2sub</b> converts subscripts to linear indices. .</p>

## Example

```matlab
row = [2 3 4 2];
col = [2 2 2 3];
sz = [3 3];
ind = sub2ind(sz, row, col)
```

## See also

[ind2sub](../elementary_functions/sub2ind.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
