#import "nelson_help.typ": *

= nelson.ode.options.CVODESNonstiff <ode_solvers:nelson.ode.options.CVODESNonstiff>

Options object for the optional CVODES Adams solver.

== Syntax

- #raw("options = nelson.ode.options.CVODESNonstiff()");
- #raw("options = nelson.ode.options.CVODESNonstiff(name, value)");

== Description

#strong[nelson.ode.options.CVODESNonstiff]; creates an options object for the #strong['cvodesnonstiff']; solver value used by the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Option group], [Names], [Purpose], 
  [Steps and tolerances], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[MaxOrder];], [Control adaptive Adams integration.], 
  [Output], [#strong[Refine];, #strong[OutputFcn];, #strong[OutputSelection];], [Select returned points and optional output callbacks.], 
  [Linear algebra], [#strong[LinearSolver];, #strong[Preconditioner];], [Choose dense, iterative, or available sparse support and preconditioning.], 
  [Availability], [#strong['cvodesnonstiff'];], [Uses the optional Adams backend when it is compiled and enabled.], 
)
 This solver value is available only when Nelson is built with the optional SUNDIALS backend. It uses CVODES with the Adams method for nonstiff standard ODE problems.

 Supported options include #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[Refine];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder];, #strong[LinearSolver];, and #strong[Preconditioner];. #strong[OutputFcn]; is called on the output points returned by the backend. #strong[LinearSolver]; accepts dense, iterative, and optional sparse direct SUNDIALS values when the corresponding library is available. #strong[Preconditioner]; accepts #strong['auto'];, #strong['none'];, #strong['jacobi'];, #strong['banded'];, or #strong['ilu0'];. With a sparse #strong[JPattern];, #strong['ilu0']; builds a compact sparse incomplete LU preconditioner without a dense workspace.


== Example

Create a nonstiff CVODES problem.

``````matlab
options = nelson.ode.options.CVODESNonstiff('RelTol', 1e-6);
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
