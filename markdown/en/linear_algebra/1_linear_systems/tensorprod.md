# tensorprod

Tensor products between two arrays.

## 📝 Syntax

- C = tensorprod(A, B)
- C = tensorprod(A, B, dimA, dimB)
- C = tensorprod(A, B, 'all')
- C = tensorprod(\_\_\_, 'NumDimensionsA', value)

## 📥 Input argument

- A, B - numeric arrays.
- dimA, dimB - vectors listing the dimensions of A and B to contract. size(A, dimA(k)) must equal size(B, dimB(k)).
- value - number of dimensions of A, used to account for trailing singleton dimensions.

## 📤 Output argument

- C - tensor product. Its dimensions are the uncontracted dimensions of A followed by the uncontracted dimensions of B.

## 📄 Description


<b>tensorprod(A, B)</b> returns the outer product of A and B, an array of size [size(A) size(B)]. 

<b>tensorprod(A, B, dimA, dimB)</b> contracts (sums the products over) the dimensions dimA of A with the dimensions dimB of B. For matrices, <b>tensorprod(A, B, 2, 1)</b> is the matrix product A\*B. 

<b>tensorprod(A, B, 'all')</b> contracts every dimension and returns the full inner product; A and B must have the same size. 

<b>'NumDimensionsA'</b> specifies how many dimensions A has so that trailing singleton dimensions can be contracted.

## 💡 Example



```matlab
A = [1 2; 3 4];
B = [5 6; 7 8];
C = tensorprod(A, B, 2, 1)
```


## 🔗 See also

[kron](../../linear_algebra/1_linear_systems/kron.md), [reshape](../../elementary_functions/1_array_creation_shape/reshape.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
