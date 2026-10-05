#import "nelson_help.typ": *

= optimexpr <optimization:optimexpr>

Create an optimization expression.

== Syntax

- #raw("expr = optimexpr()");
- #raw("expr = optimexpr(value)");

== Input argument

/ value: numeric value or expression seed.

== Output argument

/ expr: optimization expression object.

== Description

#strong[optimexpr]; creates an expression object that can be combined with optimization variables by arithmetic operators.


== Used function(s)

optimvar evaluate

== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Example

``````matlab
x = optimvar('x');
expr = optimexpr(3) + x^2;
value = evaluate(expr, struct('x', 2))

``````


== See also

#nlink(<optimization:evaluate>)[evaluate];, #nlink(<optimization:optimconstr>)[optimconstr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
