#import "../nelson_help.typ": *

= varfun <table:7_apply_functions.varfun>

Apply a function to table variables.

== Syntax

- #raw("R = varfun(fun, T)");
- #raw("R = varfun(fun, T, 'InputVariables', vars)");

== Input argument

/ fun: Function handle.
/ T: Input table.

== Output argument

/ R: Result table, array, or cell array depending on OutputFormat.

== Description

#strong[varfun]; applies a function independently to selected variables.


== Example

``````matlab
T = table([1; 2; 4], [10; 20; 30], 'VariableNames', {'X', 'Y'});
R = varfun(@mean, T)
``````


== See also

#nlink(<table:7_apply_functions.rowfun>)[rowfun];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
