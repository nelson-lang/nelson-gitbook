#import "nelson_help.typ": *

= ode15i <ode_solvers:ode15i>

Implicit ODE solver entry point.

== Syntax

- #raw("[t, y] = ode15i(odefun, tspan, y0, yp0)");

== Description

#strong[ode15i]; solves residual problems of the form #strong[F(t,y,yp)\=0];.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Problem form], [Implicit residual #strong[F(t,y,yp)\=0];.], 
  [Inputs], [#strong[odefun];, #strong[tspan];, #strong[y0];, #strong[yp0];, and options created with #strong[odeset];.], 
  [Outputs], [#strong[\[t,y\]]; arrays or a #strong[sol]; structure with slopes available through #strong[deval];.], 
  [Initialization], [Use #strong[decic]; to adjust consistent initial conditions.], 
)

== Example

``````matlab
[t, y] = ode15i(@(t,y,yp) yp + y, [0 1], 1, -1)
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
