#import "nelson_help.typ": *

= ode mass implicit tutorial <ode_solvers:5_ode_mass_implicit_tutorial>

Solve mass matrix and implicit ODE problems.

== Description

Use the #strong[Mass]; option when the system is written as #strong[M(t,y)y'\=f(t,y)];. A constant matrix, scalar, or function handle can define the mass matrix.

 

#table(
  columns: 3,
  [Problem form], [Entry point], [Required data], 
  [#strong[M(t,y)y' \= f(t,y)];], [#strong[ode15s];, #strong[ode23t];, #strong[ode23tb];], [#strong[Mass]; option and initial value.], 
  [#strong[F(t,y,yp) \= 0];], [#strong[ode15i];], [Initial value and initial slope.], 
  [Object workflow], [#strong[ode]; with #strong[EquationType];], [Residual function, initial value, and optional initial slope.], 
)
 Use #strong[ode15i]; for fully implicit residual equations #strong[F(t,y,yp)\=0];. The function form uses the initial value and initial slope that you provide. In the object workflow, #strong[ComputeConsistentInitialConditions]; can adjust the initial slope while keeping the initial value fixed.


== Examples

Constant mass matrix.

``````matlab
options = odeset('Mass', 2, 'Jacobian', 1);
[t, y] = ode15s(@(t,y) y, [0 0.5], 1, options)
``````

Implicit residual equation.

``````matlab
f = @(t,y,yp) yp + y;
[t, y] = ode15i(f, [0 1], 1, -1)
``````


== See also

#nlink(<ode_solvers:ode15s>)[ode15s];, #nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:odeMassMatrix>)[odeMassMatrix];, #nlink(<ode_solvers:odeJacobian>)[odeJacobian];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
