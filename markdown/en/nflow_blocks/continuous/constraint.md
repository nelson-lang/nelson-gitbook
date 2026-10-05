# constraint


<p align="center">
<img src="constraint.svg" width="72"/>
</p>
Algebraic (differential-algebraic) constraint state solved by the DAE solver.

## 📝 Syntax

- Block type: constraint

## 📥 Input argument

- input ports - 1 input port(s) declared: the constraint residual g.

## 📤 Output argument

- output ports - 1 output port(s) declared: the algebraic state z.

## 📄 Description


Algebraic (differential-algebraic) constraint state solved by the DAE solver. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Continuous blocks | 
| Type | <code>constraint</code> | 
| Label | Constraint | 

  

<b>Description</b> 

The Constraint block introduces one <b>algebraic</b> state <b>z</b> (its output). It has no derivative of its own; instead the DAE solver adjusts <b>z</b> so that the block's input signal <b>g</b> is driven to zero. Wire the surrounding diagram so the input computes the constraint residual <b>g(z, x) = 0</b> (typically using the block's own output z), and the solver holds the system on that manifold. 

This block is only meaningful under the differential-algebraic solver: set the model's <code>solver</code> to <code>dae</code>. Under any other solver, or in generated C / Rust code, it is rejected with a clear message (there is no explicit lowering for a differential-algebraic system). 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | The constraint residual g, driven to zero. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | The algebraic state z the solver determines. | right | x=80, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>InitialCondition</code> | 0 | 

 

The initial condition is only an initial guess for z; the solver refines it to a consistent value with IDACalcIC. 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | constraint | 
| Family | Continuous blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, DERIVATIVE | 
| Internal state or history | one algebraic (mass-0) state | 
| Signal data type | double numeric values | 

 

<b>Equation or Rule</b> 
$$0 = g(z, x),\qquad y = z$$
 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/constraint.cpp`



## 🔗 See also

[integrator](../../nflow_blocks/continuous/integrator.md), [stateSpace](../../nflow_blocks/continuous/stateSpace.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
