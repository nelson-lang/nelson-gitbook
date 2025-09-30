# dot

Dot product.

## Syntax

- R = dot(A, B)
- R = dot(A, B, dim)

## Input argument

- A, B - numeric arrays.
- dim - positive integer scalar: Dimension to operate along.

## Output argument

- R - Scalar Dot Product.

## Description

<p>
            <b>R = dot(A, B)</b> returns the scalar dot product of <b>A</b> and <b>B</b>.</p>

## Bibliography

https://en.wikipedia.org/wiki/Dot_product

## Example

```matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = dot(A, B)
R = dot(A, B, 2)
```

## See also

[conj](../elementary_functions/conj.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
