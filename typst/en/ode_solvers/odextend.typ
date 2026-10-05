#import "nelson_help.typ": *

= odextend <ode_solvers:odextend>

Extend an ODE solution.

== Syntax

- #raw("solout = odextend(sol, odefun, tfinal)");
- #raw("solout = odextend(sol, odefun, tfinal, options)");

== Description

#strong[odextend]; continues a solution from its last computed point to a new final time.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Input solution], [Existing #strong[sol]; structure returned by an ODE solver.], 
  [Continuation], [Extends the solution to a new final time using the same problem definition.], 
  [Options], [Optional solver options can update tolerances, events, output callbacks, and step limits.], 
  [Result], [A new #strong[sol]; structure compatible with #strong[deval];.], 
)
 When #strong[odefun]; is empty, the function stored in the input solution is reused. If the requested final time is already covered by the solution interval, the input solution is returned. Extending in the opposite direction is an error. Event fields are preserved and extended when event data exists. Solutions without event data do not gain empty #strong[xe];, #strong[ye];, or #strong[ie]; fields.


== Example

``````matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
sol = odextend(sol, [], 1)
``````


== See also

#nlink(<ode_solvers:deval>)[deval];, #nlink(<ode_solvers:odeset>)[odeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
