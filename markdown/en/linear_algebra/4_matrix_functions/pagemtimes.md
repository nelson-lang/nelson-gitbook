# pagemtimes

Page-wise matrix multiplication.

## 📝 Syntax

- C = pagemtimes(A, B)
- C = pagemtimes(A, transpA, B, transpB)

## 📥 Input argument

- A - array whose pages are matrices.
- B - array whose pages are matrices.
- transpA - transform applied to the pages of A: 'none', 'transpose' or 'ctranspose'.
- transpB - transform applied to the pages of B: 'none', 'transpose' or 'ctranspose'.

## 📤 Output argument

- C - array whose pages are the matrix products of the pages of A and B.

## 📄 Description


<b>pagemtimes</b> multiplies the pages (the first two dimensions) of the N-D arrays A and B. C(:,:,i) = A(:,:,i) \* B(:,:,i). The optional transform arguments transpose or conjugate-transpose each page before multiplying. If one input has a single page it is broadcast against the pages of the other.

## 💡 Example



```matlab
A = reshape(1:24, 2, 3, 4);
B = reshape(1:24, 3, 2, 4);
C = pagemtimes(A, B)
```


## 🔗 See also

[pagetranspose](../../linear_algebra/4_matrix_functions/pagetranspose.md), [pageinv](../../linear_algebra/4_matrix_functions/pageinv.md), [mtimes](../../operators/mtimes.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
