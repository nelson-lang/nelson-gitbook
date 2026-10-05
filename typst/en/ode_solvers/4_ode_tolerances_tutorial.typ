#import "nelson_help.typ": *

= ode tolerances tutorial <ode_solvers:4_ode_tolerances_tutorial>

Control ODE accuracy and statistics.

== Description

Use #strong[RelTol]; for relative accuracy and #strong[AbsTol]; for small solution components. Use #strong[InitialStep];, #strong[MaxStep];, and #strong[MinStep]; to bound the adaptive step controller.

 

#table(
  columns: 3,
  [Option], [Effect], [Typical use], 
  [#strong[RelTol];], [Scales the local error test with the solution size.], [Primary accuracy control.], 
  [#strong[AbsTol];], [Sets a floor for small solution components.], [Protects variables near zero.], 
  [#strong[NormControl];], [Uses a vector norm in the adaptive error test.], [Coupled systems with shared scale.], 
  [#strong[Stats];], [Reports solver counters.], [Diagnostics and regression tests.], 
)
 Set #strong[Stats]; to #strong[on]; to display integration counts, or read the #strong[stats]; field from a solution structure.


== Examples

Compare two tolerances.

``````matlab
loose = odeset('RelTol', 1e-3, 'AbsTol', 1e-6);
tight = odeset('RelTol', 1e-6, 'AbsTol', 1e-9);
solLoose = ode45(@(t,y) y, [0 1], 1, loose);
solTight = ode45(@(t,y) y, [0 1], 1, tight);
[solLoose.stats.nsteps solTight.stats.nsteps] 
``````

Display statistics.

``````matlab
options = odeset('Stats', 'on', 'MaxStep', 0.1);
[t, y] = ode45(@(t,y) -y, [0 1], 1, options);
``````


== See also

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odeget>)[odeget];, #nlink(<ode_solvers:ode>)[ode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
