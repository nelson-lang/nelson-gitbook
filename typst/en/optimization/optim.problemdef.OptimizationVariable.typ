#import "nelson_help.typ": *

= optim.problemdef.OptimizationVariable <optimization:optim.problemdef.OptimizationVariable>

Variable for optimization expressions.

== Syntax

- #raw("x = optimvar(name)");
- #raw("x = optimvar(name, n, m, Name, Value)");

== Input argument

/ name: variable name used in generated expressions and solution structures.
/ n, m: optional dimensions for vector or matrix variables.
/ Name, Value: variable properties such as LowerBound, UpperBound, and Type.

== Output argument

/ x: optimization variable object.

== Description

optim.problemdef.OptimizationVariable represents scalar or array variables used to build optimization expressions.

 Create variables with optimvar, then combine them into objectives and constraints.


== Used function(s)

optimvar

== Example

Create a two-element variable and use it in an expression.

``````matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
expr = (x(1) - 1)^2 + (x(2) - 2)^2
``````


== See also

#nlink(<optimization:optimvar>)[optimvar];, #nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:optimproblem>)[optimproblem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
