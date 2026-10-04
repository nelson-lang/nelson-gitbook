# trim

Find a steady-state operating point of an nflow model.

## 📝 Syntax

- [x, u, y, dx] = trim(model)
- [x, u, y, dx] = trim(model, x0, u0)

## 📥 Input argument

- model - a loaded system (name or handle) or the path to a .nflow file.
- x0 - optional starting continuous state (length nx) for the search.
- u0 - optional fixed inputs (length nu). External-port Label Source blocks.

## 📤 Output argument

- x - the equilibrium continuous state.
- u - the inputs at the solution (equal to u0).
- y - the outputs at the solution.
- dx - the state derivative at the solution; its norm measures how close to equilibrium.

## 📄 Description

<b>trim</b> finds a steady-state (equilibrium) operating point of <b>model</b>: a continuous state <b>x</b> at which <b>xdot = f(x, u0) = 0</b> for the fixed inputs <b>u0</b>.

It solves the equation by a Newton iteration on the state Jacobian <b>A = d(xdot)/dx</b> computed by <b>linmod</b>, starting from <b>x0</b>. For a linear model the equilibrium is <b>x = -A\\(B\*u0)</b>, reached in one step.

## Used function(s)

linmod

## 💡 Example

Equilibrium of a first-order state-space model

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
f = [tempdir(), 'trim_demo.nflow'];
fid = fopen(f,'wt'); fwrite(fid, jsonencode(d)); fclose(fid);
[x, u, y, dx] = trim(f, 0, 2)  % x = 1 (xdot = 0)
```

## 🔗 See also

[linmod](../nflow_engine/linmod.md), [sim](../nflow_engine/sim.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
