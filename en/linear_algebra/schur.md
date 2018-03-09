

# schur

Schur decomposition.

## Syntax

- T = schur(M)
- T = schur(M, 'real')
- T = schur(M, 'complex')
- [U, T] = schur(M)
- [U, T] = schur(M, 'complex')
- [U, T] = schur(M, 'real')

## Input argument

 - M - a numeric value: scalar or square matrix (double or single)

## Output argument

 - U - unitary matrix
 - T - upper triangular matrix

## Description


  <p><b>schur(M)</b> computes the schur decomposition.</p>
  <p>With the flag 'complex', the complex schur form is upper triangular with the eigenvalues of M on the diagonal.</p>
  <p>If A is real, the real schur form is returned.</p>
  <p>With the flag 'real', the real schur form has the real eigenvalues on the diagonal and the complex eigenvalues in 2-by-2 blocks on the diagonal.</p>


## Example

```Nelson
X = [1 2; 3 4];
[U, T] = schur(X)
[U, T] = schur(X * i, 'complex')
[U, T] = schur(X * i, 'real')
```

## See also

[eig](eig.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



