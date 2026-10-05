# slicot\_sb04md

Solution of continuous-time Sylvester equations (Hessenberg-Schur method).

## 📝 Syntax

- [A\_OUT, B\_OUT, C\_OUT, Z, INFO] = slicot\_sb04md(A\_IN, B\_IN, C\_IN)

## 📥 Input argument

- A\_IN - The leading N-by-N part of this array must contain the coefficient matrix A of the equation.
- B\_IN - The leading M-by-M part of this array must contain the coefficient matrix B of the equation.
- C\_IN - The leading N-by-M part of this array must contain the coefficient matrix C of the equation.

## 📤 Output argument

- A\_OUT - The leading N-by-N upper Hessenberg part of this array contains the matrix H, and the remainder of the leading N-by-N part, together with the elements 2,3,...,N of array DWORK, contain the orthogonal transformation matrix U (stored in factored form).
- B\_OUT - The leading M-by-M part of this array contains the quasi-triangular Schur factor S of the matrix B'.
- C\_OUT - The leading N-by-M part of this array contains the solution matrix X of the problem.
- Z - The leading M-by-M part of this array contains the orthogonal matrix Z used to transform B' to real upper Schur form.
- INFO - = 0: successful exit;

## 📄 Description


To solve for X the continuous-time Sylvester equation AX + XB = C where A, B, C and X are general N-by-N, M-by-M, N-by-M and N-by-M matrices respectively.

## Used function(s)

SB04MD

## 📚 Bibliography

http://slicot.org/objects/software/shared/doc/SB04MD.html

## 💡 Example



```matlab
N = 3;
M = 2;
A_IN = [2.0   1.0   3.0;
   0.0   2.0   1.0;
   6.0   1.0   2.0];
B_IN = [2.0   1.0;
   1.0   6.0];
C_IN = [2.0   1.0;
   1.0   4.0;
   0.0   5.0];
[A_OUT, B_OUT, C_OUT, Z, INFO] = slicot_sb04md(A_IN, B_IN, C_IN)
```


## 🔗 See also

[slicot_sb04qd](../slicot/slicot_sb04qd.md), [slicot_sb03md](../slicot/slicot_sb03md.md), [lyap](../control_system/6_matrix_computations/lyap.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

SLICOT Documentation
-->
