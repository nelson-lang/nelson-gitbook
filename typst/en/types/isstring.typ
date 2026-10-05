#import "nelson_help.typ": *

= isstring <types:isstring>

Return true if variable var is a string array.

== Syntax

- #raw("res = isstring(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isstring]; returns a logical 1 if the argument is a string array and a logical 0 otherwise.
== Examples

``````matlab
A = 3;
res = isstring(A)
``````

``````matlab
B = "NelSon";
res = isstring(B)
``````

``````matlab
C = [1 ; 3];
res = isstring(C)
``````


== See also

#nlink(<types:class>)[class];, #nlink(<string:1_create_convert_text.string>)[string];, #nlink(<types:ischar>)[ischar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
