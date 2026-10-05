#import "nelson_help.typ": *

= nelson.ode.options.ODE89 <ode_solvers:nelson.ode.options.ODE89>

Options object for the ode89 solver.

== Syntax

- #raw("options = nelson.ode.options.ODE89()");
- #raw("options = nelson.ode.options.ODE89(name, value)");

== Description

#strong[nelson.ode.options.ODE89]; creates a compatible option class for the #strong['ode89']; solver value used by the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Option group], [Names], [Purpose], 
  [Steps], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Bound the adaptive step size selection.], 
  [Error control], [#strong[NormControl];], [Switch between componentwise and norm based error control.], 
  [Output], [#strong[OutputFcn];, #strong[OutputSelection];], [Select output callbacks and returned components.], 
)
 The #strong['ode89']; solver value uses a very high order explicit Runge-Kutta (8,9) pair, efficient for very smooth nonstiff problems solved over long intervals with tight tolerances.

 Supported properties are #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn];, and #strong[OutputSelection];. #strong[InitialStep];, #strong[MaxStep];, and #strong[MinStep]; are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. #strong[NormControl]; accepts #strong['on']; or #strong['off']; (default #strong['off'];) and enables error control based on the norm of the solution instead of componentwise control. #strong[OutputFcn]; is a function handle called on each output point (default empty). #strong[OutputSelection]; is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default #strong[Refine]; value for this solver is 8.


== Example

Create a nonstiff problem solved with ode89 options.

``````matlab
options = nelson.ode.options.ODE89('NormControl', 'on');
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode89>)[ode89];, #nlink(<ode_solvers:nelson.ode.options.ODE78>)[nelson.ode.options.ODE78];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
