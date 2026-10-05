#import "nelson_help.typ": *

= ode89 <ode_solvers:ode89>

High order nonstiff ODE solver.

== Syntax

- #raw("[t, y] = ode89(odefun, tspan, y0)");

== Description

#strong[ode89]; solves nonstiff initial value problems with the shared adaptive engine.

 

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
[t, y] = ode89(@(t,y) -y, [0 1], 1)
``````


== See also

#nlink(<ode_solvers:ode78>)[ode78];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
