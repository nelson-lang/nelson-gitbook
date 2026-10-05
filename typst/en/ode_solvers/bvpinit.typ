#import "nelson_help.typ": *

= bvpinit <ode_solvers:bvpinit>

Create an initial BVP solution guess.

== Syntax

- #raw("solinit = bvpinit(xinit, yinit)");
- #raw("solinit = bvpinit(xinit, yinit, parameters)");

== Description

#strong[bvpinit]; creates the initial mesh, state guess, and optional unknown parameters used by BVP solvers.

 

#table(
  columns: 3,
  [Input], [Accepted form], [Purpose], 
  [#strong[xinit];], [Increasing mesh vector.], [Defines the first BVP mesh.], 
  [#strong[yinit];], [Constant vector, array on the mesh, or function handle.], [Defines the initial solution guess.], 
  [#strong[parameters];], [Optional vector.], [Initial guess for unknown parameters.], 
  [#strong[solinit];], [Structure.], [Input for #strong[bvp4c]; and #strong[bvp5c];.], 
)

== Example

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:bvp4c>)[bvp4c];, #nlink(<ode_solvers:bvp5c>)[bvp5c];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
