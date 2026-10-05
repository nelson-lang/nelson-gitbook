#import "nelson_help.typ": *

= keyHash <dictionary:keyHash>

Create a hash code for a dictionary key.

== Syntax

- #raw("H = keyHash(A)");

== Input argument

/ A: array

== Output argument

/ H: scalar: uint64, Hash code.

== Description

#strong[H \= keyHash(A)]; returns a uint64 scalar representing the input array,#strong[A];.

 The keyHash function computes a hash code derived from the characteristics of the input.

 For custom classes, keyHash might require overloading to guarantee proper equivalence.


== Example

``````matlab
keyHash({'a', 'b', 1})
keyHash({1, 'a', 'b'})
``````


== See also

#nlink(<dictionary:keyMatch>)[keyMatch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
