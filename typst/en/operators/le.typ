#import "nelson_help.typ": *

= le <operators:le>

less than or equal, \= operator.

== Syntax

- #raw("C = le(A, B)");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of le(A, B)

== Description

#strong[C \= le(A, B)]; returns a logical array with elements set to logical#strong[true]; A is less than or equal to B.

 #strong[le]; compares only the real part of numeric arrays.

 When inputs are sparse numeric or logical arrays, the result is a sparse logical array. Sparse #strong[single]; and single-complex operands are supported.

 For sparse complex arrays, order comparisons use the magnitude of each value.


== Examples

``````matlab
eye(2,2) &#60;= ones(2, 2)
``````

``````matlab
0 &#60;= i
``````

``````matlab
'Nelson' &#60;= 'Noslen'
``````

``````matlab
'Nelson' &#60;= 'l'
``````

``````matlab
le(0.8 - 0.6 - 0.2, 0)
``````


== See also

#nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:ge>)[ge];, #nlink(<operators:gt>)[gt];, #nlink(<operators:eq>)[eq];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and single-complex operands supported.],
)

// Author: Allan CORNET
