# rate


<p align="center">
<img src="rate.svg" width="192"/>
</p>
Limits rising and falling signal rates.

## 📝 Syntax

- Block type: rate

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Limits rising and falling signal rates. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Nonlinear blocks | 
| Type | <code>rate</code> | 
| Label | Rate Lim. | 

  

<b>Description</b> 

Limits the rate of change (rise/fall) of the input signal. 

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
| <code>rise</code> | 1 | 
| <code>fall</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>rise</code> 
- <code>fall</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | rate | 
| Family | Nonlinear blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT sets the stored output to 0. 
- OUTPUT emits the stored value. UPDATE clamps input between previous - fall\*dt and previous + rise\*dt. 
- rise and fall are clamped to nonnegative values. 

<b>Equation or Rule</b> 
$$y = \operatorname{clamp}(u,\,y_{prev} - fall\,dt,\,y_{prev} + rise\,dt)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/rate.cpp`



## 🔗 See also

[saturation](../../nflow_blocks/nonlinear/saturation.md), [quantizer](../../nflow_blocks/nonlinear/quantizer.md), [delay](../../nflow_blocks/continuous/delay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
