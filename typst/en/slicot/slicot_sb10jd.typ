#import "nelson_help.typ": *

= slicot\_sb10jd <slicot:slicot_sb10jd>

Converting a descriptor state-space system into regular state-space form.

== Syntax

- #raw("[A_OUT, B_OUT, C_OUT, D_OUT, E_OUT, NSYS, INFO] = slicot_sb10jd(A_IN, B_IN, C_IN, D_IN, E_IN)");

== Input argument

/ A\_IN: the leading N-by-N part of this array must contain the state matrix A of the descriptor system.
/ B\_IN: the leading N-by-M part of this array must contain the input matrix B of the descriptor system.
/ C\_IN: the leading NP-by-N part of this array must contain the output matrix C of the descriptor system.
/ D\_IN: the leading NP-by-M part of this array must contain the matrix D of the descriptor system.
/ E\_IN: the leading N-by-N part of this array must contain the matrix E of the descriptor system.

== Output argument

/ A\_OUT: the leading NSYS-by-NSYS part of this array contains the state matrix Ad of the converted system.
/ B\_OUT: the leading NSYS-by-M part of this array contains the input matrix Bd of the converted system.
/ C\_OUT: the leading NP-by-NSYS part of this array contains the output matrix Cd of the converted system.
/ D\_OUT: the leading NP-by-M part of this array contains the matrix Dd of the converted system.
/ E\_OUT: this array contains no useful information.
/ NSYS: The order of the converted state-space system.
/ INFO: \= 0: successful exit; \= 1: the iteration for computing singular value decomposition did not converge.

== Description

To convert the descriptor state-space system into regular state-space form.


== Used function(s)

SB10JD

== Bibliography

http:\/\/slicot.org\/objects\/software\/shared\/doc\/SB10JD.html

== Example

``````matlab
A_IN = [2 -4; 4 2];
B_IN = [0 -1; 0 0.5];
C_IN = [0 -0.5; 0 -2];
D_IN = [0 0; 0 -1];
E_IN = [1 0; -3 0.5];
[A_OUT, B_OUT, C_OUT, D_OUT, E_OUT, NSYS, INFO] = slicot_sb10jd(A_IN, B_IN, C_IN, D_IN, E_IN)
``````


== See also

#nlink(<slicot:slicot_tg01ad>)[slicot\_tg01ad];, #nlink(<slicot:slicot_ag08bd>)[slicot\_ag08bd];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: SLICOT Documentation
