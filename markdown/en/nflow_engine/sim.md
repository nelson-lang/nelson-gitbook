# sim

Run an nflow simulation of a model and return its results.

## 📝 Syntax

- out = sim(model)
- out = sim(model, 'StopTime', T)
- out = sim(model, 'StopTime', T, 'SampleTime', dt)

## 📥 Input argument

- model - a loaded system (name or handle) or the path to a .nflow file.
- StopTime - optional finite numeric scalar; overrides the model's total simulated time.
- SampleTime - optional finite numeric scalar; overrides the model's sample time.

## 📤 Output argument

- out - a structure with one field per To Workspace block (its VariableName) plus 'tout' (the time vector).

## 📄 Description


<b>sim</b> runs an nflow simulation of <b>model</b> and returns its results. 

From Workspace blocks read their signal from the base workspace, so define those variables before calling <b>sim</b>. To Workspace blocks write their result to the base workspace (as during an interactive run) and are also exposed as fields of <b>out</b> (for example <b>out.simout</b>). 

This is a convenience wrapper over the headless runner <b>\_\_nflow\_simulate\_\_</b>: it reads the model document, applies the optional <b>StopTime</b> / <b>SampleTime</b> overrides, runs the engine and collects the results. 

<b>StopFcn callback.</b> If the model carries a top-level <b>stopFcn</b> field (a text blob of Nelson commands), it runs in the base workspace once the simulation stops, with the result exposed as <b>out</b>. It fires only from a simulation run (never on model load) and runs even when no output is requested, so a model whose <b>stopFcn</b> is <b>NFlow.plotScopes(out)</b> pops its scopes up automatically. The nflow editor's Run button fires the same <b>stopFcn</b>. A failing callback warns instead of aborting the completed run.

## 💡 Examples

Run a self-contained demo and read back the logged signal

```matlab
model = [modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow'];
out = sim(model, 'StopTime', 5);
plot(out.simout.time, out.simout.signals.values);
```
Feed a From Workspace block from the base workspace

```matlab
t = (0:0.01:10)';
simin = [t, sin(2*pi*0.5*t)];
out = sim([modulepath('nflow_blocks'), '/examples/workspace/From_Workspace_Demo.nflow']);
```


## 🔗 See also

[load_system](../nflow_engine/load_system.md), [new_system](../nflow_engine/new_system.md), [fromWorkspace](../nflow_blocks/source/fromWorkspace.md), [toWorkspace](../nflow_blocks/sink/toWorkspace.md), [NFlow.plotScopes](../nflow_engine/NFlow.plotScopes.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
