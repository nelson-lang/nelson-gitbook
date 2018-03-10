

# issymmetric

Computes if matrix is symmetric.

## Syntax

- res = issymmetric(x)
- res = issymmetric(x, 'skew')
- res = issymmetric(x, 'nonskew')
- res = issymmetric(x, tol)

## Input argument

 - x - a numeric value: scalar or matrix (double or single, integers).
 - tol - a numeric value: finite and >= 0.

## Output argument

 - res - a logical.

## Description


  <p><b>issymmetric(x)</b> computes if matrix is symmetric.</p>
  <p>With 'nonskew' argument, x square matrix, x is symmetric if it is equal to its nonconjugate transpose, x = x.'</p>
  <p>With 'skew' argument, x square matrix, x is symmetric if it is equal to its nonconjugate transpose, x = -x.'</p>


## Example

```matlab
issymmetric([1, 2; 2, 1])
issymmetric([1, 2.1; 2, 1.1], 0.2)
A = [0 1 -2 5; -1 0 3 -4; 2 -3 0 6; -5 4 -6 0];
issymmetric(A, 'skew')
issymmetric(A, 'nonskew')
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



