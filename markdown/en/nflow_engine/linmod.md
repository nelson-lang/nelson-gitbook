# linmod

Numerical linearization of an nflow model.

## 📝 Syntax

- [A, B, C, D] = linmod(model)
- [A, B, C, D] = linmod(model, x0, u0)
- A = linmod(model)

## 📥 Input argument

- model - a loaded system (name or handle) or the path to a .nflow file.
- x0 - optional operating-point state (length nx). Absent: the post-INIT state.
- u0 - optional operating-point inputs (length nu). Absent: zero.

## 📤 Output argument

- A - the nx-by-nx state Jacobian d(xdot)/dx about the operating point.
- B - the nx-by-nu input Jacobian d(xdot)/du about the operating point.
- C - the ny-by-nx output Jacobian dy/dx about the operating point.
- D - the ny-by-nu feedthrough Jacobian dy/du about the operating point.

## 📄 Description

<b>linmod</b> returns the continuous-time state-space linearization of <b>model</b> about its post-INIT operating point.

The Jacobians are obtained by central finite differences of the same global right-hand side the <b>ode4</b> / variable-step solver assembles: the continuous state <b>x</b> gathers every continuous block's state, the inputs <b>u</b> are the external-port Label Source blocks (<b>isExternalPort</b>), <b>xdot = f(x, u)</b> is the graph's derivative, and <b>y</b> the model's Label Sink outputs. A linear model linearizes to itself.

An input that should participate in <b>B</b> / <b>D</b> must be an external-port Label Source; a plain Label Source used for internal goto/from routing is not a model input.

Both top-level (flat) models and continuous states nested inside subsystems are supported: a nested state's coupling to the external inputs (<b>B</b>) and to the outputs across the subsystem boundary (<b>C</b>) is captured.

## 💡 Example

Linearize a first-order state-space model

```matlab
d.blocks = { ...
  struct('id','u','type','labelSource','inputs',0,'outputs',1,'params',struct('label','u','isExternalPort',true)), ...
  struct('id','ss','type','stateSpace','inputs',1,'outputs',1,'params',struct('A',-2,'B',1,'C',1,'D',0)), ...
  struct('id','y','type','labelSink','inputs',1,'outputs',0,'params',struct('label','y')), ...
  struct('id','sc','type','scope','inputs',1,'outputs',0,'params',struct()) };
d.connections = { ...
  struct('from','u','to','ss','fromIndex',0,'toIndex',0), ...
  struct('from','ss','to','y','fromIndex',0,'toIndex',0), ...
  struct('from','ss','to','sc','fromIndex',0,'toIndex',0) };
f = [tempdir(), 'linmod_demo.nflow'];
fid = fopen(f,'wt'); fwrite(fid, jsonencode(d)); fclose(fid);
[A, B, C, D] = linmod(f)  % A = -2, B = 1, C = 1, D = 0
```

## 🔗 See also

[trim](../nflow_engine/trim.md), [sim](../nflow_engine/sim.md), [load_system](../nflow_engine/load_system.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
