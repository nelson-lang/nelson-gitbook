#import "nelson_help.typ": *

= bvpset <ode_solvers:bvpset>

Create or update BVP options.

== Syntax

- #raw("options = bvpset()");
- #raw("options = bvpset(name, value)");

== Description

#strong[bvpset]; creates options for boundary value problem solvers.

 

#table(
  columns: 2,
  [Option], [Purpose], 
  [#strong[RelTol];, #strong[AbsTol];], [Solver tolerances.], 
  [#strong[NMax];], [Maximum number of mesh points.], 
  [#strong[FJacobian];, #strong[BCJacobian];], [Analytical Jacobians for the equation and boundary conditions.], 
  [#strong[Vectorized];, #strong[SingularTerm];, #strong[Stats];], [Vectorization, singular term, and statistics display.], 
)
 Supported names include #strong[AbsTol];, #strong[RelTol];, #strong[NMax];, #strong[Stats];, #strong[Vectorized];, #strong[FJacobian];, #strong[BCJacobian];, and #strong[SingularTerm];. #strong[FJacobian]; and #strong[BCJacobian]; are used together by the Newton iteration when both callbacks are present.


== Example

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:bvpget>)[bvpget];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
