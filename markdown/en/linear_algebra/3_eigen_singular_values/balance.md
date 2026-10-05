# balance

Diagonal scaling to improve eigenvalue accuracy.

## 📝 Syntax

- B = balance(A)
- B = balance(A,'noperm')
- [T, B] = balance(A)
- [S, P, B] = balance(A)

## 📥 Input argument

- A - a matrix: square, finite single or double.

## 📤 Output argument

- B - balanced matrix.
- T - similarity transformation: Rearrange the elements of a diagonal matrix containing integer powers of two in order to minimize the impact of roundoff errors.
- S - scaling vector
- P - permutation vector

## 📄 Description


<b>B = balance(A)</b> returns the balanced matrix <b>B</b>. 

<b>B = balance(A, 'noperm')</b> scales<b>A</b> without permuting its rows and columns.

## Used function(s)

LAPACK dgebal, LAPACK sgebal, LAPACK zgebal, LAPACK cgebal

## 💡 Example



```matlab
A = [10  1000  100000; .1  10  1000; .001  .1  10]
F = balance(A)

```


## 🔗 See also

[eig](../../linear_algebra/3_eigen_singular_values/eig.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
