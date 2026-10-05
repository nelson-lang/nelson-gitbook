#import "nelson_help.typ": *

= nflow\_codegenerate <nflow_engine:nflow_codegenerate>

Generate standalone C or Rust code from an nflow model.

== Syntax

- #raw("nflow_codegenerate(model)");
- #raw("nflow_codegenerate(model, destination)");
- #raw("nflow_codegenerate(model, destination, includeMain)");
- #raw("nflow_codegenerate(model, destination, includeMain, lang)");
- #raw("r = nflow_codegenerate(model, destination, includeMain, lang, options)");

== Input argument

/ model: a string: path of the .nflow model file.
/ destination: a string: destination directory (a subdirectory named after the model is created). Default: the model's directory.
/ includeMain: a logical: also emit a runnable main (CSV writer) and build scaffolding (CMakeLists.txt for C, Cargo.toml for Rust). Default: true.
/ lang: a string: 'C' (default) or 'rust'.
/ options: a scalar struct: fields 'build' (logical, compile the generated code via CMake \/ cargo), 'buildConfig' ('Release' default), 'failOnWarning' (logical, turn codegen warnings into errors).

== Output argument

/ r: a struct: 'dir' (generated directory) and 'warnings' (cell of codegen warnings, e.g. a solver downgrade).

== Description

#strong[nflow\_codegenerate]; lowers an nflow diagram to standalone #strong[C]; or #strong[Rust]; with no runtime dependency: a #raw("ModelState"); struct, #raw("nflow_init"); \/ #raw("nflow_step"); \/ #raw("nflow_terminate");, one #raw("ModelInput"); field per external label source and one #raw("ModelOutput"); field per external label sink (and per #raw("fileSink");).

 #strong[Solvers.]; Fixed-step #raw("ode1"); (per-block forward Euler) and #raw("ode4"); (a single global Runge–Kutta 4 over the packed continuous state), plus the embedded adaptive #raw("ode45"); (Dormand–Prince 5(4)). Under #raw("ode4"); \/ #raw("ode45"); zero-crossing surfaces (bounded integrator, saturation, dead zone, switch, step) are localized by bisection exactly like the simulator. Runtime-only solvers (#raw("dae");, ...) are rejected. When a block cannot join the RK4 scheme the model is demoted to Euler with an explicit #raw("solverDowngrade"); warning; #raw("ode1"); warns that crossings are not localized.

 #strong[Coverage.]; Discrete, math, logic, lookup (splines included), routing, bus and complex lowering, small integer\/boolean quantization, exact 64-bit integer lanes, multirate discrete blocks, acausal islands (linear, embedded-Newton and joint-free planar mechanics), and conditional subsystems (enable, trigger, reset, action gates). Unsupported constructs are rejected with a typed message naming the offending block, never silently-wrong code.

 #strong[Verification.]; The generated code is validated locally by the numeric harness (#raw("nflow_codegen_check_numeric");): compile, run, and compare trajectories sample for sample against #raw("__nflow_simulate__");.


== Example

Generate C, then Rust, from a model file.

``````matlab
% model = 'C:/models/lowpass.nflow';
% nflow_codegenerate(model, tempdir(), true, 'C');
% nflow_codegenerate(model, tempdir(), true, 'rust');
% r = nflow_codegenerate(model, tempdir(), true, 'C', struct('build', true));
``````


== See also

#nlink(<nflow_engine:sim>)[sim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
