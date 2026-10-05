#import "nelson_help.typ": *

= odeJacobian <ode_solvers:odeJacobian>

Jacobian description for ODE solvers.

== Syntax

- #raw("J = odeJacobian(value)");
- #raw("J = odeJacobian(value, name, value)");
- #raw("J = odeJacobian(name, value)");

== Description

#strong[odeJacobian]; stores a Jacobian function, matrix, or finite-difference pattern for the object ODE workflow.

 

#table(
  columns: 3,
  [Object], [Purpose], [Used by], 
  [#strong[odeJacobian];], [Stores a reusable definition for the #strong[ode]; object workflow.], [The matching #strong[ode]; property and #strong[solve];.], 
  [Validation], [Checks supported names and shapes at construction time.], [Tests and errors stay explicit before integration.], 
)
 Public properties are #strong[Jacobian]; and #strong[SparsityPattern];. The compatible alias #strong[Pattern]; is accepted by the constructor. The compatible #strong[Constant]; hint is also accepted and passed to solver options.


== Examples

``````matlab
J = odeJacobian(-1)
``````

Jacobian pattern for the object workflow.

``````matlab
J = odeJacobian('SparsityPattern', [1 0; 0 1]);
problem = ode('ODEFcn', @(t,y) [-10*y(1); -20*y(2)], 'InitialValue', [1; 2], 'Jacobian', J);
result = solve(problem, 0, 0.2)
``````

Constant Jacobian hint.

``````matlab
J = odeJacobian(-25, 'Constant', 'on');
problem = ode('ODEFcn', @(t,y) -25*y, 'InitialValue', 1, 'Jacobian', J);
result = solve(problem, 0, 0.2)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeset>)[odeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
