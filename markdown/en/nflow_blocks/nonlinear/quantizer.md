# quantizer


<p align="center">
<img src="quantizer.svg" width="72"/>
</p>
Rounds the input to the nearest interval.

## 📝 Syntax

- Block type: quantizer

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Rounds the input to the nearest interval. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Nonlinear blocks | 
| Type | <code>quantizer</code> | 
| Label | Quantizer | 

  

<b>Description</b> 

Rounds the input to the nearest multiple of a configured interval. 

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
| <code>interval</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>interval</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | quantizer | 
| Family | Nonlinear blocks | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. Requires input 1. 
- interval is converted to abs(interval); values below 1e-12 are replaced by 1. 

<b>Equation or Rule</b> 
$$y = interval\,\operatorname{round}\left(\frac{u}{interval}\right)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/quantizer.cpp`



## 🔗 See also

[rate](../../nflow_blocks/nonlinear/rate.md), [saturation](../../nflow_blocks/nonlinear/saturation.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
