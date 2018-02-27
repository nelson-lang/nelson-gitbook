



slicot_sg02ad


slicot_sg02ad

Solution of continuous- or discrete-time algebraic Riccati equations for descriptor systems.

## Syntax

- [RCONDU, X, ALFAR, ALFAI, BETA, S, T, U, IWARN, INFO] = slicot_sg02ad(DICO, JOBB, FACT, UPLO, JOBL, SCAL, SORT, ACC, P, A, E, B, Q, R, L, TOL)

## Input argument

 - DICO - Specifies the type of Riccati equation to be solved as follows: = 'C':  Equation (1), continuous-time case; = 'D':  Equation (2), discrete-time case.
 - JOBB - Specifies whether or not the matrix G is given, instead of the matrices B and R, as follows: = 'B':  B and R are given; = 'G':  G is given.
 - FACT - Specifies whether or not the matrices Q and/or R (if JOBB = 'B') are factored, as follows: = 'N':  Not factored, Q and R are given; = 'C':  C is given, and Q = C'C; = 'D':  D is given, and R = D'D; = 'B':  Both factors C and D are given, Q = C'C, R = D'D.
 - UPLO - If JOBB = 'G', or FACT = 'N', specifies which triangle of the matrices G, or Q and R, is stored, as follows: = 'U':  Upper triangle is stored; = 'L':  Lower triangle is stored.
 - JOBL - Specifies whether or not the matrix L is zero, as follows: = 'Z':  L is zero; = 'N':  L is nonzero. JOBL is not used if JOBB = 'G' and JOBL = 'Z' is assumed. SLICOT Library routine SB02MT should be called just before SG02AD, for obtaining the results when JOBB = 'G' and JOBL = 'N'.
 - SCAL - If JOBB = 'B', specifies whether or not a scaling strategy should be used to scale Q, R, and L, as follows: = 'G':  General scaling should be used; = 'N':  No scaling should be used. SCAL is not used if JOBB = 'G'.
 - SORT - Specifies which eigenvalues should be obtained in the top of the generalized Schur form, as follows: = 'S':  Stable   eigenvalues come first; = 'U':  Unstable eigenvalues come first.
 - ACC - Specifies whether or not iterative refinement should be used to solve the system of algebraic equations giving the solution matrix X, as follows: = 'R':  Use iterative refinement; = 'N':  Do not use iterative refinement.
 - P - The number of system outputs. If FACT = 'C' or 'D' or 'B', P is the number of rows of the matrices C and/or D.
 - A - The leading N-by-N part of this array must contain the state matrix A of the descriptor system.
 - E - The leading N-by-N part of this array must contain the matrix E of the descriptor system.
 - B - If JOBB = 'B', the leading N-by-M part of this array must contain the input matrix B of the system.
 - Q - If FACT = 'N' or 'D', the leading N-by-N upper triangular part (if UPLO = 'U') or lower triangular part (if UPLO = 'L') of this array must contain the upper triangular part or lower triangular part, respectively, of the symmetric state weighting matrix Q. The stricly lower triangular part (if UPLO = 'U') or stricly upper triangular part (if UPLO = 'L') is not referenced. If FACT = 'C' or 'B', the leading P-by-N part of this array must contain the output matrix C of the system. If JOBB = 'B' and SCAL = 'G', then Q is modified internally, but is restored on exit.
 - R - If FACT = 'N' or 'C', the leading M-by-M upper triangular part (if UPLO = 'U') or lower triangular part (if UPLO = 'L') of this array must contain the upper triangular part or lower triangular part, respectively, of the symmetric input weighting matrix R. The stricly lower triangular part (if UPLO = 'U') or stricly upper triangular part (if UPLO = 'L') is not referenced. If FACT = 'D' or 'B', the leading P-by-M part of this array must contain the direct transmission matrix D of the system. If JOBB = 'B' and SCAL = 'G', then R is modified internally, but is restored on exit.
 - L - If JOBL = 'N' and JOBB = 'B', the leading N-by-M part of this array must contain the cross weighting matrix L. If JOBB = 'B' and SCAL = 'G', then L is modified internally, but is restored on exit.
 - TOL - The tolerance to be used to test for near singularity of the original matrix pencil, specifically of the triangular M-by-M factor obtained during the reduction process.

## Output argument

 - RCONDU - If N > 0 and INFO = 0 or INFO = 7, an estimate of the reciprocal of the condition number (in the 1-norm) of the N-th order system of algebraic equations from which the solution matrix X is obtained.
 - X - If INFO = 0, the leading N-by-N part of this array contains the solution matrix X of the problem.
 - ALFAR - The generalized eigenvalues of the 2N-by-2N matrix pair, ordered as specified by SORT (if INFO = 0, or INFO >= 5).
 - ALFAI - The generalized eigenvalues of the 2N-by-2N matrix pair, ordered as specified by SORT (if INFO = 0, or INFO >= 5).
 - BETA - The generalized eigenvalues of the 2N-by-2N matrix pair, ordered as specified by SORT (if INFO = 0, or INFO >= 5).
 - S - The leading 2N-by-2N part of this array contains the ordered real Schur form S of the first matrix in the reduced matrix pencil associated to the optimal problem, corresponding to the scaled Q, R, and L, if JOBB = 'B' and SCAL = 'G'.
 - T - The leading 2N-by-2N part of this array contains the ordered upper triangular form T of the second matrix in the reduced matrix pencil associated to the optimal problem, corresponding to the scaled Q, R, and L, if JOBB = 'B' and SCAL = 'G'.
 - U - The leading 2N-by-2N part of this array contains the right transformation matrix U which reduces the 2N-by-2N matrix pencil to the ordered generalized real Schur form (S,T).
 - IWARN - = 0:  no warning; = 1:  the computed solution may be inaccurate due to poor scaling or eigenvalues too close to the boundary of the stability domain (the imaginary axis, if DICO = 'C', or the unit circle, if DICO = 'D').
 - INFO - = 0:  successful exit; = 1:  if the computed extended matrix pencil is singular, possibly due to rounding errors; = 2:  if the QZ algorithm failed; = 3:  if reordering of the generalized eigenvalues failed; = 4:  if after reordering, roundoff changed values of some complex eigenvalues so that leading eigenvalues in the generalized Schur form no longer satisfy the stability condition; this could also be caused due to scaling; = 5:  if the computed dimension of the solution does not equal N; = 6:  if the spectrum is too close to the boundary of the stability domain; = 7:  if a singular matrix was encountered during the computation of the solution matrix X.

## Description


  <p> To solve for X either the continuous-time algebraic Riccatiequation or the discrete-time algebraic Riccati equation</p>


Used function(s)

SG02AD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/SG02AD.html

## Example

```Nelson
N = 2;
M = 1;
P = 3;
TOL = 0.0;
DICO = 'C';
JOBB = 'B';
FACT = 'B';
UPLO = 'U';
JOBL = 'Z';
SCAL = 'N';
SORT = 'S';
ACC = 'N';
A = [0.0  1.0;
   0.0  0.0];
E = [1.0  0.0;
   0.0  1.0];
B = [0.0;
   1.0];
Q = [1.0  0.0;
   0.0  1.0;
   0.0  0.0];
R = [0.0;
   0.0;
   1.0];
L = zeros(N, N);
[RCONDU, X, ALFAR, ALFAI, BETA, S, T, U, IWARN, INFO] = slicot_sg02ad(DICO, JOBB, FACT, UPLO, JOBL, SCAL, SORT, ACC, P, A, E, B, Q, R, L, TOL)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



