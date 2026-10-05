#import "nelson_help.typ": *

= odeexamples <ode_solvers:odeexamples>

ODE examples entry point.

== Syntax

- #raw("odeexamples()");

== Description

#strong[odeexamples]; opens the ODE workflow help page, which contains runnable examples and tutorials.

 

#table(
  columns: 3,
  [Example], [Focus], [Output], 
  [Basic ODE], [Initial value solve and dense output.], [Solution curves and sampled values.], 
  [Events and mass matrix], [Event localization, mass matrices, and solver options.], [Event points and diagnostic plots.], 
  [DDE\/BVP added features], [Delay equations and boundary value problems.], [Plots and solution structures.], 
)
 The #strong[ode\_solvers\/examples]; directory also contains complete scripts for events and interpolation, fully implicit equations, delay sensitivities, DDE\/BVP workflows, and optional SUNDIALS sparse preconditioning.


== Examples

Open the examples entry point.

``````matlab
odeexamples()
``````

Run the event and interpolation example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_object_event_interpolation_example.m'])
``````

Run the DDE and BVP example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````

Run the optional SUNDIALS sparse preconditioner example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_sundials_sparse_preconditioner_example.m'])
``````


== See also

#nlink(<ode_solvers:1_ode_workflows>)[ode workflows];, #nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:dde23>)[dde23];, #nlink(<ode_solvers:bvp4c>)[bvp4c];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
