# slicot_sb03od

Solution of stable continuous- or discrete-time Lyapunov equations (Cholesky factor).

## Syntax

- [Q_OUT, B_OUT, SCALE, WR, WI, INFO] = slicot_sb03od(DICO, FACT, TRANS, A, Q_IN, B_IN)

## Input argument

- DICO - Specifies the type of Lyapunov equation to be solved as follows: = 'C': continuous-time case; 'D': discrete-time case.
- FACT - Specifies whether or not the real Schur factorization of the matrix A is supplied on entry. = 'F': On entry, A and Q contain the factors from the real Schur factorization of the matrix A; = 'N': The Schur factorization of A will be computed and the factors will be stored in A and Q.
- TRANS - Specifies the form of op(K) to be used. = 'N': op(K) = K (No transpose); = 'T': op(K) = K\*\*T (Transpose).
- A - the leading N-by-N part of this array must contain the matrix A. If FACT = 'F', then A contains an upper quasi-triangular matrix S in Schur canonical form; the elements below the upper Hessenberg part of the array A are not referenced.
- Q_IN - if FACT = 'F', then the leading N-by-N part of this array must contain the orthogonal matrix Q of the Schur factorization of A. Otherwise, Q need not be set on entry.
- B_IN - if TRANS = 'N', and dimension (LDB,max(M,N)), if TRANS = 'T'. On entry, if TRANS = 'N', the leading M-by-N part of this array must contain the coefficient matrix B of the equation. On entry, if TRANS = 'T', the leading N-by-M part of this array must contain the coefficient matrix B of the equation.

## Output argument

- Q_OUT - the leading N-by-N part of this array contains the orthogonal matrix Q of the Schur factorization of A. The contents of array Q is not modified if FACT = 'F'.
- B_OUT - the leading N-by-N part of this array contains the upper triangular Cholesky factor U of the solution matrix X of the problem, X = op(U)'\*op(U). If M = 0 and N > 0, then U is set to zero.
- SCALE - The scale factor, scale, set less than or equal to 1 to prevent the solution overflowing.
- WR - If FACT = 'N', and INFO >= 0 and INFO less than 2, WR contains the real parts of the eigenvalues of A.
- WI - If FACT = 'N', and INFO >= 0 and INFO less than 2, WI contains the imaginary parts of the eigenvalues of A.
- INFO - = 0: successful exit.

## Description

  <p>To solve for X = op(U)'*op(U) either the stable non-negative definite continuous-time Lyapunov equation or the convergent non-negative definite discrete-time Lyapunov equation.</p>

Used function(s)

SB03OD

Bibliography

http://slicot.org/objects/software/shared/doc/SB03OD.html

## Example

```matlab
A = [-0.5000    0.5000         0;
         0         0         0;
   -0.5000         0    0.5000];
B_IN = [0.5000    1.5000    1.0000;
    1.0000    1.0000    1.0000;
    0.5000    1.0000    1.5000];
DICO = 'D';
FACT = 'N';
Q_IN = zeros(3, 3);
[Q_OUT, B_OUT, SCALE, WR, WI, INFO] = slicot_sb03od(DICO, FACT, TRANS, A, Q_IN, B_IN)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
