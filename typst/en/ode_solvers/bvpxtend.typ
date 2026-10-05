#import "nelson_help.typ": *

= bvpxtend <ode_solvers:bvpxtend>

Extend a BVP solution guess.

== Syntax

- #raw("solinit = bvpxtend(sol, xnew)");
- #raw("solinit = bvpxtend(sol, xnew, ynew)");

== Description

#strong[bvpxtend]; builds a new BVP initial guess from an existing solution and a refined mesh.

 

#table(
  columns: 2,
  [Input], [Details], 
  [#strong[sol];], [Existing solution or initial guess structure.], 
  [#strong[xnew];], [New mesh points added to or replacing the previous mesh.], 
  [#strong[ynew];], [Optional values used at the new mesh points.], 
  [#strong[solinit];], [Extended guess structure for another #strong[bvp4c]; or #strong[bvp5c]; call.], 
)

== Example

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:bvpinit>)[bvpinit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
