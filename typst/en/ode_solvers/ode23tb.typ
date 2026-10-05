#import "nelson_help.typ": *

= ode23tb <ode_solvers:ode23tb>

Stiff ODE solver entry point.

== Syntax

- #raw("[t, y] = ode23tb(odefun, tspan, y0)");

== Description

#strong[ode23tb]; provides a stiff solver interface backed by the shared adaptive engine.

 

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
[t, y] = ode23tb(@(t,y) -20*y, [0 1], 1)
``````


== See also

#nlink(<ode_solvers:ode15s>)[ode15s];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
