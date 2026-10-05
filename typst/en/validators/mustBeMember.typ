#import "nelson_help.typ": *

= mustBeMember <validators:mustBeMember>

Checks that value is member of specified array or issue error.

== Syntax

- #raw("mustBeMember(var, c)");
- #raw("mustBeMember(var, c, argPosition)");
- #raw("C++: void mustBeMember(const ArrayOfVector& args, const ArrayOf &c, int argPosition)");

== Input argument

/ var: a variable.
/ c: a variable.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeMember]; checks that value is member of an array or issue error.


== Example

``````matlab
A = "red";
B = ["yellow","red","blue"];
mustBeMember(A,B)

``````


== See also

#nlink(<validators:mustBeNonempty>)[mustBeNonempty];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
