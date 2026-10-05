#import "../nelson_help.typ": *

= join <table:5_join_set_operations.join>

Join tables by key variables.

== Syntax

- #raw("T = join(left, right)");
- #raw("T = join(left, right, 'Keys', keys)");
- #raw("T = join(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)");

== Input argument

/ left, right: Input tables.
/ keys: Key variable names.
/ leftVars, rightVars: Variables to keep from the left and right tables.

== Output argument

/ T: Joined table.

== Description

#strong[join]; combines rows from two tables using matching key values.


== Example

``````matlab
L = table([1; 2], [10; 20], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3], [200; 300], 'VariableNames', {'Key', 'RightValue'});
J = join(L, R, 'Keys', 'Key')
``````


== See also

#nlink(<table:5_join_set_operations.innerjoin>)[innerjoin];, #nlink(<table:5_join_set_operations.outerjoin>)[outerjoin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
