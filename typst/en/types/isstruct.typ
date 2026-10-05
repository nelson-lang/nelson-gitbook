#import "nelson_help.typ": *

= isstruct <types:isstruct>

Return true if variable var is a structure.

== Syntax

- #raw("res = isstruct(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isstruct]; returns a logical 1 if the argument is a struct (structure) and a logical 0 otherwise.
== Examples

``````matlab
A = 1;
res = isstruct(A)
``````

``````matlab
B = struct();
res = isstruct(B)
``````

``````matlab
C.a = 1;
C.B = 'hello';
res = isstruct(C)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<data_structures:struct>)[struct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
