#import "../nelson_help.typ": *

= convertvars <table:1_create_convert_tables.convertvars>

Convert table variables.

== Syntax

- #raw("T2 = convertvars(T, vars, fun)");

== Input argument

/ T: Input table.
/ vars: Variables to convert.
/ fun: Function handle applied to selected variables.

== Output argument

/ T2: Table with converted variables.

== Description

#strong[convertvars]; applies a conversion function to selected variables.


== Example

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
R = convertvars(T, 'A', @(x) single(x))
``````


== See also

#nlink(<table:1_create_convert_tables.vartype>)[vartype];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
