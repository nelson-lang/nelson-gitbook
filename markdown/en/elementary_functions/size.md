# size

Size of an object.

## 📝 Syntax

- s = size(X)
- sdim = size(X, dim)
- vec = size(X, dims)
- [r, c] = size(X)
- [s1, ... , sn] = size(X)

## 📥 Input argument

- X - a variable
- dim - a variable: a positive integer to get the dimth dimension.
- dims - a variable: a vector of positive integer to get the dimth dimensions.

## 📤 Output argument

- s - a row vector whose elements contain the length of the corresponding dimension of X.
- sdim - the length of dimension dim.
- vec - length of dimensions dims.
- [r, c] - number of rows and columns.
- [s1, ... , sn] - numbers with integer values.

## 📄 Description

## 💡 Examples

```matlab
X = rand(3, 4, 5, 6);
size(X)
size(X, 3)
size(X, [2 4])
[r, c] =size(X)
[s1, s2, s3, s4] = size(X)
```

```matlab
size(cell(4,3))
```

## 🔗 See also

[length](../elementary_functions/length.md), [ndims](../elementary_functions/ndims.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
