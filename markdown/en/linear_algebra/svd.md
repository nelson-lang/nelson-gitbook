# svd

Singular Value Decomposition.

## 📝 Syntax

- s = svd(M)
- [U, S, V] = svd(M)
- [U, S, V] = svd(M, 0)
- [U, S, V] = svd(M, 'econ')

## 📥 Input argument

- M - a numeric value: matrix (double or single)

## 📤 Output argument

- s - real vector (singular values) by descending order.
- U - left singular values.
- S - real diagonal matrix (singular values)
- V - right singular values.

## 📄 Description

<b>svd</b> computes the Singular Value Decomposition of a matrix.

For an
$$m \times n$$

matrix <b>M</b>, the SVD is:
$$M = U\Sigma V^T$$

where:

- $$U$$
  is an
  $$m \times m$$

unitary matrix (left singular vectors)

- $$\Sigma$$
  is an
  $$m \times n$$

diagonal matrix with non-negative real numbers (singular values)

- $$V^T$$
  is an
  $$n \times n$$

unitary matrix (right singular vectors)

The singular values
$$\sigma_i$$

are arranged in decreasing order:
$$\sigma_1 \geq \sigma_2 \geq \ldots \geq 0$$

## 💡 Example

```matlab
X = eye(3, 3);
s = svd(X)
[U, S, V] = svd(X)
```

## 🔗 See also

[eig](../linear_algebra/eig.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
