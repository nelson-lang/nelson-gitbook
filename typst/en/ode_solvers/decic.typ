#import "nelson_help.typ": *

= decic <ode_solvers:decic>

Compute consistent initial conditions for implicit ODEs.

== Syntax

- #raw("[y0new, yp0new] = decic(odefun, t0, y0, fixed_y0, yp0, fixed_yp0)");
- #raw("[y0new, yp0new, resnrm] = decic(odefun, t0, y0, fixed_y0, yp0, fixed_yp0, options)");

== Description

#strong[decic]; adjusts the free components of #strong[y0]; and #strong[yp0]; so that the residual #strong[odefun(t0,y0,yp0)]; is small. Components marked by #strong[fixed\_y0]; and #strong[fixed\_yp0]; are kept fixed.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Problem form], [Fully implicit residual #strong[F(t,y,yp) \= 0];.], 
  [Fixed components], [#strong[fixed\_y0]; and #strong[fixed\_yp0]; mark values that must not change.], 
  [Outputs], [Consistent initial values #strong[y0mod]; and #strong[yp0mod];.], 
  [Used with], [#strong[ode15i]; or an #strong[ode]; object with a fully implicit equation type.], 
)

== Example

``````matlab
f = @(t,y,yp) yp + y;
[y0, yp0] = decic(f, 0, 1, 1, 0, 0);
[t, y] = ode15i(f, [0 1], y0, yp0)
``````


== See also

#nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:odeset>)[odeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
