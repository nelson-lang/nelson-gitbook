#import "nelson_help.typ": *

= odeplot <ode_solvers:odeplot>

ODE output function for solution plotting.

== Syntax

- #raw("status = odeplot(t, y, flag)");

== Description

#strong[odeplot]; plots solution components against time while an ODE solver is running.

 

#table(
  columns: 3,
  [Flag], [When called], [Return value], 
  [#strong['init'];], [Before integration output starts.], [#strong[0]; or #strong[false]; to continue.], 
  [#strong[''];], [At accepted output points.], [#strong[0]; or #strong[false]; to continue; #strong[1]; or #strong[true]; stops integration.], 
  [#strong['done'];], [After integration finishes.], [Return value is ignored.], 
)
 The function accepts the output callback protocol with #strong[flag]; equal to #strong['init'];, #strong[''];, or #strong['done'];. It returns #strong[0]; to continue integration.


== See also

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odephas2>)[odephas2];, #nlink(<ode_solvers:odephas3>)[odephas3];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
