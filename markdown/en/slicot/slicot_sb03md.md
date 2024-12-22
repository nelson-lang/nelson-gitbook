# slicot_sb03md

Solution of continuous- or discrete-time Lyapunov equations and separation estimation.

## Syntax

- [U_OUT, C_OUT, SCALE, SEP, FERR, WR, WI, INFO] = slicot_sb03md(DICO, JOB, FACT, TRANA, A, U_IN, C_IN)

## Input argument

- DICO - Specifies the type of Lyapunov equation to be solved as follows: = 'C': continuous-time case; 'D': discrete-time case.
- JOB - Specifies the computation to be performed: 'X': Compute the solution only;= 'S': Compute the separation only; = 'B': Compute both the solution and the separation.
- FACT - Specifies whether or not the real Schur factorization of the matrix A is supplied on entry. = 'F': On entry, A and Q contain the factors from the real Schur factorization of the matrix A; = 'N': The Schur factorization of A will be computed and the factors will be stored in A and Q.
- TRANA - Specifies the form of op(A) to be used: = 'N': op(A) = A (No transpose); = 'T': op(A) = A**T (Transpose); = 'C': op(A) = A**T (Conjugate transpose = Transpose).
- A - the leading N-by-N part of this array must contain the matrix A. If FACT = 'F', then A contains an upper quasi-triangular matrix in Schur canonical form; the elements below the upper Hessenberg part of the array A are not referenced.
- U_IN - If FACT = 'N', zeros(N, N); If FACT = 'F', then U is an input argument and on entry the leading N-by-N part of this array must contain the orthogonal matrix U of the real Schur factorization of A.
- C_IN - With JOB = 'X' or 'B', the leading N-by-N part of this array must contain the symmetric matrix C.

## Output argument

- U_OUT - if INFO = 0 or INFO = N+1, it contains the orthogonal N-by-N matrix from the real Schur factorization of A.
- C_OUT - With JOB = 'X' or 'B', if INFO = 0 or INFO = N+1, the leading N-by-N part of C has been overwritten by the symmetric solution matrix X.
- SCALE - The scale factor, scale, set less than or equal to 1 to prevent the solution overflowing.
- SEP - If JOB = 'S' or JOB = 'B', and INFO = 0 or INFO = N+1, SEP contains the estimated separation of the matrices op(A) and -op(A)', if DICO = 'C' or of op(A) and op(A)', if DICO = 'D'.
- FERR - If JOB = 'B', and INFO = 0 or INFO = N+1, FERR contains an estimated forward error bound for the solution X.
- WR - If FACT = 'N', and INFO = 0 or INFO = N+1, WR contains the real parts of the eigenvalues of A.
- WI - If FACT = 'N', and INFO = 0 or INFO = N+1, WI contains the imaginary parts of the eigenvalues of A.
- INFO - = 0: successful exit;

## Description

  <p>To solve for X either the real continuous-time Lyapunov equation</p>
  <p>op(A)'*X + X*op(A) = scale*C</p>
  <p>or the real discrete-time Lyapunov equation</p>
  <p>op(A)'*X*op(A) - X = scale*C</p>
  <p>and/or estimate an associated condition number, called separation, where op(A) = A or A' (A**T) and C is symmetric (C = C').</p>

Used function(s)

SB03MD

Bibliography

http://slicot.org/objects/software/shared/doc/SB03MD.html

## Example

```matlab
N = 3;
DICO = 'D';
FACT = 'N';
JOB = 'X';
TRANA = 'N';

A = [3.0   1.0   1.0;
   1.0   3.0   0.0;
   0.0   0.0   3.0];

U_IN = zeros(N, N);

C_IN = [25.0  24.0  15.0;
  24.0  32.0   8.0;
  15.0   8.0  40.0];

[U_OUT, C_OUT, SCALE, SEP, FERR, WR, WI, INFO] = slicot_sb03md(DICO, JOB, FACT, TRANA, A, U_IN, C_IN)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
