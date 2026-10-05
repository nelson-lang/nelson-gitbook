#import "nelson_help.typ": *

= fcn2optimexpr <optimization:fcn2optimexpr>

Convert a function to an optimization expression.

== Syntax

- #raw("expr = fcn2optimexpr(fcn, in1, ..., inN)");
- #raw("expr = fcn2optimexpr(fcn, in1, ..., inN, name, value)");

== Input argument

/ fcn: function handle to convert into an optimization expression.
/ in1, ..., inN: input arguments passed to #strong[fcn];: optimization variables, optimization expressions, or numeric constants.
/ name, value: optional name-value arguments: 'OutputSize', 'ReuseEvaluation', 'Analysis'.

== Output argument

/ expr: optimization expression object.

== Description

#strong[fcn2optimexpr]; converts a function into an optimization expression, so that functions that cannot be composed from the supported elementary operators can still be used as objectives or constraints in a problem-based model.

 When the expression is evaluated, each input argument is evaluated for the current variable values, then #strong[fcn]; is called on the resulting numeric values.


== Used function(s)

optimvar optimexpr evaluate

== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Examples

Wrap a scalar function of one variable.

``````matlab
x = optimvar('x');
expr = fcn2optimexpr(@(v) sin(v), x);
value = evaluate(expr, struct('x', pi / 2))

``````

Use a converted function as an objective.

``````matlab
x = optimvar('x');
prob = optimproblem('Objective', fcn2optimexpr(@(v) (v - 3) .^ 2 + 1, x));
[sol, fval] = solve(prob, struct('x', 0))

``````


== See also

#nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:optimvar>)[optimvar];, #nlink(<optimization:evaluate>)[evaluate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
