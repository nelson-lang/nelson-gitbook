#import "../nelson_help.typ": *

= splitvars <table:4_sort_filter_rearrange.splitvars>

Split multicolumn table variables.

== Syntax

- #raw("T2 = splitvars(T, vars)");
- #raw("T2 = splitvars(T, vars, 'NewVariableNames', names)");

== Input argument

/ T: Input table.
/ vars: Variables to split.

== Output argument

/ T2: Table with split variables.

== Description

#strong[splitvars]; replaces a multicolumn variable with separate table variables.


== Example

``````matlab
T = table([1 3; 2 4], 'VariableNames', {'AB'});
R = splitvars(T, 'AB', 'NewVariableNames', {'A', 'B'})
``````


== See also

#nlink(<table:4_sort_filter_rearrange.mergevars>)[mergevars];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
