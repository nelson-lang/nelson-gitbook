# shiftdim

Shift array dimensions

## 📝 Syntax

- B = shiftdim(A, n)
- B = shiftdim(A)
- [B, m] = shiftdim(A)

## 📥 Input argument

- A - Input array: vector, matrix or multidimensional array.
- n - Number of positions: integer value.

## 📤 Output argument

- B - vector, matrix, or multidimensional array.
- m - Number of dimensions removed: non-negative integer.

## 📄 Description


<b>shiftdim(A, n)</b> reorganizes the dimensions of an array A by n positions. 

Specifically, when n is a positive integer, it shifts the dimensions to the left, and when n is a negative integer, it shifts the dimensions to the right.

## 💡 Example



```matlab
A = rand(2, 3, 4);
size(A)
% Shift the dimensions of array A by 2 positions to the left
B = shiftdim(A, 2)
```


## 🔗 See also

[permute](../../elementary_functions/7_indexing_dimensions/permute.md), [reshape](../../elementary_functions/1_array_creation_shape/reshape.md), [squeeze](../../elementary_functions/2_elementary_math/round.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.3.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
