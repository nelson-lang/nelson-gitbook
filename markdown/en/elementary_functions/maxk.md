# maxk

k largest elements of an array

## 📝 Syntax

- B = maxk(A, k)
- [B, I] = maxk(A, k)
- B = maxk(A, k, dim)

## 📥 Input argument

- A - numeric array (vector or matrix)
- k - positive integer specifying how many largest elements to return
- dim - optional dimension along which to operate (default: first non-singleton dimension)

## 📤 Output argument

- B - array containing the k largest elements of A along the specified dimension
- I - indices of the k largest elements with respect to A along the specified dimension

## 📄 Description

<b>maxk</b> returns the k largest elements of array<b>A</b>. When A is a vector, the result is the k largest values from A. When A is a matrix,<b>maxk</b> operates along the specified dimension (or the first non-singleton dimension by default) and returns the k largest elements for each slice along that dimension.

If<b>k</b> is larger than the number of available elements along the operating dimension, all elements are returned (sorted descending). When called as <b>[B, I] = maxk(A, k)</b>,<b>I</b> contains the indices of the returned elements with respect to<b>A</b>.

## 💡 Examples

Vector example

```matlab

A = [5 2 4 1];
B = maxk(A, 2)   % returns [5 4]
[B, I] = maxk(A, 3) % returns [5 4 2] and indices [1 3 2]

```

Matrix example (along columns)

```matlab

M = [4 2; 1 3];
B = maxk(M, 1)   % returns [4 3] operating along first non-singleton dimension (columns)
B = maxk(M, 2, 1) % returns 2 largest per column

```

## 🔗 See also

[mink](../elementary_functions/mink.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
