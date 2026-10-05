#import "nelson_help.typ": *

= symvar <string:symvar>

Determine the variables in an expression.

== Syntax

- #raw("v = symvar(expr)");

== Input argument

/ expr: Expression as text (character vector, string scalar) or a function handle.

== Output argument

/ v: Column cell array of variable names.

== Description

#strong[symvar]; returns the names of the variables used in #strong[expr];, sorted alphabetically and without duplicates.

Identifiers that resolve to a function or a builtin (including the special values #strong[pi];, #strong[i];, #strong[j];, #strong[eps];, #strong[Inf]; and #strong[NaN];), language keywords and field access names are not reported as variables.


== Example

``````matlab
v = symvar('sin(x) + a*y')
``````


== See also

#nlink(<string:vectorize>)[vectorize];, #nlink(<function_handle:func2str>)[func2str];, #nlink(<interpreter:iskeyword>)[iskeyword];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
