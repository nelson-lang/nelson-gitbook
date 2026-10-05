#import "nelson_help.typ": *

= nflow\_solvers <nflow_gui:nflow_solvers>

Choosing how a diagram is integrated (solver selection).

== Syntax

- #raw("Concept page: fixed-step vs global ODE solvers, tolerances, code generation");

== Description

nflow integrates a diagram in one of two ways. By default it runs a #strong[fixed-step discrete]; engine: each block updates once per model sample (the diagram #strong[sampleTime];), and every continuous block integrates itself with a per-block Euler step. Selecting a #strong[solver]; switches to the #strong[global ODE]; path: all continuous states are assembled into one vector and integrated together, with zero-crossing detection and, for the adaptive solvers, step-size control.

 #strong[Selecting a solver];

 Set the model's #strong[solver]; field, scripted with #strong[set\_param(model, 'Solver', name)];, or from #strong[Simulation Settings]; in the editor's Simulation menu. The settings open in the inspector's Model tab. The default (no solver, or #strong['discrete'];) keeps the fixed-step engine, so existing models are unchanged — the global path is a pure opt-in.

 #strong[Available solvers];

 

- #strong[discrete]; (default) — fixed-step, per-block Euler for continuous states.
- #strong[ode1]; — fixed-step forward Euler over the global state.
- #strong[ode4]; — fixed-step classic 4th-order Runge-Kutta (far more accurate than ode1 at the same step).
- #strong[ode45]; — native adaptive #strong[Dormand-Prince 5(4)];: takes variable sub-steps within each communication interval, controlled by the tolerances. A good default when the dynamics are fast or you want accuracy without hand-tuning the step.
- #strong[variableNonstiff]; \/ #strong[variableStiff]; \/ #strong[cvodesBdf]; \/ #strong[cvodesAdams]; — adaptive CVODES (SUNDIALS) backends; use a stiff variant when the dynamics have widely separated time scales. #strong[Tolerances];

 The adaptive solvers are controlled by #strong[RelTol]; (relative, default 1e-6), #strong[AbsTol]; (absolute, default 1e-8) and an optional #strong[MaxStep]; ceiling. Set them with #strong[set\_param];, in the diagram fields, or in the editor's tolerance fields (shown when a variable-step solver is selected). Tighter tolerances give a more accurate trajectory at the cost of more sub-steps.

 #strong[Code generation];

 The fixed-step #strong[ode1]; \/ #strong[ode4]; and the adaptive #strong[ode45]; solvers are lowered to standalone C and Rust by #strong[nflow\_codegenerate]; and #strong[NFlow.exportfmu];: the generated code reproduces the engine's global integration (the generated ode45 stepper mirrors the ode45 backend) and matches the simulation. The CVODES \/ IDAS backends have no embedded lowering and are #strong[rejected]; by code generation with an actionable message — export such a model with ode4 or ode45, or simulate it with the solver.

 #strong[Default rationale];

 The default stays fixed-step so that every existing model keeps producing exactly the same trajectory and the generated code matches the default simulation by construction. Opting into a global solver is a one-line change.

 #strong[Stopping and resetting];

 Stop ends the current execution while keeping the results already calculated. Reset also returns simulation time to zero and clears the displayed results. Neither command changes the configured solver.


== See also

#nlink(<nflow_engine:sim>)[sim];, #nlink(<nflow_gui:nflow_multirate>)[nflow\_multirate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
