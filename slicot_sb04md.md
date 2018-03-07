



slicot_sb04md


slicot_sb04md

Solution of continuous-time Sylvester equations (Hessenberg-Schur method).

## Syntax

- [A_OUT, B_OUT, C_OUT, Z, INFO] = slicot_sb04md(A_IN, B_IN, C_IN)

## Input argument

 - A_IN - The leading N-by-N part of this array must contain the coefficient matrix A of the equation.
 - B_IN - The leading M-by-M part of this array must contain the coefficient matrix B of the equation.
 - C_IN - The leading N-by-M part of this array must contain the coefficient matrix C of the equation.

## Output argument

 - A_OUT - The leading N-by-N upper Hessenberg part of this array contains the matrix H, and the remainder of the leading N-by-N part, together with the elements 2,3,...,N of array DWORK, contain the orthogonal transformation matrix U (stored in factored form).
 - B_OUT - The leading M-by-M part of this array contains the quasi-triangular Schur factor S of the matrix B'.
 - C_OUT - The leading N-by-M part of this array contains the solution matrix X of the problem.
 - Z - The leading M-by-M part of this array contains the orthogonal matrix Z used to transform B' to real upper Schur form.
 - INFO - = 0:  successful exit;

## Description


  <p> To solve for X the continuous-time Sylvester equation AX + XB = C where A, B, C and X are general N-by-N, M-by-M, N-by-M and N-by-M matrices respectively.</p>


Used function(s)

SB04MD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/SB04MD.html

## Example

```Nelson
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

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



