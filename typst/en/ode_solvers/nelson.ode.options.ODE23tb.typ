#import "nelson_help.typ": *

= nelson.ode.options.ODE23tb <ode_solvers:nelson.ode.options.ODE23tb>

Options object for the ode23tb solver.

== Syntax

- #raw("options = nelson.ode.options.ODE23tb()");
- #raw("options = nelson.ode.options.ODE23tb(name, value)");

== Description

#strong[nelson.ode.options.ODE23tb]; creates a compatible option class for the #strong['ode23tb']; solver value used by the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Option group], [Names], [Purpose], 
  [Steps], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Bound the adaptive step size selection.], 
  [Error control], [#strong[NormControl];], [Switch between componentwise and norm based error control.], 
  [Evaluation], [#strong[Vectorization];], [Declare that the ODE function accepts matrices of states.], 
  [Output], [#strong[OutputFcn];, #strong[OutputSelection];], [Select output callbacks and returned components.], 
)
 The #strong['ode23tb']; solver value uses an implicit Runge-Kutta method combining a trapezoidal rule stage with a backward differentiation stage, effective for stiff problems at crude tolerances.

 Supported properties are #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, and #strong[Vectorization];. #strong[InitialStep];, #strong[MaxStep];, and #strong[MinStep]; are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. #strong[NormControl]; accepts #strong['on']; or #strong['off']; (default #strong['off'];) and enables error control based on the norm of the solution instead of componentwise control. #strong[Vectorization]; accepts #strong['on']; or #strong['off']; (default #strong['off'];) and declares that the ODE function can evaluate several columns of states at once. #strong[OutputFcn]; is a function handle called on each output point (default empty). #strong[OutputSelection]; is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default #strong[Refine]; value for this solver is 1.


== Example

Create a stiff problem solved with ode23tb options.

``````matlab
options = nelson.ode.options.ODE23tb('Vectorization', 'on');
problem = ode('ODEFcn', @(t,y) -100 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode23tb>)[ode23tb];, #nlink(<ode_solvers:nelson.ode.options.ODE23t>)[nelson.ode.options.ODE23t];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
