#import "nelson_help.typ": *

= iscellstr <data_structures:iscellstr>

Returns if a variable is a cell of strings.

== Syntax

- #raw("true_or_false = iscellstr(A)");

== Input argument

/ A: a variable

== Output argument

/ true\_or\_false: a logical

== Description

#strong[iscellstr(A)]; returns true if #strong[A]; is a cell of strings or an empty cell).


== Examples

``````matlab
iscellstr('Nelson')
``````

``````matlab
iscellstr({'Nelson'})
``````

``````matlab
iscellstr({})
``````


== See also

#nlink(<types:iscell>)[iscell];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
