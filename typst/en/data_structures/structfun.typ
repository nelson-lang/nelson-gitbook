#import "nelson_help.typ": *

= structfun <data_structures:structfun>

Apply a function to each field of a scalar structure.

== Syntax

- #raw("B = structfun(fun, S)");
- #raw("B = structfun(fun, S, 'UniformOutput', tf)");

== Input argument

/ fun: function handle applied to each field value.
/ S: scalar structure.
/ tf: 'UniformOutput' flag: true (default) or false.

== Output argument

/ B: column vector (uniform output) or structure (non-uniform output).

== Description

#strong[structfun(fun, S)]; applies #strong[fun]; to each field of the scalar structure #strong[S]; and returns the results as a column vector.

 With #strong['UniformOutput']; set to #strong[false];, the results are returned in a structure with the same fields as #strong[S];.


== Example

``````matlab
s.a = 1; s.b = 2; s.c = 3;
structfun(@(x) x * 2, s)
``````


== See also

#nlink(<data_structures:cellfun>)[cellfun];, #nlink(<data_structures:arrayfun>)[arrayfun];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
