#import "nelson_help.typ": *

= ddensd <ode_solvers:ddensd>

Solve neutral delay equations.

== Syntax

- #raw("sol = ddensd(ddefun, dely, delyp, history, tspan)");
- #raw("sol = ddensd(ddefun, dely, delyp, history, tspan, options)");

== Description

#strong[ddensd]; solves neutral delay equations. The derivative function is called as #strong[f(t,y,z,zp)];, with delayed states and delayed slopes.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Delay type], [Neutral delays with delayed states and delayed slopes.], 
  [Callback], [#strong[f(t,y,z,zp)];], 
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

#nlink(<ode_solvers:dde23>)[dde23];, #nlink(<ode_solvers:ddesd>)[ddesd];, #nlink(<ode_solvers:ddeset>)[ddeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
