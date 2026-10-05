#import "nelson_help.typ": *

= dde23 <ode_solvers:dde23>

Solve delay equations with constant delays.

== Syntax

- #raw("sol = dde23(ddefun, delays, history, tspan)");
- #raw("sol = dde23(ddefun, delays, history, tspan, options)");

== Description

#strong[dde23]; solves delay equations where each delay is a positive constant lag. The derivative function is called as #strong[f(t,y,z)];, where each column of #strong[z]; is a delayed state.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Delay type], [Positive constant lags.], 
  [Callback], [#strong[f(t,y,z)];], 
  [History], [Scalar, vector, solution structure, or function depending on the call form.], 
  [Solution], [#strong[sol]; structure with #strong[x];, #strong[y];, #strong[yp];, #strong[solver];, and #strong[deval]; interpolation.], 
)

== Examples

Constant history.

``````matlab
sol = dde23(@(t,y,z) -y + z, 0.1, 1, [0 1]);
y = deval(sol, 0.5)
``````

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:ddesd>)[ddesd];, #nlink(<ode_solvers:ddensd>)[ddensd];, #nlink(<ode_solvers:ddeset>)[ddeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
