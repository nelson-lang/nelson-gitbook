# nflow\_codegenerate

Generate standalone C or Rust code from an nflow model.

## 📝 Syntax

- nflow\_codegenerate(model)
- nflow\_codegenerate(model, destination)
- nflow\_codegenerate(model, destination, includeMain)
- nflow\_codegenerate(model, destination, includeMain, lang)
- r = nflow\_codegenerate(model, destination, includeMain, lang, options)

## 📥 Input argument

- model - a string: path of the .nflow model file.
- destination - a string: destination directory (a subdirectory named after the model is created). Default: the model's directory.
- includeMain - a logical: also emit a runnable main (CSV writer) and build scaffolding (CMakeLists.txt for C, Cargo.toml for Rust). Default: true.
- lang - a string: 'C' (default) or 'rust'.
- options - a scalar struct: fields 'build' (logical, compile the generated code via CMake / cargo), 'buildConfig' ('Release' default), 'failOnWarning' (logical, turn codegen warnings into errors).

## 📤 Output argument

- r - a struct: 'dir' (generated directory) and 'warnings' (cell of codegen warnings, e.g. a solver downgrade).

## 📄 Description


<b>nflow\_codegenerate</b> lowers an nflow diagram to standalone <b>C</b> or <b>Rust</b> with no runtime dependency: a <code>ModelState</code> struct, <code>nflow_init</code> / <code>nflow_step</code> / <code>nflow_terminate</code>, one <code>ModelInput</code> field per external label source and one <code>ModelOutput</code> field per external label sink (and per <code>fileSink</code>). 

<b>Solvers.</b> Fixed-step <code>ode1</code> (per-block forward Euler) and <code>ode4</code> (a single global Runge–Kutta 4 over the packed continuous state), plus the embedded adaptive <code>ode45</code> (Dormand–Prince 5(4)). Under <code>ode4</code> / <code>ode45</code> zero-crossing surfaces (bounded integrator, saturation, dead zone, switch, step) are localized by bisection exactly like the simulator. Runtime-only solvers (<code>dae</code>, ...) are rejected. When a block cannot join the RK4 scheme the model is demoted to Euler with an explicit <code>solverDowngrade</code> warning; <code>ode1</code> warns that crossings are not localized. 

<b>Coverage.</b> Discrete, math, logic, lookup (splines included), routing, bus and complex lowering, small integer/boolean quantization, exact 64-bit integer lanes, multirate discrete blocks, acausal islands (linear, embedded-Newton and joint-free planar mechanics), and conditional subsystems (enable, trigger, reset, action gates). Unsupported constructs are rejected with a typed message naming the offending block, never silently-wrong code. 

<b>Verification.</b> The generated code is validated locally by the numeric harness (<code>nflow_codegen_check_numeric</code>): compile, run, and compare trajectories sample for sample against <code>__nflow_simulate__</code>.

## 💡 Example

Generate C, then Rust, from a model file.

```matlab
% model = 'C:/models/lowpass.nflow';
% nflow_codegenerate(model, tempdir(), true, 'C');
% nflow_codegenerate(model, tempdir(), true, 'rust');
% r = nflow_codegenerate(model, tempdir(), true, 'C', struct('build', true));
```


## 🔗 See also

[sim](../nflow_engine/sim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
