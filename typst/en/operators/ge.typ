#import "nelson_help.typ": *

= ge <operators:ge>

greater than or equal, \>\= operator.

== Syntax

- #raw("C = ge(A, B)");
- #raw("C = (A >= B)");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A \>\= B

== Description

#strong[C \= ge(A, B)]; returns a logical array with elements set to logical#strong[true]; A is greater than or equal to B.

 

 #strong[ge]; compares only the real part of numeric arrays.

 When inputs are sparse numeric or logical arrays, the result is a sparse logical array. Sparse #strong[single]; and single-complex operands are supported.

 For sparse complex arrays, order comparisons use the magnitude of each value.


== Examples

``````matlab
eye(2,2) >= ones(2, 2)
``````

``````matlab
0 >= i
``````

``````matlab
'Nelson' >= 'Noslen'
``````

``````matlab
'Nelson' >= 'l'
``````

``````matlab
ge(0.8-0.6-0.2, 0)
``````


== See also

#nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:le>)[le];, #nlink(<operators:gt>)[gt];, #nlink(<operators:eq>)[eq];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and single-complex operands supported.],
)

// Author: Allan CORNET
