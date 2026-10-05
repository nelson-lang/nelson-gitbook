#import "../nelson_help.typ": *

= unstack <table:4_sort_filter_rearrange.unstack>

Unstack rows into table variables.

== Syntax

- #raw("U = unstack(S, dataVar, indicatorVar)");

== Input argument

/ S: Input stacked table.
/ dataVar: Data variable name.
/ indicatorVar: Indicator variable name.

== Output argument

/ U: Unstacked table.

== Description

#strong[unstack]; creates variables from values in an indicator variable.


== Example

``````matlab
S = table({'a'; 'a'; 'b'; 'b'}, {'X'; 'Y'; 'X'; 'Y'}, [1; 3; 2; 4], 'VariableNames', {'ID', 'Measure', 'Value'});
U = unstack(S, 'Value', 'Measure')
``````


== See also

#nlink(<table:4_sort_filter_rearrange.stack>)[stack];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
