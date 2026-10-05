# dstateSpace


<p align="center">
<img src="dstateSpace.svg" width="192"/>
</p>
Implements a scalar discrete state-space model.

## 📝 Syntax

- Block type: dstateSpace

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Implements a scalar discrete state-space model. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Discrete blocks | 
| Type | <code>dstateSpace</code> | 
| Label | Discrete State-Space | 

  

<b>Description</b> 

Discrete-time state-space block with matrices A, B, C, D and sample time ts. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>A</code> | 1 | 
| <code>B</code> | 1 | 
| <code>C</code> | 1 | 
| <code>D</code> | 0 | 
| <code>ts</code> | 0.1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>A</code> 
- <code>B</code> 
- <code>C</code> 
- <code>D</code> 
- <code>ts</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dstateSpace | 
| Family | Discrete blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT resets state, output, next sample time, and ts. 
- OUTPUT emits the stored output. UPDATE runs at sample times. 
- At update, y = C\*x + D\*u and x\_next = A\*x + B\*u; ts is at least 0.001. 

<b>Equation or Rule</b> 
$$y_k = Cx_k + Du_k,\quad x_{k+1} = Ax_k + Bu_k$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/dstateSpace.cpp`



## 🔗 See also

[dtf](../../nflow_blocks/discrete/dtf.md), [stateSpace](../../nflow_blocks/continuous/stateSpace.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
