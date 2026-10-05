#import "nelson_help.typ": *

= nelson.ode.options.IDAS <ode_solvers:nelson.ode.options.IDAS>

Options object for the optional IDAS BDF solver.

== Syntax

- #raw("options = nelson.ode.options.IDAS()");
- #raw("options = nelson.ode.options.IDAS(name, value)");

== Description

#strong[nelson.ode.options.IDAS]; creates an options object for the #strong['idas']; solver value used by the #strong[ode]; object workflow.

 

#table(
  columns: 3,
  [Option group], [Names], [Purpose], 
  [Steps and tolerances], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[MaxOrder];], [Control adaptive BDF integration for residual equations.], 
  [Consistent initials], [#strong[ComputeConsistentInitialConditions];], [Request consistent #strong[y0]; and #strong[yp0]; for fully implicit problems.], 
  [Linear algebra], [#strong[LinearSolver];, #strong[Preconditioner];, #strong[Jacobian];, #strong[JPattern];], [Supply residual-system structure and preconditioning hints.], 
  [Availability], [#strong['idas'];], [Uses the optional fully implicit backend when it is compiled and enabled.], 
)
 This solver value is available only when Nelson is built with the optional SUNDIALS backend. It uses IDAS with the BDF method for fully implicit residual problems #strong[F(t,y,yp)\=0];.

 Supported options include #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[Refine];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder];, #strong[ComputeConsistentInitialConditions];, #strong[LinearSolver];, and #strong[Preconditioner];. #strong[OutputFcn]; is called on the output points returned by the backend. #strong[LinearSolver]; accepts dense, iterative, and optional sparse direct SUNDIALS values when the corresponding library is available. #strong[Preconditioner]; accepts #strong['auto'];, #strong['none'];, #strong['jacobi'];, #strong['banded'];, or #strong['ilu0'];. With a sparse #strong[JPattern];, #strong['ilu0']; builds a compact sparse incomplete LU preconditioner without a dense workspace.


== Example

Create an IDAS residual problem.

``````matlab
options = nelson.ode.options.IDAS();
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
