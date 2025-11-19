# mink

k smallest elements of an array

## 📝 Syntax

- B = mink(A, k)
- [B, I] = mink(A, k)
- B = mink(A, k, dim)

## 📥 Input argument

- A - numeric array (vector or matrix)
- k - positive integer specifying how many smallest elements to return
- dim - optional dimension along which to operate (default: first non-singleton dimension)

## 📤 Output argument

- B - array containing the k smallest elements of A along the specified dimension
- I - indices of the k smallest elements with respect to A along the specified dimension

## 📄 Description

<b>mink</b> returns the k smallest elements of array<b>A</b>. When A is a vector, the result is the k smallest values from A. When A is a matrix,<b>mink</b> operates along the specified dimension (or the first non-singleton dimension by default) and returns the k smallest elements for each slice along that dimension.

If<b>k</b> is larger than the number of available elements along the operating dimension, all elements are returned (sorted ascending). When called as <b>[B, I] = mink(A, k)</b>,<b>I</b> contains the indices of the returned elements with respect to<b>A</b>.

## 💡 Examples

Vector example

```matlab

A = [5 2 4 1];
B = mink(A, 2)   % returns [1 2]
[B, I] = mink(A, 3) % returns [1 2 4] and indices [4 2 3]

```

Matrix example (along columns)

```matlab

M = [4 2; 1 3];
B = mink(M, 1)   % returns [1 2] operating along first non-singleton dimension (columns)
B = mink(M, 2, 1) % returns 2 smallest per column

```

## 🔗 See also

[maxk](../elementary_functions/maxk.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
