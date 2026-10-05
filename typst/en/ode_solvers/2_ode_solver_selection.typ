#import "nelson_help.typ": *

= ode solver selection <ode_solvers:2_ode_solver_selection>

Choose an ODE solver.

== Description

Use #strong[ode45]; first for smooth nonstiff problems. Use #strong[ode23]; for modest accuracy or inexpensive exploratory runs.

 

#table(
  columns: 3,
  [Problem type], [First choices], [Notes], 
  [Nonstiff], [#strong[ode45];, #strong[ode23];, #strong[ode113];], [Start here for smooth initial value problems.], 
  [Stiff or mass matrix], [#strong[ode15s];, #strong[ode23s];, #strong[ode23t];, #strong[ode23tb];], [Use Jacobian or mass matrix options when available.], 
  [Fully implicit], [#strong[ode15i];, optional #strong[idas];], [Use residual form #strong[F(t,y,yp)\=0];.], 
  [Automatic object workflow], [#strong['auto'];, #strong['autoswitch'];], [Select or switch between available in-tree solvers.], 
)
 Use stiff entries such as #strong[ode15s];, #strong[ode23s];, #strong[ode23t];, or #strong[ode23tb]; when the solution has fast decaying modes, a mass matrix, or a useful Jacobian. These entries use a lightweight in-tree linearly implicit kernel.

 Use #strong[ode15i]; when the equation is written as a residual #strong[F(t,y,yp)\=0];.

 When Nelson is built with the optional SUNDIALS backend, #strong[cvodesnonstiff]; uses CVODES Adams for nonstiff problems, #strong[cvodesstiff]; uses CVODES BDF for stiff or mass-matrix problems, and #strong[idas]; uses IDAS BDF for fully implicit residual problems. Explicitly requesting one of these solver values reports an error when the backend is not available. If a sparse #strong[JPattern]; is supplied and the SPGMR library is available, the backend uses an iterative linear solver; otherwise it uses the dense linear solver. Sparse #strong[JPattern]; matrices and sparse double #strong[Jacobian]; values are consumed directly by this selection and preconditioner path. SUNDIALS solver option objects can also request #strong[LinearSolver]; values #strong['dense'];, #strong['spgmr'];, #strong['spfgmr'];, #strong['spbcgs'];, #strong['sptfqmr'];, #strong['pcg'];, or #strong['klu'];, and #strong[Preconditioner]; values #strong['none'];, #strong['jacobi'];, #strong['banded'];, or #strong['ilu0'];. The #strong['auto']; preconditioner chooses #strong['jacobi']; for diagonal sparse patterns, #strong['banded']; for narrow bands, and #strong['ilu0']; for wider sparse patterns. The #strong['banded']; value builds a band-limited finite-difference preconditioner and uses #strong[JPattern]; to restrict the band when available. The #strong['ilu0']; value builds a compact incomplete LU preconditioner on the same sparsity pattern. The #strong['klu']; value is conditional and is not provided by the current Windows binaries. SUNDIALS stats report #strong[linearSolver];, #strong[preconditioner];, #strong[sensitivityMethod];, #strong[linearSetupCount];, #strong[linearIterations];, #strong[linearConvergenceFailures];, #strong[preconditionerSetupCount];, and #strong[preconditionerSolveCount];.

 The current object workflow supports direct forward sensitivities, CVODES adjoint gradients for scalar objectives, native IDAS adjoint gradients for scalar objectives, and projected scalar adjoint gradients for delayed equations. IDAS native adjoints report #strong[sensitivityBackend]; as #strong['idasAdjoint'];. Delayed equations support positive value and slope delays, including causal function-handle delays; state-dependent delays recompute internal method-of-steps chunks from the current lag and retry with smaller chunks when a trial chunk asks for future history. Delay stats report the number of chunks through #strong[nchunks];. Fully implicit delayed residuals are supported with #strong[ode15i]; and, when the optional backend is available, #strong[idas];. #strong['autoswitch']; runs inside the adaptive step loop and can switch between #strong[ode45]; and #strong[ode15s]; when stiffness pressure appears or is released while preserving solution output, events, and stats. Autoswitch stats include #strong[autoSwitchInitialSolver];, #strong[autoSwitchSelectedSolver];, #strong[autoSwitchSwitched];, #strong[autoSwitchReason];, #strong[autoSwitchLastReason];, #strong[autoSwitchMode];, #strong[autoSwitchSwitchTime];, #strong[autoSwitchSwitchCount];, #strong[autoSwitchStiffnessIndicator];, #strong[autoSwitchReleaseIndicator];, and #strong[autoSwitchStiffnessCriterion];.


== Examples

Nonstiff problem.

``````matlab
options = odeset('RelTol', 1e-5);
[t, y] = ode45(@(t,y) -y, [0 1], 1, options)
``````

Stiff problem with a Jacobian.

``````matlab
f = @(t,y) -1000 * (y - cos(t)) - sin(t);
options = odeset('Jacobian', -1000);
[t, y] = ode23s(f, [0 0.5], 1, options)
``````


== See also

#nlink(<ode_solvers:ode45>)[ode45];, #nlink(<ode_solvers:ode23>)[ode23];, #nlink(<ode_solvers:ode15s>)[ode15s];, #nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
