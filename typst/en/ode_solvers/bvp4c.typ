#import "nelson_help.typ": *

= bvp4c <ode_solvers:bvp4c>

Solve boundary value problems with fourth-order collocation.

== Syntax

- #raw("sol = bvp4c(odefun, bcfun, solinit)");
- #raw("sol = bvp4c(odefun, bcfun, solinit, options)");

== Description

#strong[bvp4c]; solves first-order boundary value problems from an initial mesh and guess produced by #strong[bvpinit];.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Problem form], [First-order system #strong[y' \= f(x,y)]; with boundary residuals #strong[bcfun(ya,yb)];.], 
  [Initialization], [#strong[bvpinit]; supplies the initial mesh, solution guess, and optional unknown parameters.], 
  [Method], [Fourth-order collocation.], 
  [Solution], [#strong[sol]; structure with #strong[x];, #strong[y];, #strong[yp];, #strong[parameters];, and #strong[stats];.], 
)
 Options created with #strong[bvpset]; can provide #strong[FJacobian];, #strong[BCJacobian];, #strong[Vectorized];, and #strong[SingularTerm];. When both Jacobian callbacks are supplied, the Newton iteration uses them instead of finite differences. Solution stats include #strong[niterations];, #strong[nmeshpoints];, #strong[residualNorm];, #strong[residualRms];, #strong[nrefinements];, #strong[maxDefect];, #strong[rmsDefect];, and, when available, #strong[nfevals];.


== Example

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:bvp5c>)[bvp5c];, #nlink(<ode_solvers:bvpinit>)[bvpinit];, #nlink(<ode_solvers:bvpset>)[bvpset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
