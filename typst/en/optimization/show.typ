#import "nelson_help.typ": *

= show <optimization:show>

Display an optimization object.

== Syntax

- #raw("show(obj)");

== Input argument

/ obj: optimization problem, expression, constraint or variable.

== Description

#strong[show]; displays a compact textual representation of a problem-based object. Optimization variables are displayed by dimensions and indices only; variable types and bounds are not shown in the variable display. Expressions, constraints and problems are displayed as problem-based formulas.


== Used function(s)

optimproblem optimvar

== Example

``````matlab
x = optimvar('x', 2);
show(x)
obj = log(1 + 100 * (x(2) - x(1)^2)^2 + (1 - x(1))^2);
show(obj)
cons = x(1)^2 + x(2)^2 <= 1;
show(cons)
prob = optimproblem('Objective', obj, 'Constraints', cons);
show(prob)

``````


== See also

#nlink(<optimization:evaluate>)[evaluate];, #nlink(<optimization:optimproblem>)[optimproblem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
