#import "nelson_help.typ": *

= optim.problemdef.OptimizationConstraint <optimization:optim.problemdef.OptimizationConstraint>

Optimization constraints.

== Syntax

- #raw("constr = optimconstr(...)");
- #raw("prob.Constraints.name = constr");

== Input argument

/ left, relation, right: left expression, relation operator, and right expression used to build a constraint.
/ prob.Constraints.name: named constraint slot in an optimization problem.

== Output argument

/ constr: optimization constraint object.

== Description

optim.problemdef.OptimizationConstraint represents constraints built from optimization variables and expressions.

 Constraints are attached to an OptimizationProblem through its Constraints property.


== Used function(s)

optimvar optimproblem

== Example

Build a constraint from optimization variables.

``````matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
constr = x(1) + x(2) <= 4
``````


== See also

#nlink(<optimization:optimconstr>)[optimconstr];, #nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:solve>)[solve];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
