#import "nelson_help.typ": *

= accumarray <data_analysis:accumarray>

Construct array by accumulation.

== Syntax

- #raw("A = accumarray(subs, val)");
- #raw("A = accumarray(subs, val, sz)");
- #raw("A = accumarray(subs, val, sz, fun)");
- #raw("A = accumarray(subs, val, sz, fun, fillval)");

== Input argument

/ subs: subscripts: column vector or matrix of positive integers.
/ val: values to accumulate: column vector or scalar.
/ sz: size of the output: row vector or \[\].
/ fun: accumulation function: function handle (default \@sum).
/ fillval: value for empty positions (default 0).

== Output argument

/ A: accumulated array.

== Description

#strong[accumarray(subs, val)]; groups the elements of #strong[val]; by the subscripts in #strong[subs]; and applies #strong[\@sum]; to each group.

 Each row of #strong[subs]; is the position in the output where the corresponding value of #strong[val]; is accumulated.

 #strong[fun]; replaces the default sum, and #strong[fillval]; sets the value of positions that receive no contribution.


== Example

``````matlab
accumarray([1;2;1;3], [10;20;30;40])
accumarray([1;1;2], [3;5;7], [], @max)
``````


== See also

#nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:unique>)[unique];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
