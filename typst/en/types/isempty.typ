#import "nelson_help.typ": *

= isempty <types:isempty>

Return true if variable var is an empty matrix.

== Syntax

- #raw("res = isempty(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isempty]; returns a logical true if the argument is an empty matrix.

 Any one of its dimensions is zero.


== Examples

``````matlab
A = rand(3, 3, 3);
res = isempty(A)
A(:, :, :) = [];
res = isempty(A)

``````

``````matlab
B = {};
res = isempty(B)
C = struct()
res = isempty(C)
C = struct([])
res = isempty(C)
``````


== See also

#nlink(<types:class>)[class];, #nlink(<types:isstruct>)[isstruct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
