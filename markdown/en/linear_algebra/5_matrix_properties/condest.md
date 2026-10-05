# condest

1-norm condition number estimate.

## 📝 Syntax

- c = condest(A)
- c = condest(A, t)
- [c, v] = condest(A)

## 📥 Input argument

- A - a square numeric matrix.
- t - positive integer number of test vectors. Default is min(size(A, 1), 2).

## 📤 Output argument

- c - lower-bound estimate of the 1-norm condition number.
- v - approximate null vector associated with the estimate.

## 📄 Description


<b>condest</b> estimates <b>norm(A, 1) \* norm(inv(A), 1)</b> without explicitly forming <b>inv(A)</b>. 

The implementation uses repeated solves with <b>A</b> and <b>A'</b>, which is suitable for sparse matrices. 

Sparse double, sparse single, sparse double complex, and sparse single complex matrices are supported. Stored zero entries in sparse input do not contribute to the structural singularity check.

## 💡 Example



```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[c, v] = condest(A)

```


## 🔗 See also

[cond](../../linear_algebra/5_matrix_properties/cond.md), [rcond](../../linear_algebra/5_matrix_properties/rcond.md), [normest](../../elementary_functions/2_elementary_math/normest.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
| 2.0.0   | sparse single and sparse single complex behavior documented. |

<!--
## 👤 Author

Allan CORNET
-->
