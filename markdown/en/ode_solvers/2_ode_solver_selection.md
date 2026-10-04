# ode solver selection

Choose an ODE solver.

## 📄 Description

Use <b>ode45</b> first for smooth nonstiff problems. Use <b>ode23</b> for modest accuracy or inexpensive exploratory runs.

| Problem type              | First choices                                   | Notes                                               |
| ------------------------- | ----------------------------------------------- | --------------------------------------------------- |
| Nonstiff                  | **ode45**, **ode23**, **ode113**                | Start here for smooth initial value problems.       |
| Stiff or mass matrix      | **ode15s**, **ode23s**, **ode23t**, **ode23tb** | Use Jacobian or mass matrix options when available. |
| Fully implicit            | **ode15i**, optional **idas**                   | Use residual form **F(t,y,yp)=0**.                  |
| Automatic object workflow | **'auto'**, **'autoswitch'**                    | Select or switch between available in-tree solvers. |

Use stiff entries such as <b>ode15s</b>, <b>ode23s</b>, <b>ode23t</b>, or <b>ode23tb</b> when the solution has fast decaying modes, a mass matrix, or a useful Jacobian. These entries use a lightweight in-tree linearly implicit kernel.

Use <b>ode15i</b> when the equation is written as a residual <b>F(t,y,yp)=0</b>.

When Nelson is built with the optional SUNDIALS backend, <b>cvodesnonstiff</b> uses CVODES Adams for nonstiff problems, <b>cvodesstiff</b> uses CVODES BDF for stiff or mass-matrix problems, and <b>idas</b> uses IDAS BDF for fully implicit residual problems. Explicitly requesting one of these solver values reports an error when the backend is not available. If a sparse <b>JPattern</b> is supplied and the SPGMR library is available, the backend uses an iterative linear solver; otherwise it uses the dense linear solver. Sparse <b>JPattern</b> matrices and sparse double <b>Jacobian</b> values are consumed directly by this selection and preconditioner path. SUNDIALS solver option objects can also request <b>LinearSolver</b> values <b>'dense'</b>, <b>'spgmr'</b>, <b>'spfgmr'</b>, <b>'spbcgs'</b>, <b>'sptfqmr'</b>, <b>'pcg'</b>, or <b>'klu'</b>, and <b>Preconditioner</b> values <b>'none'</b>, <b>'jacobi'</b>, <b>'banded'</b>, or <b>'ilu0'</b>. The <b>'auto'</b> preconditioner chooses <b>'jacobi'</b> for diagonal sparse patterns, <b>'banded'</b> for narrow bands, and <b>'ilu0'</b> for wider sparse patterns. The <b>'banded'</b> value builds a band-limited finite-difference preconditioner and uses <b>JPattern</b> to restrict the band when available. The <b>'ilu0'</b> value builds a compact incomplete LU preconditioner on the same sparsity pattern. The <b>'klu'</b> value is conditional and is not provided by the current Windows binaries. SUNDIALS stats report <b>linearSolver</b>, <b>preconditioner</b>, <b>sensitivityMethod</b>, <b>linearSetupCount</b>, <b>linearIterations</b>, <b>linearConvergenceFailures</b>, <b>preconditionerSetupCount</b>, and <b>preconditionerSolveCount</b>.

The current object workflow supports direct forward sensitivities, CVODES adjoint gradients for scalar objectives, native IDAS adjoint gradients for scalar objectives, and projected scalar adjoint gradients for delayed equations. IDAS native adjoints report <b>sensitivityBackend</b> as <b>'idasAdjoint'</b>. Delayed equations support positive value and slope delays, including causal function-handle delays; state-dependent delays recompute internal method-of-steps chunks from the current lag and retry with smaller chunks when a trial chunk asks for future history. Delay stats report the number of chunks through <b>nchunks</b>. Fully implicit delayed residuals are supported with <b>ode15i</b> and, when the optional backend is available, <b>idas</b>. <b>'autoswitch'</b> runs inside the adaptive step loop and can switch between <b>ode45</b> and <b>ode15s</b> when stiffness pressure appears or is released while preserving solution output, events, and stats. Autoswitch stats include <b>autoSwitchInitialSolver</b>, <b>autoSwitchSelectedSolver</b>, <b>autoSwitchSwitched</b>, <b>autoSwitchReason</b>, <b>autoSwitchLastReason</b>, <b>autoSwitchMode</b>, <b>autoSwitchSwitchTime</b>, <b>autoSwitchSwitchCount</b>, <b>autoSwitchStiffnessIndicator</b>, <b>autoSwitchReleaseIndicator</b>, and <b>autoSwitchStiffnessCriterion</b>.

## 💡 Examples

Nonstiff problem.

```matlab
options = odeset('RelTol', 1e-5);
[t, y] = ode45(@(t,y) -y, [0 1], 1, options)
```

Stiff problem with a Jacobian.

```matlab
f = @(t,y) -1000 * (y - cos(t)) - sin(t);
options = odeset('Jacobian', -1000);
[t, y] = ode23s(f, [0 0.5], 1, options)
```

## 🔗 See also

[ode45](../ode_solvers/ode45.md), [ode23](../ode_solvers/ode23.md), [ode15s](../ode_solvers/ode15s.md), [ode15i](../ode_solvers/ode15i.md), [nelson.ode.options.CVODESNonstiff](../ode_solvers/nelson.ode.options.CVODESNonstiff.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md), [nelson.ode.options.IDAS](../ode_solvers/nelson.ode.options.IDAS.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
