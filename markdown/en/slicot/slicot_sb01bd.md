# slicot_sb01bd

Pole assignment for a given matrix pair (A,B).

## 📝 Syntax

- [A_OUT, WR_OUT, WI_OUT, NFP, NAP, NUP, F, Z, IWARN, INFO] = slicot_sb01bd(DICO, ALPHA, A_IN, B_IN, WR_IN, WI_IN, TOL)

## 📥 Input argument

- DICO - Specifies the type of the original system.'C': continuous-time system;'D': discrete-time system.
- ALPHA - Specifies the maximum admissible value.
- A_IN - the leading N-by-N part of this array must contain the state dynamics matrix A.
- B_IN - The leading N-by-M part of this array must contain the input/state matrix.
- WR_IN - contains the real parts of the desired eigenvalues of the closed-loop system state-matrix A+B\*F.
- WI_IN - contains the imaginary parts of the desired eigenvalues of the closed-loop system state-matrix A+B\*F.
- TOL - The absolute tolerance level below which the elements of A or B are considered zero (used for controllability tests).

## 📤 Output argument

- A_OUT - the leading N-by-N part of this array contains the matrix Z'*(A+B*F)\*Z in a real Schur form.
- WR_OUT - if INFO = 0, the leading NAP elements of these arrays contain the real parts of the assigned eigenvalues. The trailing NP-NAP elements contain the unassigned eigenvalues.
- WI_OUT - if INFO = 0, the leading NAP elements of these arrays contain the imaginary parts of the assigned eigenvalues. The trailing NP-NAP elements contain the unassigned eigenvalues.
- NFP - The number of eigenvalues of A having real parts less than ALPHA, if DICO = 'C', or moduli less than ALPHA, if DICO = 'D'. These eigenvalues are not modified by the eigenvalue assignment algorithm.
- NAP - The number of assigned eigenvalues. If INFO = 0 on exit, then NAP = N-NFP-NUP.
- NUP - The number of uncontrollable eigenvalues detected by the eigenvalue assignment algorithm.
- F - The leading M-by-N part of this array contains the state feedback F, which assigns NAP closed-loop eigenvalues and keeps unaltered N-NAP open-loop eigenvalues.
- Z - The leading N-by-N part of this array contains the orthogonal matrix Z which reduces the closed-loop system state matrix A + B\*F to upper real Schur form.
- IWARN - = 0: no warning; = K: K violations of the numerical stability condition.
- INFO - = 0: successful exit;

## 📄 Description

To determine the state feedback matrix F for a given system (A,B) such that the closed-loop state matrix A+B\*F has specified eigenvalues.

## Used function(s)

SB01BD

## 📚 Bibliography

http://slicot.org/objects/software/shared/doc/SB01BD.html

## 💡 Example

```matlab
N = 4;
M = 2;
NP = 2;
ALPHA = -.4;
TOL = 1.E-8;
DICO = 'C';

A_IN = [  -6.8000   0.0000  -207.0000   0.0000;
   1.0000   0.0000     0.0000   0.0000;
  43.2000   0.0000     0.0000  -4.2000;
   0.0000   0.0000     1.0000   0.0000];

B_IN = [   5.6400   0.0000;
   0.0000   0.0000;
   0.0000   1.1800;
   0.0000   0.0000];

WR_IN = [-0.5000; -0.5000];
WI_IN = [ 0.1500; -0.1500];

[A_OUT, WR_OUT, WI_OUT, NFP, NAP, NUP, F, Z, IWARN, INFO] = slicot_sb01bd(DICO, ALPHA, A_IN, B_IN, WR_IN, WI_IN, TOL)

```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

SLICOT Documentation
