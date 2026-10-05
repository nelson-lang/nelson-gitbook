#import "nelson_help.typ": *

= ode interpolation extension tutorial <ode_solvers:6_ode_interpolation_extension_tutorial>

Interpolate and extend ODE solutions.

== Description

Call a solver with one output to get a solution structure. The structure stores accepted internal steps; array outputs such as #strong[\[t, y\]]; use requested or refined output points. Use #strong[deval]; to evaluate the solution structure at additional times.

 

#table(
  columns: 3,
  [Task], [Call], [Notes], 
  [Interpolate], [#strong[deval(sol, tq)];], [Evaluation points must stay inside the solution interval.], 
  [Get derivatives], [#strong[\[y, yp\] \= deval(sol, tq)];], [Derivative output follows the same column layout as #strong[y];.], 
  [Continue], [#strong[odextend(sol, odefun, tfinal)];], [Builds a new solution structure on the extended interval.], 
)
 Use #strong[odextend]; to continue an integration from the final state while preserving solution metadata and events.


== Examples

Evaluate a solution at requested points.

``````matlab
sol = ode45(@(t,y) -y, [0 1], 1);
values = deval(sol, [0 0.25 0.5 1])
``````

Extend a solution.

``````matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
extended = odextend(sol, @(t,y) -y, 1);
value = deval(extended, 1)
``````


== See also

#nlink(<ode_solvers:deval>)[deval];, #nlink(<ode_solvers:odextend>)[odextend];, #nlink(<ode_solvers:ode45>)[ode45];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
