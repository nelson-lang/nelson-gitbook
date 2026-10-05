#import "nelson_help.typ": *

= deval <ode_solvers:deval>

Evaluate an ODE solution.

== Syntax

- #raw("y = deval(sol, t)");
- #raw("[y, yp] = deval(sol, t)");

== Description

#strong[deval]; interpolates a solution structure or a result object returned by an ODE solver.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Input solution], [Structure or result object returned by ODE, DDE, or BVP solvers.], 
  [Evaluation points], [#strong[t]; or #strong[x]; values inside the computed interval.], 
  [Outputs], [#strong[y]; values and optional #strong[yp]; derivative values, one column per evaluation point.], 
  [Use case], [Dense output, plotting, post-processing, and solution comparison.], 
)
 The result has one row per state variable and one column per evaluation point. This shape is used for both row and column vectors of evaluation times. Evaluation points must lie inside the solution interval. The optional second output returns the derivative at the same points.


== Example

``````matlab
sol = ode45(@(t,y) -y, [0 1], 1);
[y, yp] = deval(sol, [0; 0.5; 1])
``````


== See also

#nlink(<ode_solvers:odextend>)[odextend];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
