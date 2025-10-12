# poly

Polynomial with specified roots or characteristic polynomial.

## Syntax

- p = poly(r)
- p = poly(A)

## Input argument

- r - vector: polynomial roots
- A - matrix: input matrix

## Output argument

- p - row vector: polynomial coefficients

## Description

<p>If A is a square matrix, p = poly(A) computes an n+1 element row vector. This result is composed the coefficients of the characteristic polynomial.</p>

<p>If r is a vector, p = poly(r) computes a row vector. This result is composed the coefficients of the polynomial roots of which are the elements of r.</p>

## Example

```matlab

A = [1    2    3;
4    5    6;
7    8    1];
p = poly(A)
```

## See also

[conv](../data_analysis/conv.md), [roots](../polynomial_functions/roots.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
