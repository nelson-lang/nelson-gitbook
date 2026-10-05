# pid


<p align="center">
<img src="pid.svg" width="192"/>
</p>
Implements a scalar PID controller with output limits.

## 📝 Syntax

- Block type: pid

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Implements a scalar PID controller with output limits. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Continuous blocks | 
| Type | <code>pid</code> | 
| Label | PID | 

  

<b>Description</b> 

Proportional-Integral-Derivative controller block. Computes a PID control action from input error. 

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
| <code>kp</code> | 1 | 
| <code>ki</code> | 0 | 
| <code>kd</code> | 0 | 
| <code>min</code> | -inf | 
| <code>max</code> | inf | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>kp</code> 
- <code>ki</code> 
- <code>kd</code> 
- <code>min</code> 
- <code>max</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | pid | 
| Family | Continuous blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears integral, previous input, and output. 
- OUTPUT emits the stored controller output. UPDATE computes P, I, and D terms from input and dt. 
- The result is clamped between min and max. 

<b>Equation or Rule</b> 
$$y = \operatorname{clamp}\left(k_p u + k_i\int u\,dt + k_d\frac{du}{dt},\,min,\,max\right)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/pid.cpp`



## 🔗 See also

[integrator](../../nflow_blocks/continuous/integrator.md), [derivative](../../nflow_blocks/continuous/derivative.md), [gain](../../nflow_blocks/math/gain.md), [sum](../../nflow_blocks/math/sum.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
