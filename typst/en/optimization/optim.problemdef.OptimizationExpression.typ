#import "nelson_help.typ": *

= optim.problemdef.OptimizationExpression <optimization:optim.problemdef.OptimizationExpression>

Optimization expression.

== Syntax

- #raw("expr = optimexpr(...)");
- #raw("expr = fcn2optimexpr(f, ...)");

== Input argument

/ value: numeric value, optimization variable, or expression used to create an expression.
/ dimensions: dimensions used to create an array of zero expressions.

== Output argument

/ expr: optimization expression object.

== Description

optim.problemdef.OptimizationExpression represents arithmetic expressions built from optimization variables.

 Expressions can be used as objectives or as parts of constraints in a problem-based model.


== Used function(s)

optimexpr optimvar

== Example

Create a scalar expression from optimization variables.

``````matlab
x = optimvar('x', 2, 1);
expr = (x(1) - 1)^2 + (x(2) - 2)^2
``````


== See also

#nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:fcn2optimexpr>)[fcn2optimexpr];, #nlink(<optimization:optimvar>)[optimvar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
