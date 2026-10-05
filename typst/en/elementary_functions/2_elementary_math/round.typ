#import "../nelson_help.typ": *

= round <elementary_functions:2_elementary_math.round>

Round to nearest integer

== Syntax

- #raw("C = round(A)");
- #raw("C = round(A, N)");
- #raw("C = round(A, N, 'decimals')");
- #raw("C = round(A, N, 'significant')");

== Input argument

/ A: a variable
/ N: number of digits: real integer scalar.
/ type: 'decimals' (default) or 'significant'.

== Output argument

/ C: result of round.

== Description

#strong[round]; rounds the elements to the nearest integers.

 #strong[round(A, N)]; rounds to #strong[N]; digits to the right of the decimal point (#strong[N]; may be negative). This is the same as #strong[round(A, N, 'decimals')];.

 #strong[round(A, N, 'significant')]; rounds to #strong[N]; significant digits; here #strong[N]; must be positive.

 Sparse single and sparse single complex inputs are supported. Only stored nonzero entries are rounded and the result keeps the sparse storage and the input precision.


== Examples

``````matlab
round(pi)
``````

Round to a number of decimal or significant digits.

``````matlab
round(3.14159, 2)
round(12345, 2, 'significant')
``````

Round a sparse single matrix to nearest integers.

``````matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = round(S)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.floor>)[floor];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and sparse single complex inputs supported.],
  [2.0.0], [round(A, N) and the 'decimals' \/ 'significant' options added.],
)

// Author: Allan CORNET
