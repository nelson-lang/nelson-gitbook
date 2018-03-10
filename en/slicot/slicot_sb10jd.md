

# slicot_sb10jd

Converting a descriptor state-space system into regular state-space form.

## Syntax

- [A_OUT, B_OUT, C_OUT, D_OUT, E_OUT, NSYS, INFO] = slicot_sb10jd(A_IN, B_IN, C_IN, D_IN, E_IN)

## Input argument

 - A_IN - the leading N-by-N part of this array must contain the state matrix A of the descriptor system.
 - B_IN - the leading N-by-M part of this array must contain the input matrix B of the descriptor system.
 - C_IN - the leading NP-by-N part of this array must contain the output matrix C of the descriptor system.
 - D_IN - the leading NP-by-M part of this array must contain the matrix D of the descriptor system.
 - E_IN - the leading N-by-N part of this array must contain the matrix E of the descriptor system.

## Output argument

 - A_OUT - the leading NSYS-by-NSYS part of this array contains the state matrix Ad of the converted system.
 - B_OUT - the leading NSYS-by-M part of this array contains the input matrix Bd of the converted system.
 - C_OUT - the leading NP-by-NSYS part of this array contains the output matrix Cd of the converted system.
 - D_OUT - the leading NP-by-M part of this array contains the matrix Dd of the converted system.
 - E_OUT - this array contains no useful information.
 - NSYS - The order of the converted state-space system.
 - INFO - = 0:  successful exit; = 1:  the iteration for computing singular value decomposition did not converge.

## Description


  <p>To convert the descriptor state-space system into regular state-space form.</p>


Used function(s)

SB10JD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/SB10JD.html

## Example

```matlab
A_IN = [2 -4; 4 2];
B_IN = [0 -1; 0 0.5];
C_IN = [0 -0.5; 0 -2];
D_IN = [0 0; 0 -1];
E_IN = [1 0; -3 0.5];
[A_OUT, B_OUT, C_OUT, D_OUT, E_OUT, NSYS, INFO] = slicot_sb10jd(A_IN, B_IN, C_IN, D_IN, E_IN)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



