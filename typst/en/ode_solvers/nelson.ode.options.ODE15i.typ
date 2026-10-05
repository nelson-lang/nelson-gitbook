#import "nelson_help.typ": *

= nelson.ode.options.ODE15i <ode_solvers:nelson.ode.options.ODE15i>

Options object for the ode15i solver.

== Syntax

- #raw("options = nelson.ode.options.ODE15i()");
- #raw("options = nelson.ode.options.ODE15i(name, value)");

== Description

#strong[nelson.ode.options.ODE15i]; creates a compatible option class for the #strong['ode15i']; solver value used by the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Option group], [Names], [Purpose], 
  [Steps], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Bound the adaptive step size selection.], 
  [Error control], [#strong[NormControl];], [Switch between componentwise and norm based error control.], 
  [Method], [#strong[MaxOrder];], [Bound the order of the backward differentiation formulas.], 
  [Consistent initials], [#strong[ComputeConsistentInitialConditions];], [Request consistent #strong[y0]; and #strong[yp0]; before integration.], 
  [Evaluation], [#strong[Vectorization];], [Declare vectorization of the residual function with respect to #strong[y]; and #strong[yp];.], 
  [Output], [#strong[OutputFcn];, #strong[OutputSelection];], [Select output callbacks and returned components.], 
)
 The #strong['ode15i']; solver value uses a variable order implicit method for fully implicit residual problems #strong[F(t,y,yp)\=0];, including stiff differential algebraic equations.

 Supported properties are #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder];, and #strong[ComputeConsistentInitialConditions];. #strong[InitialStep];, #strong[MaxStep];, and #strong[MinStep]; are positive scalars bounding the adaptive step size; their default value is empty, which lets the solver choose them automatically. #strong[NormControl]; accepts #strong['on']; or #strong['off']; (default #strong['off'];) and enables error control based on the norm of the solution instead of componentwise control. #strong[Vectorization]; is a two-element cell array such as {#strong['off'];, #strong['off'];} (the default) declaring vectorization of the residual function with respect to #strong[y]; and #strong[yp];; a single #strong['on']; or #strong['off']; value applies to both arguments. #strong[MaxOrder]; is an integer between 1 and 5 (default 5) bounding the order of the formulas. #strong[ComputeConsistentInitialConditions]; is a logical scalar (default #strong[true];); when enabled, the solver adjusts the initial value and initial slope so that the residual is consistent at the initial time. #strong[OutputFcn]; is a function handle called on each output point (default empty). #strong[OutputSelection]; is a vector of indices selecting which solution components are passed to the output function (default empty, all components). The default #strong[Refine]; value for this solver is 1.


== Example

Create a fully implicit residual problem solved with ode15i options.

``````matlab
options = nelson.ode.options.ODE15i('MaxOrder', 4);
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:nelson.ode.options.ODE15s>)[nelson.ode.options.ODE15s];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
