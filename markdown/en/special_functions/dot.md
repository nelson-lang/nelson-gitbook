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
            R = dot(A, B) returns the scalar dot product of A and B.
        </p>

<p>For real vectors</p>

$$\mathbf{a}$$

<p>and</p>

$$\mathbf{b}$$

<p>of length</p>

$$n$$

<p>:</p>

$$\mathbf{a} \cdot \mathbf{b} = \sum_{i=1}^{n} a_i b_i = a_1 b_1 + a_2 b_2 + \cdots + a_n b_n$$

<p>For complex vectors, the dot product is:</p>

$$\mathbf{a} \cdot \mathbf{b} = \sum_{i=1}^{n} \overline{a_i} b_i$$

<p>where</p>

$$\overline{a_i}$$

<p>denotes the complex conjugate of</p>

$$a_i$$

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
