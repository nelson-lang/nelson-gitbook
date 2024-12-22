# slicot_ab08nd

Construction of a regular pencil for a given system such that its generalized eigenvalues are invariant zeros of the system.

## Syntax

- [NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, M, P, A, B, C, D, TOL)

## Input argument

- EQUIL - 'S': Perform balancing (scaling) or 'N': Do not perform balancing.
- N - The number of state variables, i.e., the order of the matrix A.
- M - The number of system inputs.
- P - The number of system outputs.
- A - The leading N-by-N part of this array must contain the state dynamics matrix A of the system.
- B - The leading N-by-M part of this array must contain the input/state matrix B of the system.
- C - The leading P-by-N part of this array must contain the state/output matrix C of the system.
- D - The leading P-by-M part of this array must contain the direct transmission matrix D of the system.
- TOL - A tolerance used in rank decisions.

## Output argument

- NU - The number of (finite) invariant zeros.
- RANK - The normal rank of the transfer function matrix.
- DINFZ - The maximum degree of infinite elementary divisors.
- NKROR - The number of right Kronecker indices.
- NKROL - The number of left Kronecker indices.
- INFZ - The leading DINFZ elements of INFZ contain information on the infinite elementary divisors as follows: the system has INFZ(i) infinite elementary divisors of degree i, where i = 1,2,...,DINFZ.
- KRONR - The leading NKROR elements of this array contain the right Kronecker (column) indices.
- KRONL - The leading NKROL elements of this array contain the left Kronecker (row) indices.
- AF - The leading NU-by-NU part of this array contains the coefficient matrix A of the reduced pencil.
- BF - The leading NU-by-NU part of this array contains the coefficient matrix B of the reduced pencil.
- INFO - 0: successful exit; if INFO = -i, the i-th argument had an illegal value.

## Description

  <p>To construct for a linear multivariable system described by a state-space model (A,B,C,D) a regular pencil (A - lambda*B ) which has the invariant zeros of the system as generalized eigenvalues.</p>
  <p>The routine also computes the orders of the infinite zeros and the right and left Kronecker indices of the system (A,B,C,D).</p>

Used function(s)

AB08ND

Bibliography

http://slicot.org/objects/software/shared/doc/AB08ND.html

## Example

```matlab
N = 6;
M = 2;
P = 3;
TOL = 0.0;
EQUIL = 'N';
%=============================================================================
A  = [1.0   0.0   0.0   0.0   0.0   0.0;
   0.0   1.0   0.0   0.0   0.0   0.0;
   0.0   0.0   3.0   0.0   0.0   0.0;
   0.0   0.0   0.0  -4.0   0.0   0.0;
   0.0   0.0   0.0   0.0  -1.0   0.0;
   0.0   0.0   0.0   0.0   0.0   3.0];
%=============================================================================
B = [0.0  -1.0;
  -1.0   0.0;
   1.0  -1.0;
   0.0   0.0;
   0.0   1.0;
  -1.0  -1.0];
%=============================================================================
C = [1.0   0.0   0.0   1.0   0.0   0.0;
   0.0   1.0   0.0   1.0   0.0   1.0;
   0.0   0.0   1.0   0.0   0.0   1.0];
D = [0.0   0.0;
   0.0   0.0;
   0.0   0.0];
%=============================================================================
% Check the observability and compute the ordered set of the observability indices (call the routine with M = 0).
[NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, 0, P, A, B, C, D, TOL)

% Check the controllability and compute the ordered set of the controllability indices (call the routine with P = 0)
[NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, M, 0, A, B, C, D, TOL)

% Compute the structural invariants of the given system.
[NU, RANK, DINFZ, NKROR, NKROL, INFZ, KRONR, KRONL, AF, BF, INFO] = slicot_ab08nd(EQUIL, N, M, P, A, B, C, D, TOL)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
