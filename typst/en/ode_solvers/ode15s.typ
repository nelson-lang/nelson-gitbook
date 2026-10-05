#import "nelson_help.typ": *

= ode15s <ode_solvers:ode15s>

Stiff ODE solver entry point.

== Syntax

- #raw("[t, y] = ode15s(odefun, tspan, y0)");

== Description

#strong[ode15s]; provides the stiff solver interface. The first implementation uses the shared in-tree adaptive engine.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Problem form], [#strong[y' \= f(t,y)];, with initial value #strong[y0];.], 
  [Inputs], [#strong[odefun];, #strong[tspan];, #strong[y0];, and options created with #strong[odeset];.], 
  [Outputs], [#strong[\[t,y\]]; arrays or a #strong[sol]; structure compatible with #strong[deval]; and #strong[odextend];.], 
  [Events], [The #strong[Events]; option fills #strong[te];, #strong[ye];, and #strong[ie];, or the #strong[xe];, #strong[ye];, and #strong[ie]; structure fields.], 
)

== Example

``````matlab
[t, y] = ode15s(@(t,y) -20*y, [0 1], 1)
``````


== See also

#nlink(<ode_solvers:ode15i>)[ode15i];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
