# nflow\_solvers

Choosing how a diagram is integrated (solver selection).

## 📝 Syntax

- Concept page: fixed-step vs global ODE solvers, tolerances, code generation

## 📄 Description


nflow integrates a diagram in one of two ways. By default it runs a <b>fixed-step discrete</b> engine: each block updates once per model sample (the diagram <b>sampleTime</b>), and every continuous block integrates itself with a per-block Euler step. Selecting a <b>solver</b> switches to the <b>global ODE</b> path: all continuous states are assembled into one vector and integrated together, with zero-crossing detection and, for the adaptive solvers, step-size control. 

<b>Selecting a solver</b> 

Set the model's <b>solver</b> field, scripted with <b>set\_param(model, 'Solver', name)</b>, or from <b>Simulation Settings</b> in the editor's Simulation menu. The settings open in the inspector's Model tab. The default (no solver, or <b>'discrete'</b>) keeps the fixed-step engine, so existing models are unchanged — the global path is a pure opt-in. 

<b>Available solvers</b> 

- <b>discrete</b> (default) — fixed-step, per-block Euler for continuous states. 
- <b>ode1</b> — fixed-step forward Euler over the global state. 
- <b>ode4</b> — fixed-step classic 4th-order Runge-Kutta (far more accurate than ode1 at the same step). 
- <b>ode45</b> — native adaptive <b>Dormand-Prince 5(4)</b>: takes variable sub-steps within each communication interval, controlled by the tolerances. A good default when the dynamics are fast or you want accuracy without hand-tuning the step. 
- <b>variableNonstiff</b> / <b>variableStiff</b> / <b>cvodesBdf</b> / <b>cvodesAdams</b> — adaptive CVODES (SUNDIALS) backends; use a stiff variant when the dynamics have widely separated time scales. 

<b>Tolerances</b> 

The adaptive solvers are controlled by <b>RelTol</b> (relative, default 1e-6), <b>AbsTol</b> (absolute, default 1e-8) and an optional <b>MaxStep</b> ceiling. Set them with <b>set\_param</b>, in the diagram fields, or in the editor's tolerance fields (shown when a variable-step solver is selected). Tighter tolerances give a more accurate trajectory at the cost of more sub-steps. 

<b>Code generation</b> 

The fixed-step <b>ode1</b> / <b>ode4</b> and the adaptive <b>ode45</b> solvers are lowered to standalone C and Rust by <b>nflow\_codegenerate</b> and <b>NFlow.exportfmu</b>: the generated code reproduces the engine's global integration (the generated ode45 stepper mirrors the ode45 backend) and matches the simulation. The CVODES / IDAS backends have no embedded lowering and are <b>rejected</b> by code generation with an actionable message — export such a model with ode4 or ode45, or simulate it with the solver. 

<b>Default rationale</b> 

The default stays fixed-step so that every existing model keeps producing exactly the same trajectory and the generated code matches the default simulation by construction. Opting into a global solver is a one-line change. 

<b>Stopping and resetting</b> 

Stop ends the current execution while keeping the results already calculated. Reset also returns simulation time to zero and clears the displayed results. Neither command changes the configured solver.


## 🔗 See also

[sim](../nflow_engine/sim.md), [nflow_multirate](../nflow_gui/nflow_multirate.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
