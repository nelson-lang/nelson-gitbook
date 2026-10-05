#import "nelson_help.typ": *

= nelson.ode.options.ODE15s <ode_solvers:nelson.ode.options.ODE15s>

Options object for the ode15s solver.

== Syntax

- #raw("options = nelson.ode.options.ODE15s()");
- #raw("options = nelson.ode.options.ODE15s(name, value)");

== Description

#strong[nelson.ode.options.ODE15s]; creates a compatible option class for the #strong['ode15s']; solver value used by the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Option group], [Names], [Purpose], 
  [Steps], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Bound the adaptive step size selection.], 
  [Error control], [#strong[NormControl];], [Switch between componentwise and norm based error control.], 
  [Method], [#strong[BDF];, #strong[MaxOrder];], [Select backward differentiation formulas and bound the method order.], 
  [Evaluation], [#strong[Vectorization];], [Declare that the ODE function accepts matrices of states.], 
  [Output], [#strong[OutputFcn];, #strong[OutputSelection];], [Select output callbacks and returned components.], 
)
 The #strong['ode15s']; solver value uses an implicit multistep method for stiff problems and differential algebraic equations with a mass matrix.

 Supported properties are #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[BDF];, and #strong[MaxOrder];. #strong[InitialStep];, #strong[MaxStep];, and #strong[MinStep]; are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. #strong[NormControl]; accepts #strong['on']; or #strong['off']; (default #strong['off'];) and enables error control based on the norm of the solution instead of componentwise control. #strong[Vectorization]; accepts #strong['on']; or #strong['off']; (default #strong['off'];) and declares that the ODE function can evaluate several columns of states at once. #strong[BDF]; accepts #strong['on']; or #strong['off']; (default #strong['off'];) and selects backward differentiation formulas instead of the default numerical differentiation formulas. #strong[MaxOrder]; is an integer between 1 and 5 (default 5) bounding the order of the formulas. #strong[OutputFcn]; is a function handle called on each output point (default empty). #strong[OutputSelection]; is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default #strong[Refine]; value for this solver is 1.


== Example

Create a stiff problem solved with ode15s options.

``````matlab
options = nelson.ode.options.ODE15s('BDF', 'on', 'MaxOrder', 4);
problem = ode('ODEFcn', @(t,y) -1000 * (y - cos(t)), 'InitialValue', 0, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode15s>)[ode15s];, #nlink(<ode_solvers:nelson.ode.options.ODE23s>)[nelson.ode.options.ODE23s];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
