#import "nelson_help.typ": *

= ddesd <ode_solvers:ddesd>

Solve delay equations with state-dependent delayed times.

== Syntax

- #raw("sol = ddesd(ddefun, delays, history, tspan)");
- #raw("sol = ddesd(ddefun, delays, history, tspan, options)");

== Description

#strong[ddesd]; solves delay equations where #strong[delays(t,y)]; returns delayed times. Constant delay vectors are interpreted as positive lags.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Delay type], [Delayed times depending on #strong[t]; and #strong[y];.], 
  [Callback], [#strong[f(t,y,z)];], 
  [History], [Scalar, vector, solution structure, or function depending on the call form.], 
  [Solution], [#strong[sol]; structure with #strong[x];, #strong[y];, #strong[yp];, #strong[solver];, and #strong[deval]; interpolation.], 
)

== Example

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:dde23>)[dde23];, #nlink(<ode_solvers:ddensd>)[ddensd];, #nlink(<ode_solvers:deval>)[deval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
