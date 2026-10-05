# derivative


<p align="center">
<img src="derivative.svg" width="192"/>
</p>
Estimates the time derivative of an input.

## 📝 Syntax

- Block type: derivative

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Estimates the time derivative of an input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Continuous blocks | 
| Type | <code>derivative</code> | 
| Label | Derivative | 

  

<b>Description</b> 

Estimates the derivative (time-rate-of-change) of the input signal. 

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

No block parameters are declared in the manifest. 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | derivative | 
| Family | Continuous blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears the previous input and derivative output. 
- OUTPUT emits the stored derivative. UPDATE computes (u - previous) / dt and stores u. 
- If dt is not positive, the update uses 0. 

<b>Equation or Rule</b> 
$$y_k = \frac{u_k - u_{k-1}}{dt}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/derivative.cpp`



## 🔗 See also

[integrator](../../nflow_blocks/continuous/integrator.md), [hpf](../../nflow_blocks/continuous/hpf.md), [lpf](../../nflow_blocks/continuous/lpf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
