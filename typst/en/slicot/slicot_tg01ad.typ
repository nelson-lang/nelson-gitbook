#import "nelson_help.typ": *

= slicot\_tg01ad <slicot:slicot_tg01ad>

Balancing the matrices of the system pencil corresponding to a descriptor triple (A-lambda E, B, C).

== Syntax

- #raw("[A_OUT, E_OUT, B_OUT, C_OUT, LSCALE, RSCALE, INFO] = slicot_tg01ad(JOB, THRESH, A_IN, E_IN, B_IN, C_IN)");

== Input argument

/ JOB: \= 'A': All matrices are involved in balancing; \= 'B': B, A and E matrices are involved in balancing; \= 'C': C, A and E matrices are involved in balancing; \= 'N': B and C matrices are not involved in balancing.
/ THRESH: Threshold value for magnitude of elements: elements with magnitude less than or equal to THRESH are ignored for balancing.
/ A\_IN: The leading L-by-N part of this array must contain the state dynamics matrix A.
/ E\_IN: The leading L-by-N part of this array must contain the descriptor matrix E.
/ B\_IN: The leading L-by-M part of this array must contain the input\/state matrix B.
/ C\_IN: The leading P-by-N part of this array must contain the state\/output matrix C.

== Output argument

/ A\_OUT: The leading L-by-N part of this array contains the balanced matrix Dl\*A\*Dr.
/ E\_OUT: The leading L-by-N part of this array contains the balanced matrix Dl\*E\*Dr.
/ B\_OUT: The leading L-by-M part of this array contains the balanced matrix Dl\*B.
/ C\_OUT: The leading P-by-N part of this array contains the balanced matrix C\*Dr.
/ LSCALE: The scaling factors applied to S from left.
/ RSCALE: The scaling factors applied to S from right.
/ INFO: \= 0: successful exit.

== Description

To balance the matrices of the system pencil corresponding to the descriptor triple (A-lambda E,B,C), by balancing.


== Used function(s)

TG01AD

== Bibliography

http:\/\/slicot.org\/objects\/software\/shared\/doc\/TG01AD.html

== Example

``````matlab
L = 4;
N = 4;
M = 2;
P = 2;
JOB = 'A';
THRESH = 0;

A_IN = [ -1         0         0    0.003;
         0         0    0.1000    0.02;
       100        10         0    0.4;
         0         0         0    0.0];

E_IN = [1       0.2         0    0.0;
         0         1         0    0.01;
       300        90         6    0.3;
         0         0        20    0.0];

B_IN = [10         0;
         0         0;
         0      1000;
     10000     10000];

C_IN = [-0.1      0.0    0.001    0.0;
       0.0      0.01  -0.001    0.0001];

[A_OUT, E_OUT, B_OUT, C_OUT, LSCALE, RSCALE, INFO] = slicot_tg01ad(JOB, THRESH, A_IN, E_IN, B_IN, C_IN)
``````


== See also

#nlink(<slicot:slicot_tb01id>)[slicot\_tb01id];, #nlink(<slicot:slicot_sb10jd>)[slicot\_sb10jd];, #nlink(<control_system:1_dynamic_system_models.balreal>)[balreal];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: SLICOT Documentation
