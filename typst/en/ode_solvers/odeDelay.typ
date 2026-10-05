#import "nelson_help.typ": *

= odeDelay <ode_solvers:odeDelay>

Delay definition object for ODE workflows.

== Syntax

- #raw("D = odeDelay()");
- #raw("D = odeDelay(name, value)");

== Description

#strong[odeDelay]; stores delay-related settings for retarded delay equations solved through the #strong[ode]; object.

 

#table(
  columns: 3,
  [Object], [Purpose], [Used by], 
  [#strong[odeDelay];], [Stores a reusable definition for the #strong[ode]; object workflow.], [The matching #strong[ode]; property and #strong[solve];.], 
  [Validation], [Checks supported names and shapes at construction time.], [Tests and errors stay explicit before integration.], 
)
 The current scope supports positive constant or function-handle #strong[ValueDelay]; and #strong[SlopeDelay]; entries with numeric or function-handle #strong[History];. Delay functions are evaluated as #strong[d(t,y)]; or #strong[d(t,y,p)]; and must reference a known past state. The ODE function receives delayed values as #strong[f(t, y, z)];. When slope delays are present it receives #strong[f(t, y, z, zp)];, where columns of #strong[zp]; contain delayed slopes.

 Events, mass matrices, and direct sensitivities are supported for explicit or linearly implicit delayed equations. Adjoint sensitivities, separated complex parts, and fully implicit delayed equations are not supported yet and report explicit errors.


== See also

#nlink(<ode_solvers:ode>)[ode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
