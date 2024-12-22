# permute

Permute array dimensions.

## Syntax

- R = permute(A, order)

## Input argument

- A - an array.
- order - Dimension order: row vector

## Output argument

- R - result array rearranged with new dimension order.

## Description

<b>permute</b> permutes the dimensions of an array.

## Example

```matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
```

## See also

[ipermute](ipermute.md), [reshape](reshape.md), [transpose](../operators/transpose.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
