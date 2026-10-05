#import "nelson_help.typ": *

= Subroutine Library In COntrol Theory

The SLICOT module provides advanced numerical algorithms for computations in systems and control theory.

 It includes tools for matrix factorization, system balancing, stability analysis, pole assignment, and solutions of Lyapunov, Riccati, and Sylvester equations.

 The module supports both continuous- and discrete-time systems, including descriptor and multi-input systems, enabling precise and efficient analysis, design, and control of complex dynamic systems.

== Functions

- #nlink(<slicot:About_SLICOT_license>)[SLICOT License]: About SLICOT license.
- #nlink(<slicot:slicot_ab01od>)[slicot\_ab01od]: Staircase form for multi-input systems using orthogonal state and input transformations.
- #nlink(<slicot:slicot_ab04md>)[slicot\_ab04md]: Discrete-time \/ continuous-time systems conversion by a bilinear transformation.
- #nlink(<slicot:slicot_ab07nd>)[slicot\_ab07nd]: Inverse of a given linear system.
- #nlink(<slicot:slicot_ab08nd>)[slicot\_ab08nd]: Construction of a regular pencil for a given system such that its generalized eigenvalues are invariant zeros of the system.
- #nlink(<slicot:slicot_ag08bd>)[slicot\_ag08bd]: Zeros and Kronecker structure of a descriptor system pencil.
- #nlink(<slicot:slicot_mb02md>)[slicot\_mb02md]: Solution of Total Least-Squares problem using a SVD approach.
- #nlink(<slicot:slicot_mb03od>)[slicot\_mb03od]: Matrix rank determination by incremental condition estimation.
- #nlink(<slicot:slicot_mb03pd>)[slicot\_mb03pd]: Matrix rank determination by incremental condition estimation (row pivoting).
- #nlink(<slicot:slicot_mb03rd>)[slicot\_mb03rd]: Reduction of a real Schur form matrix to a block-diagonal form.
- #nlink(<slicot:slicot_mb04gd>)[slicot\_mb04gd]: RQ factorization with row pivoting of a matrix.
- #nlink(<slicot:slicot_mb04md>)[slicot\_mb04md]: Balancing a general real matrix.
- #nlink(<slicot:slicot_mb05od>)[slicot\_mb05od]: Matrix exponential for a real matrix, with accuracy estimate.
- #nlink(<slicot:slicot_mc01td>)[slicot\_mc01td]: Checking stability of a given real polynomial.
- #nlink(<slicot:slicot_sb01bd>)[slicot\_sb01bd]: Pole assignment for a given matrix pair (A,B).
- #nlink(<slicot:slicot_sb02od>)[slicot\_sb02od]: Solution of continuous- or discrete-time algebraic Riccati equations (generalized Schur vectors method).
- #nlink(<slicot:slicot_sb03md>)[slicot\_sb03md]: Solution of continuous- or discrete-time Lyapunov equations and separation estimation.
- #nlink(<slicot:slicot_sb03od>)[slicot\_sb03od]: Solution of stable continuous- or discrete-time Lyapunov equations (Cholesky factor).
- #nlink(<slicot:slicot_sb04md>)[slicot\_sb04md]: Solution of continuous-time Sylvester equations (Hessenberg-Schur method).
- #nlink(<slicot:slicot_sb04qd>)[slicot\_sb04qd]: Solution of discrete-time Sylvester equations (Hessenberg-Schur method).
- #nlink(<slicot:slicot_sb10jd>)[slicot\_sb10jd]: Converting a descriptor state-space system into regular state-space form.
- #nlink(<slicot:slicot_sg02ad>)[slicot\_sg02ad]: Solution of continuous- or discrete-time algebraic Riccati equations for descriptor systems.
- #nlink(<slicot:slicot_tb01id>)[slicot\_tb01id]: Balancing a system matrix corresponding to a triplet (A, B, C).
- #nlink(<slicot:slicot_tg01ad>)[slicot\_tg01ad]: Balancing the matrices of the system pencil corresponding to a descriptor triple (A-lambda E, B, C).


#nested[
#pagebreak(weak: true)
#include "About_SLICOT_license.typ"
#pagebreak(weak: true)
#include "slicot_ab01od.typ"
#pagebreak(weak: true)
#include "slicot_ab04md.typ"
#pagebreak(weak: true)
#include "slicot_ab07nd.typ"
#pagebreak(weak: true)
#include "slicot_ab08nd.typ"
#pagebreak(weak: true)
#include "slicot_ag08bd.typ"
#pagebreak(weak: true)
#include "slicot_mb02md.typ"
#pagebreak(weak: true)
#include "slicot_mb03od.typ"
#pagebreak(weak: true)
#include "slicot_mb03pd.typ"
#pagebreak(weak: true)
#include "slicot_mb03rd.typ"
#pagebreak(weak: true)
#include "slicot_mb04gd.typ"
#pagebreak(weak: true)
#include "slicot_mb04md.typ"
#pagebreak(weak: true)
#include "slicot_mb05od.typ"
#pagebreak(weak: true)
#include "slicot_mc01td.typ"
#pagebreak(weak: true)
#include "slicot_sb01bd.typ"
#pagebreak(weak: true)
#include "slicot_sb02od.typ"
#pagebreak(weak: true)
#include "slicot_sb03md.typ"
#pagebreak(weak: true)
#include "slicot_sb03od.typ"
#pagebreak(weak: true)
#include "slicot_sb04md.typ"
#pagebreak(weak: true)
#include "slicot_sb04qd.typ"
#pagebreak(weak: true)
#include "slicot_sb10jd.typ"
#pagebreak(weak: true)
#include "slicot_sg02ad.typ"
#pagebreak(weak: true)
#include "slicot_tb01id.typ"
#pagebreak(weak: true)
#include "slicot_tg01ad.typ"
]
