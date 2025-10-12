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

<p>
            svd computes the Singular Value Decomposition of a matrix.
        </p>

<p>For an</p>

$$m \times n$$

<p>matrix M, the SVD is:</p>

$$M = U\Sigma V^T$$

<p>where:
        
        
$$U$$
 is an
        
$$m \times m$$

<p>unitary matrix (left singular vectors)</p>

$$\Sigma$$
is an

$$m \times n$$

<p>diagonal matrix with non-negative real numbers (singular values)</p>

$$V^T$$
is an

$$n \times n$$

<p>unitary matrix (right singular vectors)</p>

        </p>

<p>The singular values</p>

$$\sigma_i$$

<p>are arranged in decreasing order:</p>

$$\sigma_1 \geq \sigma_2 \geq \ldots \geq 0$$

## Example

```matlab
X = eye(3, 3);
s = svd(X)
[U, S, V] = svd(X)
```

## See also

[eig](../linear_algebra/eig.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
