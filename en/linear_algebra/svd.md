

# svd

Singular Value Decomposition.

## Syntax

- s = svd(M)
- [U, S, V] = svd(M)
- [U, S, V] = svd(M, 0)
- [U, S, V] = svd(M, 'econ')

## Input argument

 - M - a numeric value: matrix (double or single)

## Output argument

 - s - real vector (singular values) by descending order.
 - U - left singular values.
 - S - real diagonal matrix (singular values)
 - V - right singular values.

## Description


  <p><b>[U, S, V] = svd(M)</b> produces a diagonal matrix S of the same dimension as M and with nonnegative diagonal elements in decreasing order, and unitary matrices U and V so that X = U*S*V'.</p>
  <p><b>[U, S, V] = svd(M, 0)</b> produces the 'economy size' decomposition. If M is m-by-n with m &gt; n then only the first n columns of U are computed and S is n-by-n.</p>
  <p><b>[U, S, V] = svd(M,0)</b> produces a different economy-size decomposition of m-by-n matrix M. If m &gt; n  then svd(M, 0) is equivalent to svd(M,'econ'). If m  &lt;= n then svd(M, 0) is equivalent to svd(M).</p>


## Example

```Nelson
X = eye(3, 3);
s = svd(X)
[U, S, V] = svd(X)
```

## See also

[eig](eig.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



