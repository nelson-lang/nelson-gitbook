# deadZone


<p align="center">
<img src="deadZone.svg" width="192"/>
</p>
Suppresses values inside a dead zone.

## 📝 Syntax

- Block type: deadZone

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Suppresses values inside a dead zone. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Nonlinear blocks | 
| Type | <code>deadZone</code> | 
| Label | Dead Zone | 

  

<b>Description</b> 

Suppresses small input values inside a configured interval. 

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
| <code>min</code> | -1 | 
| <code>max</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>min</code> 
- <code>max</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | deadZone | 
| Family | Nonlinear blocks | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. Requires the first input port. 
- Inputs below min output u - min, inputs above max output u - max, and values inside the band output 0. 

<b>Equation or Rule</b> 
$$y = 0\quad \mathrm{for}\quad min \le u \le max$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/deadZone.cpp`



## 🔗 See also

[saturation](../../nflow_blocks/nonlinear/saturation.md), [backlash](../../nflow_blocks/nonlinear/backlash.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
