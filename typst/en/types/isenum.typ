#import "nelson_help.typ": *

= isenum <types:isenum>

Determine whether the input is an enumeration.

== Syntax

- #raw("tf = isenum(X)");

== Input argument

/ X: input value.

== Output argument

/ tf: logical scalar, true if X is an enumeration.

== Description

#strong[isenum]; returns true if X is an instance of an enumeration class, and false otherwise.


== Example

``````matlab
tf = isenum(3)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<handle:metaclass>)[metaclass];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
