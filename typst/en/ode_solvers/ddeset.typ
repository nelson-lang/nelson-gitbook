#import "nelson_help.typ": *

= ddeset <ode_solvers:ddeset>

Create or update DDE options.

== Syntax

- #raw("options = ddeset()");
- #raw("options = ddeset(name, value)");

== Description

#strong[ddeset]; creates an options structure for delay equation solvers. It accepts common ODE options plus #strong[InitialY]; and #strong[Jumps];.

 

#table(
  columns: 2,
  [Option], [Purpose], 
  [#strong[InitialY];], [Initial history value used when no history structure is supplied.], 
  [#strong[Jumps];], [Known discontinuity times.], 
  [Common ODE options], [Tolerances, steps, events, and output settings shared with #strong[odeset];.], 
)

== Example

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:ddeget>)[ddeget];, #nlink(<ode_solvers:dde23>)[dde23];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
