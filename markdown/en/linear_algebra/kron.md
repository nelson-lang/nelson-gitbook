# kron

Kronecker tensor product.

## Syntax

- K = kron(A, B)

## Input argument

- A - a matrix: scalars, vectors or matrices.
- B - a matrix: scalars, vectors or matrices.

## Output argument

- K - result: Kronecker Tensor Product.

## Description

<p>
            <b>K = kron(A, B)</b> computes the Kronecker tensor product of matrices <b>A</b> and <b>B</b>.</p>

## Bibliography

https://en.wikipedia.org/wiki/Kronecker_product

## Example

```matlab
A = [1, 2; 3, 4];
B = [0, 5; 6, 7];
K = kron(A, B)

```

## See also

[cross](../special_functions/cross.md), [hankel](../elementary_functions/hankel.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
