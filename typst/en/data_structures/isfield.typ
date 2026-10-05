#import "nelson_help.typ": *

= isfield <data_structures:isfield>

Checks if a fieldname exists in a struct.

== Syntax

- #raw("res = isfield(S, name)");
- #raw("res = isfield(S, C)");

== Input argument

/ S: a struct
/ name: a string
/ C: a cell

== Output argument

/ res: a logical

== Description

#strong[isfield(A)]; returns true if #strong[name]; is a fieldname of #strong[S];.


== Examples

``````matlab
S.Nelson = 1;
isfield(S, 'Nel')
isfield(S, 'Nelson')
``````

``````matlab
S.nel = 1;
S.son = 2;
isfield(S,{ 1, 'nel'; 2, 'son'})
``````


== See also

#nlink(<data_structures:fieldnames>)[fieldnames];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
