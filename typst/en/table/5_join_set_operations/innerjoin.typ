#import "../nelson_help.typ": *

= innerjoin <table:5_join_set_operations.innerjoin>

Inner join of two tables.

== Syntax

- #raw("T = innerjoin(left, right)");
- #raw("T = innerjoin(left, right, 'Keys', keys)");
- #raw("T = innerjoin(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)");

== Input argument

/ left, right: Input tables.
/ keys: Key variable names.
/ leftVars, rightVars: Variables to keep from the left and right tables.

== Output argument

/ T: Table containing rows with matching keys in both inputs.

== Description

#strong[innerjoin]; keeps only rows whose key values are present in both tables.


== Example

``````matlab
L = table([1; 2; 3], [10; 20; 30], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3; 4], [200; 300; 400], 'VariableNames', {'Key', 'RightValue'});
J = innerjoin(L, R, 'Keys', 'Key')
``````


== See also

#nlink(<table:5_join_set_operations.join>)[join];, #nlink(<table:5_join_set_operations.outerjoin>)[outerjoin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
