#import "nelson_help.typ": *

= odeprint <ode_solvers:odeprint>

Command-window ODE output function.

== Syntax

- #raw("status = odeprint(t, y, flag)");

== Description

#strong[odeprint]; is an output callback for ODE solvers. It prints accepted output points and returns #strong[0]; to continue integration.

 

#table(
  columns: 3,
  [Flag], [When called], [Return value], 
  [#strong['init'];], [Before integration output starts.], [#strong[0]; or #strong[false]; to continue.], 
  [#strong[''];], [At accepted output points.], [#strong[0]; or #strong[false]; to continue; #strong[1]; or #strong[true]; stops integration.], 
  [#strong['done'];], [After integration finishes.], [Return value is ignored.], 
)

== See also

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odeplot>)[odeplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
