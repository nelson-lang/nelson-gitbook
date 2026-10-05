#import "nelson_help.typ": *

= sim <nflow_engine:sim>

Run an nflow simulation of a model and return its results.

== Syntax

- #raw("out = sim(model)");
- #raw("out = sim(model, 'StopTime', T)");
- #raw("out = sim(model, 'StopTime', T, 'SampleTime', dt)");

== Input argument

/ model: a loaded system (name or handle) or the path to a .nflow file.
/ StopTime: optional finite numeric scalar; overrides the model's total simulated time.
/ SampleTime: optional finite numeric scalar; overrides the model's sample time.

== Output argument

/ out: a structure with one field per To Workspace block (its VariableName) plus 'tout' (the time vector).

== Description

#strong[sim]; runs an nflow simulation of #strong[model]; and returns its results.

 From Workspace blocks read their signal from the base workspace, so define those variables before calling #strong[sim];. To Workspace blocks write their result to the base workspace (as during an interactive run) and are also exposed as fields of #strong[out]; (for example #strong[out.simout];).

 This is a convenience wrapper over the headless runner #strong[\_\_nflow\_simulate\_\_];: it reads the model document, applies the optional #strong[StopTime]; \/ #strong[SampleTime]; overrides, runs the engine and collects the results.

 #strong[StopFcn callback.]; If the model carries a top-level #strong[stopFcn]; field (a text blob of Nelson commands), it runs in the base workspace once the simulation stops, with the result exposed as #strong[out];. It fires only from a simulation run (never on model load) and runs even when no output is requested, so a model whose #strong[stopFcn]; is #strong[NFlow.plotScopes(out)]; pops its scopes up automatically. The nflow editor's Run button fires the same #strong[stopFcn];. A failing callback warns instead of aborting the completed run.


== Examples

Run a self-contained demo and read back the logged signal

``````matlab
model = [modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow'];
out = sim(model, 'StopTime', 5);
plot(out.simout.time, out.simout.signals.values);
``````

Feed a From Workspace block from the base workspace

``````matlab
t = (0:0.01:10)';
simin = [t, sin(2*pi*0.5*t)];
out = sim([modulepath('nflow_blocks'), '/examples/workspace/From_Workspace_Demo.nflow']);
``````


== See also

#nlink(<nflow_engine:load_system>)[load\_system];, #nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace];, #nlink(<nflow_blocks:sink.toWorkspace>)[toWorkspace];, #nlink(<nflow_engine:NFlow.plotScopes>)[NFlow.plotScopes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
