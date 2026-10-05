#import "../nelson_help.typ": *

= mergevars <table:4_sort_filter_rearrange.mergevars>

Merge table variables.

== Syntax

- #raw("T2 = mergevars(T, vars)");
- #raw("T2 = mergevars(T, vars, 'NewVariableName', name)");

== Input argument

/ T: Input table.
/ vars: Variables to merge.

== Output argument

/ T2: Table with merged variables.

== Description

#strong[mergevars]; combines selected variables into one table variable.


== Example

``````matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'});
R = mergevars(T, {'A', 'B'}, 'NewVariableName', 'AB')
``````


== See also

#nlink(<table:4_sort_filter_rearrange.splitvars>)[splitvars];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
