#import "../nelson_help.typ": *

= vartype <table:1_create_convert_tables.vartype>

Select table variables by type.

== Syntax

- #raw("S = vartype(typeName)");

== Input argument

/ typeName: Class name used to select variables.

== Output argument

/ S: Variable type selector.

== Description

#strong[vartype]; creates a selector that can be used by table functions such as #strong[varfun]; and #strong[convertvars];.


== Example

``````matlab
T = table([1; 2], {'a'; 'b'}, 'VariableNames', {'A', 'B'});
R = varfun(@mean, T, 'InputVariables', vartype('double'))
``````


== See also

#nlink(<table:7_apply_functions.varfun>)[varfun];, #nlink(<table:1_create_convert_tables.convertvars>)[convertvars];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
