#import "nelson_help.typ": *

= iscell <types:iscell>

Return true if variable var is a cell array.

== Syntax

- #raw("res = iscell(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[iscell]; returns a logical 1 if the argument is a cell array and a logical 0 otherwise.
== Examples

``````matlab
A = 3;
res = iscell(A)
``````

``````matlab
B = {'NelSon', 3, true};
res = iscell(B)
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
