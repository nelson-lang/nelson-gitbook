# flip

Flip order of elements

## Syntax

- B = flip(A, dim)

## Input argument

- A - an array
- dim - an positive integer value

## Output argument

- B - flipped array.

## Description

<p>flip return an new array of A flipped about the dimension dim.</p>

## Example

```matlab
x = eye(3, 2);
y = flip(x, 1)
y = flip(x, 2)
y = flip(x, 3)
```

## See also

[flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md), [flipdim](../elementary_functions/flipdim.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
