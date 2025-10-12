# flipdim

Flip array along specified dimension

## Syntax

- B = flipdim(A, dim)

## Input argument

- A - an array
- dim - an positive integer value

## Output argument

- B - flipped array.

## Description

<p>flipdim return an new array of A flipped about the dimension dim.</p>

<p>flipdim is similar to flip and available for compatibility with old existing scripts.</p>

## Example

```matlab
x = eye(3, 2);
y = flipdim(x, 1)
y = flipdim(x, 2)
y = flipdim(x, 3)
```

## See also

[flip](../elementary_functions/flip.md), [flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
