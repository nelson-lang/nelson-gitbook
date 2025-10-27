# vecnorm

Vector-wise norm.

## 📝 Syntax

- N = vecnorm(A)
- N = vecnorm(A, p)
- N = vecnorm(A, p, dim)

## 📥 Input argument

- A - vector, matrix or multidimensional array
- p - Norm type: 2 (default), a positive scalar, or Inf.
- dim - positive integer scalar

## 📤 Output argument

- n - norm: scalar or vector

## 📄 Description

<b>vecnorm</b> computes the 2-norm or Euclidean norm of the input array <b>A</b>

If <b>A</b> is a vector, <b>vecnorm</b> returns the norm of the vector.

If <b>A</b> is a matrix, <b>vecnorm</b> returns the norm of each column.

For multidimensional arrays, <b>vecnorm returns</b> the norm along the first array dimension whose size does not equal 1.

To compute the generalized vector p-norm, you can use the syntax <b>N = vecnorm(A, p)</b>.

To operate along a specific dimension dim, the function can be called as <b>N = vecnorm(A, p, dim)</b>.

In this case, the size of the specified dimension reduces to 1, while the sizes of all other dimensions remain unchanged.

## 💡 Example

```matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
n = vecnorm(A)
n = vecnorm(A, 2, 2)
n = vecnorm(A, 1)

```

## 🔗 See also

[norm](../elementary_functions/norm.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.3.0   | initial version |

## 👤 Author

Allan CORNET
