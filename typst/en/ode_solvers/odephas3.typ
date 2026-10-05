#import "nelson_help.typ": *

= odephas3 <ode_solvers:odephas3>

Three-dimensional phase-plane ODE output function.

== Syntax

- #raw("status = odephas3(t, y, flag)");

== Description

#strong[odephas3]; plots the first three solution components as a three-dimensional phase trajectory while an ODE solver is running.

 

#table(
  columns: 3,
  [Flag], [When called], [Return value], 
  [#strong['init'];], [Before integration output starts.], [#strong[0]; or #strong[false]; to continue.], 
  [#strong[''];], [At accepted output points.], [#strong[0]; or #strong[false]; to continue; #strong[1]; or #strong[true]; stops integration.], 
  [#strong['done'];], [After integration finishes.], [Return value is ignored.], 
)
 The function accepts the output callback protocol with #strong[flag]; equal to #strong['init'];, #strong[''];, or #strong['done'];. It returns #strong[0]; to continue integration.


== See also

#nlink(<ode_solvers:odephas2>)[odephas2];, #nlink(<ode_solvers:odeplot>)[odeplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
