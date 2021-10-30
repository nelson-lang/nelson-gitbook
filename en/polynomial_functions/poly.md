

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


  <p>If <b>A</b> is a square matrix, <b>p = poly(A)</b> computes an n+1 element row vector. This result is composed the coefficients of the characteristic polynomial.</p>
  <p>If <b>r</b> is a vector, <b>p = poly(r)</b> computes a row vector. This result is composed the coefficients of the polynomial roots of which are the elements of <b>r</b>.</p>


## Example

```matlab
A = [1    2    3;
4    5    6;
7    8    1];
p = poly(A)
```

## See also

[conv](../data_analysis/conv.md), [roots](roots.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



