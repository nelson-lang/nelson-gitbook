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
            K = kron(A, B) computes the Kronecker tensor product of matrices A and B.
        </p>

<p>For matrices</p>

$$A$$

<p>of size</p>

$$m \times n$$

<p>and</p>

$$B$$

<p>of size</p>

$$p \times q$$

<p>, the Kronecker product is:</p>

$$A \otimes B = \begin{pmatrix} a_{11}B & a_{12}B & \cdots & a_{1n}B \\ a_{21}B & a_{22}B & \cdots & a_{2n}B \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1}B & a_{m2}B & \cdots & a_{mn}B \end{pmatrix}$$

<p>The result is an</p>

$$mp \times nq$$

<p>matrix.</p>

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
