# vecnorm

Vector-wise norm.

## Syntax

- N = vecnorm(A)
- N = vecnorm(A, p)
- N = vecnorm(A, p, dim)

## Input argument

- A - vector, matrix or multidimensional array
- p - Norm type: 2 (default), a positive scalar, or Inf.
- dim - positive integer scalar

## Output argument

- n - norm: scalar or vector

## Description

<p>
            vecnorm computes the 2-norm or Euclidean norm of the input array A
        </p>

<p>If A is a vector, vecnorm returns the norm of the vector.</p>

<p>If A is a matrix, vecnorm returns the norm of each column.</p>

<p>For multidimensional arrays, vecnorm returns the norm along the first array dimension whose size does not equal 1.</p>

<p>To compute the generalized vector p-norm, you can use the syntax N = vecnorm(A, p).</p>

<p>To operate along a specific dimension dim, the function can be called as N = vecnorm(A, p, dim).</p>

<p>In this case, the size of the specified dimension reduces to 1, while the sizes of all other dimensions remain unchanged.</p>

## Example

```matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
n = vecnorm(A)
n = vecnorm(A, 2, 2)
n = vecnorm(A, 1)

```

## See also

[norm](../elementary_functions/norm.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.3.0   | initial version |

## Author

Allan CORNET
