# slicot_sb02od

Solution of continuous- or discrete-time algebraic Riccati equations (generalized Schur vectors method).

## Syntax

- [RCOND, X, ALFAR, ALFAI, BETA, S, T, U, INFO] = slicot_sb02od(DICO, JOBB, FACT, UPLO, JOBL, SORT, P, A, B, Q, R, L, TOL)

## Input argument

- DICO - Specifies the type of Riccati equation to be solved as follows: = 'C': continuous-time case; 'D': discrete-time case.
- JOBB - Specifies whether or not the matrix G is given, instead of the matrices B and R, as follows: = 'B': B and R are given; = 'G': G is given.
- FACT - Specifies whether or not the matrices Q and/or R (if JOBB = 'B') are factored, as follows: = 'N': Not factored, Q and R are given; = 'C': C is given, and Q = C'C; = 'D': D is given, and R = D'D; = 'B': Both factors C and D are given, Q = C'C, R = D'D.
- UPLO - If JOBB = 'G', or FACT = 'N', specifies which triangle of the matrices G and Q (if FACT = 'N'), or Q and R (if JOBB = 'B'), is stored, as follows: = 'U': Upper triangle is stored; = 'L': Lower triangle is stored.
- JOBL - Specifies whether or not the matrix L is zero, as follows: = 'Z': L is zero; = 'N': L is nonzero. JOBL is not used if JOBB = 'G' and JOBL = 'Z' is assumed. SLICOT Library routine SB02MT should be called just before SB02OD, for obtaining the results when JOBB = 'G' and JOBL = 'N'.
- SORT - Specifies which eigenvalues should be obtained in the top of the generalized Schur form, as follows: = 'S': Stable eigenvalues come first;= 'U': Unstable eigenvalues come first.
- P - The number of system outputs. If FACT = 'C' or 'D' or 'B', P is the number of rows of the matrices C and/or D. P >= 0. Otherwise, P is not used.
- A - The leading N-by-N part of this array must contain the state matrix A of the system.
- B - If JOBB = 'B', the leading N-by-M part of this array must contain the input matrix B of the system.
- Q - If FACT = 'N' or 'D', the leading N-by-N upper triangular part (if UPLO = 'U') or lower triangular part (if UPLO = 'L') of this array must contain the upper triangular part or lower triangular part, respectively, of the symmetric state weighting matrix Q. The stricly lower triangular part (if UPLO = 'U') or stricly upper triangular part (if UPLO = 'L') is not referenced.
- R - If FACT = 'N' or 'C', the leading M-by-M upper triangular part (if UPLO = 'U') or lower triangular part (if UPLO = 'L') of this array must contain the upper triangular part or lower triangular part, respectively, of the symmetric input weighting matrix R. The stricly lower triangular part (if UPLO = 'U') or stricly upper triangular part (if UPLO = 'L') is not referenced.
- L - If JOBL = 'N' (and JOBB = 'B'), the leading N-by-M part of this array must contain the cross weighting matrix L. This part is modified internally, but is restored on exit. If JOBL = 'Z' or JOBB = 'G', this array is not referenced.
- TOL - The tolerance to be used to test for near singularity of the original matrix pencil, specifically of the triangular factor obtained during the reduction process.

## Output argument

- RCOND - An estimate of the reciprocal of the condition number (in the 1-norm) of the N-th order system of algebraic equations from which the solution matrix X is obtained.
- X - The leading N-by-N part of this array contains the solution matrix X of the problem.
- ALFAR, ALFAI, BETA - The generalized eigenvalues of the 2N-by-2N matrix pair, ordered as specified by SORT (if INFO = 0).
- S - The leading 2N-by-2N part of this array contains the ordered real Schur form S of the first matrix in the reduced matrix pencil associated to the optimal problem, or of the corresponding Hamiltonian matrix, if DICO = 'C' and JOBB = 'G'.
- T - If DICO = 'D' or JOBB = 'B', the leading 2N-by-2N part of this array contains the ordered upper triangular form T of the second matrix in the reduced matrix pencil associated to the optimal problem.
- U - The leading 2N-by-2N part of this array contains the right transformation matrix U which reduces the 2N-by-2N matrix pencil to the ordered generalized real Schur form (S,T), or the Hamiltonian matrix to the ordered real Schur form S, if DICO = 'C' and JOBB = 'G'.
- INFO - = 0: successful exit;

## Description

  <p>Solution of continuous- or discrete-time algebraic Riccati equations (generalized Schur vectors method)</p>
  <p>The routine uses the method of deflating subspaces, based on reordering the eigenvalues in a generalized Schur matrix pair.</p>
  <p>A standard eigenproblem is solved in the continuous-time case if G is given.</p>

Used function(s)

SB02OD

Bibliography

http://slicot.org/objects/software/shared/doc/SB02OD.html

## Example

```matlab
N = 2;
M = 1;
P = 3;
TOL = 0.0;
DICO = 'C';
JOBB = 'B';
FACT = 'B';
UPLO = 'U';
JOBL = 'Z';
SORT = 'S';
A = [0.0  1.0;
   0.0  0.0];
B = [0.0; 1.0];
Q = [1.0  0.0;
   0.0  1.0;
   0.0  0.0];
R = [0.0;
   0.0;
   1.0];
L = zeros(N, M);
[RCOND, X, ALFAR, ALFAI, BETA, S, T, U, INFO] = slicot_sb02od(DICO, JOBB, FACT, UPLO, JOBL, SORT, P, A, B, Q, R, L, TOL)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
