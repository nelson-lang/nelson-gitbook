

# slicot_ag08bd

Zeros and Kronecker structure of a descriptor system pencil.

## Syntax

- [A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)

## Input argument

 - EQUIL - = 'S':  Perform balancing (scaling); = 'N':  Do not perform balancing.
 - M - The number of columns of matrix B.
 - P - The number of rows of matrix C.
 - A_IN - The leading L-by-N part of this array must contain the state dynamics matrix A of the system.
 - E_IN - The leading L-by-N part of this array must contain the descriptor matrix E of the system.
 - B - The leading L-by-M part of this array must contain the input/state matrix B of the system.
 - C - The leading P-by-N part of this array must contain the state/output matrix C of the system.
 - D - The leading P-by-M part of this array must contain the direct transmission matrix D of the system.
 - TOL - A tolerance used in rank decisions to determine the effective rank, which is defined as the order of the largest leading (or trailing) triangular submatrix in the QR (or RQ) factorization with column (or row) pivoting whose estimated condition number is less than 1/TOL.

## Output argument

 - A_OUT - The leading NFZ-by-NFZ part of this array contains the matrix Af of the reduced pencil.
 - E_OUT - The leading NFZ-by-NFZ part of this array contains the matrix Ef of the reduced pencil.
 - NFZ - The number of finite zeros.
 - NRANK - The normal rank of the system pencil.
 - NIZ - The number of infinite zeros.
 - DINFZ - The maximal multiplicity of infinite Smith zeros.
 - NKROR - The number of right Kronecker indices.
 - NINFE - The number of elementary infinite blocks.
 - NKROL - The number of left Kronecker indices.
 - INFZ - The leading DINFZ elements of INFZ contain information on the infinite elementary divisors
 - KRONR - The leading NKROR elements of this array contain the right Kronecker (column) indices.
 - KRONL - The leading NKROL elements of this array contain the left Kronecker (row) indices.
 - INFO - = 0:  successful exit;

## Description


  <p> To extract from the system pencil a regular pencil Af-lambda*Ef which has the finite Smith zeros of S(lambda) as generalized eigenvalues. The routine also computes the orders of the infinite Smith zeros and determines the singular and infinite Kronecker structure of system pencil, i.e., the right and left Kronecker indices, and the multiplicities of infinite eigenvalues.</p>


Used function(s)

AG08BD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/AG08BD.html

## Example

```matlab
L = 9;
N = 9;
M = 3;
P = 3;
TOL= 1.e-7;
EQUIL='N';
A_IN = [1     0     0     0     0     0     0     0     0;
     0     1     0     0     0     0     0     0     0;
     0     0     1     0     0     0     0     0     0;
     0     0     0     1     0     0     0     0     0;
     0     0     0     0     1     0     0     0     0;
     0     0     0     0     0     1     0     0     0;
     0     0     0     0     0     0     1     0     0;
     0     0     0     0     0     0     0     1     0;
     0     0     0     0     0     0     0     0     1];

E_IN = [0     0     0     0     0     0     0     0     0;
     1     0     0     0     0     0     0     0     0;
     0     1     0     0     0     0     0     0     0;
     0     0     0     0     0     0     0     0     0;
     0     0     0     1     0     0     0     0     0;
     0     0     0     0     1     0     0     0     0;
     0     0     0     0     0     0     0     0     0;
     0     0     0     0     0     0     1     0     0;
     0     0     0     0     0     0     0     1     0];

B =[-1     0     0;
     0     0     0;
     0     0     0;
     0    -1     0;
     0     0     0;
     0     0     0;
     0     0    -1;
     0     0     0;
     0     0     0];

C = [ 0     1     1     0     3     4     0     0     2;
      0     1     0     0     4     0     0     2     0;
      0     0     1     0    -1     4     0    -2     2];

D = [ 1     2    -2;
      0    -1    -2;
      0     0     0];
//=============================================================================
// default call for the fortran routine
M = 3; P = 3;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
//=============================================================================
// Compute poles (we need tp call fortran routine with M = 0, P = 0)
M = 0; P = 0;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
//=============================================================================
//  Check the observability and compute the ordered set of the observability indices (call the routine with M = 0).
M = 0; P = 3;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
//=============================================================================
// Check the controllability and compute the ordered set of the controllability indices (call the routine with P = 0)
M = 3; P = 0;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
//=============================================================================
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



