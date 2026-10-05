# integrator


<p align="center">
<img src="integrator.svg" width="192"/>
</p>
Integrates the input over time with optional clamps.

## 📝 Syntax

- Block type: integrator

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Integrates the input over time with optional clamps. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Continuous blocks | 
| Type | <code>integrator</code> | 
| Label | Integrator | 

  

<b>Description</b> 

The Integrator block integrates its input over time. It maintains internal state and produces the integrated output. 

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
| <code>initial</code> | 0 | 
| <code>min</code> | -inf | 
| <code>max</code> | inf | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>initial</code> 
- <code>min</code> 
- <code>max</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | integrator | 
| Family | Continuous blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clamps initial between min and max. 
- OUTPUT emits the current state. UPDATE adds dt \* input and clamps the result. 
- Native defaults for min and max are negative and positive infinity. 

<b>Equation or Rule</b> 
$$x_{k+1} = \operatorname{clamp}(x_k + dt\,u_k,\,min,\,max),\quad y = x$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/integrator.cpp`



## 🔗 See also

[derivative](../../nflow_blocks/continuous/derivative.md), [stateSpace](../../nflow_blocks/continuous/stateSpace.md), [tf](../../nflow_blocks/continuous/tf.md), [pid](../../nflow_blocks/continuous/pid.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
