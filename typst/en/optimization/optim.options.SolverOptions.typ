#import "nelson_help.typ": *

= optim.options.SolverOptions <optimization:optim.options.SolverOptions>

Solver options object.

== Syntax

- #raw("options = optimoptions(solver)");
- #raw("options = optimoptions(problem)");

== Input argument

/ solver: solver name or problem object used by optimoptions.
/ Name, Value: solver option names and values.

== Output argument

/ options: solver options object.

== Description

optim.options.SolverOptions stores solver option values created by optimoptions.

 The object is passed to optimization solvers or to solve through the problem-based workflow.


== Used function(s)

optimoptions

== Example

Create options for fminsearch.

``````matlab
opts = optimoptions('fminsearch', 'Display', 'off')
``````


== See also

#nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:solve>)[solve];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
