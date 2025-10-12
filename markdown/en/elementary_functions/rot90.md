# rot90

Rotate array 90 degrees.

## Syntax

- B = rot90(A)
- B = rot90(A, k)

## Input argument

- A - an array
- k - an positive integer value: Rotation constant.

## Output argument

- B - rotated array.

## Description

<p>
            B = rot90(A, k) rotates array A counter clockwise by k * 90 degrees, with k is an integer value.</p>

<p>Consider flip function to flip arrays in any dimension.</p>

## Example

```matlab
x = eye(3, 2);
y = rot90(x, 0)
y = rot90(x, 1)
y = rot90(x, 2)
y = rot90(x, 3)
```

## See also

[flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
