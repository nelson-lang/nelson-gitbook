# saturation


<p align="center">
<img src="saturation.svg" width="192"/>
</p>
Clamps the input between min and max.

## 📝 Syntax

- Block type: saturation

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Clamps the input between min and max. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Nonlinear blocks | 
| Type | <code>saturation</code> | 
| Label | Saturation | 

  

<b>Description</b> 

Clamps the input between min and max values. 

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
| Block type | saturation | 
| Family | Nonlinear blocks | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. Requires input 1. 
- min and max are resolved numerically; native defaults are negative and positive infinity. 

<b>Equation or Rule</b> 
$$y = \operatorname{clamp}(u,\,min,\,max)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/saturation.cpp`



## 🔗 See also

[deadZone](../../nflow_blocks/nonlinear/deadZone.md), [rate](../../nflow_blocks/nonlinear/rate.md), [min](../../nflow_blocks/math/min.md), [max](../../nflow_blocks/math/max.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
