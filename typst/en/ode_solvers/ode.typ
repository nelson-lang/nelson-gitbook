#import "nelson_help.typ": *

= ode <ode_solvers:ode>

Object interface for ODE problems.

== Syntax

- #raw("problem = ode(name, value)");
- #raw("result = solve(problem, tfinal)");
- #raw("result = solve(problem, t0, tfinal)");
- #raw("[f, data] = solutionFcn(problem, tfinal)");

== Description

#strong[ode]; stores a differential equation problem and the settings used by #strong[solve]; and #strong[solutionFcn];.

 

#table(
  columns: 2,
  [Call], [Purpose], 
  [#strong[solve(problem, tfinal)];], [Integrates from #strong[InitialTime]; to #strong[tfinal];.], 
  [#strong[solve(problem, t0, tfinal)];], [Integrates from #strong[t0];; this call-specific start time overrides #strong[InitialTime];.], 
  [#strong[solutionFcn(problem, tfinal)];], [Returns an interpolation function and the corresponding result object.], 
)
 Main object properties:

 

#table(
  columns: 3,
  [Property], [Accepted values], [Effect], 
  [#strong[EquationType];], [#strong['standard'];, #strong['fullyimplicit'];], [#strong['standard']; uses #strong[ODEFcn(t,y)];. #strong['fullyimplicit']; uses residuals #strong[ODEFcn(t,y,yp)];.], 
  [#strong[Solver];], [#strong['auto'];, #strong['autoswitch'];, #strong['nonstiff'];, #strong['stiff'];, solver names], [Selects the integration method. #strong['auto']; chooses from the problem type. #strong['autoswitch']; can restart with a stiff method when stiffness is detected.], 
  [#strong[SolverOptions];], [Options object matching the selected solver], [Stores tolerances, output function, step-size bounds, and solver-specific settings.], 
  [#strong[Parameters];], [Numeric vector or cell array], [Passed after the standard arguments to the ODE, event, output, and event-response callbacks. A cell array expands to one argument per cell.], 
  [#strong[SeparateComplexParts];], [#strong['off'];, #strong['on'];], [With #strong['on'];, complex states are integrated through separated real and imaginary parts, while returned results use the original complex shape.], 
)
 Solver families:

 

#table(
  columns: 3,
  [Family], [Solver values], [Notes], 
  [Nonstiff], [#strong['ode23'];, #strong['ode45'];, #strong['ode78'];, #strong['ode89'];, #strong['ode113'];], [Use for smooth explicit problems.], 
  [Stiff or mass matrix], [#strong['ode15s'];, #strong['ode23s'];, #strong['ode23t'];, #strong['ode23tb'];], [Use when a problem has fast decaying modes, a mass matrix, or a useful Jacobian.], 
  [Fully implicit], [#strong['ode15i'];, #strong['idas'];], [#strong['idas']; is available only when Nelson is built with the optional SUNDIALS backend.], 
  [Optional backend], [#strong['cvodesnonstiff'];, #strong['cvodesstiff'];, #strong['idas'];], [#strong[NELSON\_SUNDIALS\_RUNTIME]; can be #strong[OFF]; to force the in-tree fallback or #strong[ON]; to allow the backend when compiled.], 
)

== Examples

Use InitialTime with a final time.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialTime', 2, 'InitialValue', 1);
result = solve(problem, 3)
``````

Build an interpolation function.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
f = solutionFcn(problem, 1);
yhalf = f(0.5)
``````

Solve a fully implicit residual problem.

``````matlab
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1);
result = solve(problem, 1)
``````

Pass extra parameters to a problem function.

``````matlab
problem = ode('ODEFcn', @(t,y,a) a .* y, ...
  'InitialValue', 1, ...
  'Parameters', 2);
result = solve(problem, 0, 1)
``````

Solve a problem by separating complex parts internally.

``````matlab
problem = ode('ODEFcn', @(t,y) y .* t + 2 * 1i, ...
  'InitialValue', 1 + 1i, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 2)
``````


== See also

#nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];, #nlink(<ode_solvers:odeJacobian>)[odeJacobian];, #nlink(<ode_solvers:odeMassMatrix>)[odeMassMatrix];, #nlink(<ode_solvers:odeEvent>)[odeEvent];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
