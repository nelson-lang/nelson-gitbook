#import "nelson_help.typ": *

= bvp5c <ode_solvers:bvp5c>

Solve boundary value problems with mesh refinement.

== Syntax

- #raw("sol = bvp5c(odefun, bcfun, solinit)");
- #raw("sol = bvp5c(odefun, bcfun, solinit, options)");

== Description

#strong[bvp5c]; solves first-order boundary value problems using the BVP collocation engine with an additional mesh refinement pass.

 

#table(
  columns: 2,
  [Item], [Details], 
  [Problem form], [First-order system #strong[y' \= f(x,y)]; with boundary residuals #strong[bcfun(ya,yb)];.], 
  [Initialization], [#strong[bvpinit]; supplies the initial mesh, solution guess, and optional unknown parameters.], 
  [Method], [Collocation with an additional mesh refinement pass.], 
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

#nlink(<ode_solvers:bvp4c>)[bvp4c];, #nlink(<ode_solvers:bvpinit>)[bvpinit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
