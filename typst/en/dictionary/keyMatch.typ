#import "nelson_help.typ": *

= keyMatch <dictionary:keyMatch>

Check whether two dictionary keys are same.

== Syntax

- #raw("tf = keyMatch(A, B)");

== Input argument

/ A: array
/ B: array

== Output argument

/ tf: logical: true or false.

== Description

#strong[tf \= keyMatch(A, B)]; returns #strong[true]; if arrays#strong[A]; and#strong[B]; have identical classes, properties, dimensions, and values, and returns#strong[false]; otherwise.

 For custom classes, overloading#strong[keyMatch]; may be necessary to ensure accurate equivalence.


== Example

``````matlab
A = {'a', 'b', 1};
B = {1, 'a', 'b'};
C = A;
D = B;
keyMatch(A, B)
keyMatch(A, C)
keyMatch(B, D)
``````


== See also

#nlink(<dictionary:keyHash>)[keyHash];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
