

# isapprox

Return true if arguments are approximately equal, within the precision.

## Syntax

- res = isapprox(x1, x2)
- res = isapprox(x1, x2, precision)

## Input argument

 - x1 - a matrix, a sparse matrix of doubles, or a multidimensional matrix.
 - x2 - a matrix, a sparse matrix of doubles, or a multidimensional matrix.
 - precision - a double value: 0. by default

## Output argument

 - res - a logical value

## Description


  <p>For matrices, the comparison is done using the Hilbert-Schmidt norm (aka Frobenius norm L2 norm).</p>
  <p><b>isapprox</b> manages complex numbers. In this case, the real parts of the input arguments are compared. If this fails, it returns false. If this succeeds, the imaginary parts are compared.</p>
  <p>To compare values, NaN, Inf, -Inf and remaining values, are separated. As it is impossible to compare NaN values between them, we compare the indices where NaN value occurs. For infinity values, we also compare the indices where Inf values occurs.</p>


## Examples

```Nelson
A = pi
B = single(pi)
res = isapprox(A, B)
```
```Nelson
A = pi
B = single(pi)
res = isapprox(A, B, 1e-4)
```
```Nelson
A = [pi NaN]
res = isapprox(A, A)
```
```Nelson
A = [pi NaN]
B = [pi + 2*eps, NaN]
res = isapprox(A, B)
res = isapprox(A, B, eps)
```

## See also

[isequaln](isequaln.md), [isequal](isequal.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



