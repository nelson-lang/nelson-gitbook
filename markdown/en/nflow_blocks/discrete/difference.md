# difference


<p align="center">
<img src="difference.svg" width="72"/>
</p>
Outputs the difference from the previous input.

## 📝 Syntax

- Block type: difference

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs the difference from the previous input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Discrete blocks | 
| Type | <code>difference</code> | 
| Label | Difference | 

  

<b>Description</b> 

Outputs the difference between the current input and the previous input sample. 

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

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>initial</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | difference | 
| Family | Discrete blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT stores initial as the previous input. 
- OUTPUT emits u - previous. UPDATE stores the current input. 

<b>Equation or Rule</b> 
$$y_k = u_k - u_{k-1}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/difference.cpp`



## 🔗 See also

[unitDelay](../../nflow_blocks/discrete/unitDelay.md), [derivative](../../nflow_blocks/continuous/derivative.md), [ddelay](../../nflow_blocks/discrete/ddelay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
