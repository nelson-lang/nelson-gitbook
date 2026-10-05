#import "nelson_help.typ": *

= ode workflows <ode_solvers:1_ode_workflows>

ODE examples and object workflow.

== Description

The function workflow returns arrays or a solution structure. The object workflow stores the problem in an #strong[ode]; instance and returns a result object from #strong[solve];.

 

#table(
  columns: 3,
  [Workflow], [Main calls], [When to use], 
  [Function], [#strong[ode45];, #strong[ode15s];, #strong[ode15i];], [Compact scripts that return arrays or a solution structure.], 
  [Object], [#strong[ode];, #strong[solve];, #strong[deval];], [Reusable problem definitions with solver options and result objects.], 
  [Post-processing], [#strong[deval];, #strong[odextend];], [Interpolate or continue a computed solution.], 
)
 Use a solution structure with #strong[deval]; for interpolation and #strong[odextend]; to continue an integration. Use #strong[Events]; to locate zero crossings, #strong[Mass]; for mass matrix systems, and #strong[Jacobian]; to help stiff solvers.


== Examples

Function workflow with interpolation.

``````matlab
sol = ode45(@(t,y) -y, [0 1], 1);
yhalf = deval(sol, 0.5)
``````

Object workflow.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 1);
value = deval(result, 0.5)
``````

Refined output and statistics.

``````matlab
options = odeset('Refine', 4, 'Stats', 'on');
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:deval>)[deval];, #nlink(<ode_solvers:odextend>)[odextend];, #nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:8_ode_complex_workflow_tutorial>)[ode complex workflow tutorial];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
