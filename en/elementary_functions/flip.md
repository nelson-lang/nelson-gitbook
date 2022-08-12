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

  <p><b>flip</b> return an new array of <b>A</b> flipped about the dimension <b>dim</b>.</p>

## Example

```matlab
x = eye(3, 2);
y = flip(x, 1)
y = flip(x, 2)
y = flip(x, 3)
```

## See also

[flipud](flipud.md), [fliplr](fliplr.md), [flipdim](flipdim.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
