#import "nelson_help.typ": *

= ode113 <ode_solvers:ode113>

Variable order nonstiff ODE solver entry point.

== Syntax

- #raw("[t, y] = ode113(odefun, tspan, y0)");

== Description

#strong[ode113]; exposes the historical nonstiff solver interface and uses the shared adaptive engine.

 

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
[t, y] = ode113(@(t,y) -y, [0 1], 1)
``````


== See also

#nlink(<ode_solvers:ode45>)[ode45];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
