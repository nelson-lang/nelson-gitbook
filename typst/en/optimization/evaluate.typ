#import "nelson_help.typ": *

= evaluate <optimization:evaluate>

Evaluate an optimization expression.

== Syntax

- #raw("value = evaluate(expr, values)");

== Input argument

/ expr: optimization expression or variable.
/ values: structure containing variable values.

== Output argument

/ value: evaluated numeric value.

== Description

#strong[evaluate]; computes the numeric value of a problem-based expression for a given assignment of variables.


== Used function(s)

optimexpr optimvar

== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Example

``````matlab
x = optimvar('x');
expr = (x - 4)^2;
value = evaluate(expr, struct('x', 3))

``````


== See also

#nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:show>)[show];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
