#import "nelson_help.typ": *

= ne <operators:ne>

Inequality, \~\= operator

== Syntax

- #raw("C = ne(A, B)");
- #raw("C = A ~= B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A \~\= B

== Description

#strong[C \= ne(A, B)]; performs inequality operation: A \~\= B variables.

 #strong[ne]; compares both real and imaginary parts of numeric arrays.

 When inputs are sparse numeric or logical arrays, the result is a sparse logical array. Sparse #strong[single]; and single-complex operands are supported.


== Example

``````matlab
ne(3, 4)
3 ~= 4
``````


== See also

#nlink(<operators:le>)[le];, #nlink(<operators:ge>)[ge];, #nlink(<operators:eq>)[eq];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and single-complex operands supported.],
)

// Author: Allan CORNET
