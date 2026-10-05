# stateSpace


<p align="center">
<img src="stateSpace.svg" width="192"/>
</p>
Implements a scalar continuous state-space model.

## 📝 Syntax

- Block type: stateSpace

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Implements a scalar continuous state-space model. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Continuous blocks | 
| Type | <code>stateSpace</code> | 
| Label | State-Space | 

  

<b>Description</b> 

Continuous-time state-space block defined by matrices A, B, C, D. Represents linear state-space dynamics. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=160, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>A</code> | 1 | 
| <code>B</code> | 1 | 
| <code>C</code> | 1 | 
| <code>D</code> | 0 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>A</code> 
- <code>B</code> 
- <code>C</code> 
- <code>D</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | stateSpace | 
| Family | Continuous blocks | 
| Rendered size | 160 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears state and output. 
- OUTPUT emits C\*x + D\*u. UPDATE advances x with Euler integration x += dt\*(A\*x + B\*u). 

<b>Equation or Rule</b> 
$$\frac{dx}{dt} = A x + B u,\quad y = C x + D u$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/stateSpace.cpp`



## 🔗 See also

[tf](../../nflow_blocks/continuous/tf.md), [dstateSpace](../../nflow_blocks/discrete/dstateSpace.md), [integrator](../../nflow_blocks/continuous/integrator.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
