#import "nelson_help.typ": *

= nelson.ode.options.CVODESStiff <ode_solvers:nelson.ode.options.CVODESStiff>

Options object for the optional CVODES BDF solver.

== Syntax

- #raw("options = nelson.ode.options.CVODESStiff()");
- #raw("options = nelson.ode.options.CVODESStiff(name, value)");

== Description

#strong[nelson.ode.options.CVODESStiff]; creates an options object for the #strong['cvodesstiff']; solver value used by the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Option group], [Names], [Purpose], 
  [Steps and tolerances], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[MaxOrder];], [Control adaptive BDF integration.], 
  [Output], [#strong[Refine];, #strong[OutputFcn];, #strong[OutputSelection];], [Select returned points and optional output callbacks.], 
  [Linear algebra], [#strong[LinearSolver];, #strong[Preconditioner];, #strong[Jacobian];, #strong[JPattern];], [Supply stiff-system structure and preconditioning hints.], 
  [Availability], [#strong['cvodesstiff'];], [Uses the optional BDF backend when it is compiled and enabled.], 
)
 This solver value is available only when Nelson is built with the optional SUNDIALS backend. It uses CVODES with the BDF method for stiff standard ODE problems and standard problems with a nonsingular mass matrix.

 Supported options include #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[Refine];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder];, #strong[LinearSolver];, and #strong[Preconditioner];. #strong[OutputFcn]; is called on the output points returned by the backend. #strong[LinearSolver]; accepts #strong['auto'];, #strong['dense'];, #strong['spgmr'];, #strong['spfgmr'];, #strong['spbcgs'];, #strong['sptfqmr'];, #strong['pcg'];, or #strong['klu']; when the corresponding SUNDIALS library is available. #strong[Preconditioner]; accepts #strong['auto'];, #strong['none'];, #strong['jacobi'];, #strong['banded'];, or #strong['ilu0'];. With a sparse #strong[JPattern];, #strong['ilu0']; builds a compact sparse incomplete LU preconditioner without a dense workspace.


== Example

Create a stiff CVODES problem.

``````matlab
options = nelson.ode.options.CVODESStiff('MaxOrder', 5);
problem = ode('ODEFcn', @(t,y) -20 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
