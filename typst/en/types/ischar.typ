#import "nelson_help.typ": *

= ischar <types:ischar>

Return true if variable var is a char array.

== Syntax

- #raw("res = ischar(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[ischar]; returns a logical 1 if the argument is a char array and a logical 0 otherwise.
== Examples

``````matlab
A = 3;
res = ischar(A)
``````

``````matlab
B = 'NelSon';
res = ischar(B)
``````

``````matlab
C = [1 ; 3];
res = ischar(C)
``````


== See also

#nlink(<types:class>)[class];, #nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
