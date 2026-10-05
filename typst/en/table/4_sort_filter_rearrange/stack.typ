#import "../nelson_help.typ": *

= stack <table:4_sort_filter_rearrange.stack>

Stack table variables into rows.

== Syntax

- #raw("S = stack(T, vars)");
- #raw("S = stack(T, vars, 'NewDataVariableName', name)");

== Input argument

/ T: Input table.
/ vars: Variables to stack.

== Output argument

/ S: Stacked table.

== Description

#strong[stack]; converts selected variables into a single data variable and an indicator variable.


== Example

``````matlab
T = table({'a'; 'b'}, [1; 2], [3; 4], 'VariableNames', {'ID', 'X', 'Y'});
S = stack(T, {'X', 'Y'}, 'NewDataVariableName', 'Value')
``````


== See also

#nlink(<table:4_sort_filter_rearrange.unstack>)[unstack];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
