# bias


<p align="center">
<img src="bias.svg" width="72"/>
</p>
Adds a constant bias to the input.

## 📝 Syntax

- Block type: bias

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Adds a constant bias to the input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>bias</code> | 
| Label | Bias | 

  

<b>Description</b> 

Adds a constant offset to the input signal. 

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
| <code>bias</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>bias</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | bias | 
| Family | Math blocks | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. Requires the first input port. 
- The bias parameter is resolved through the NFlow numeric parameter resolver. 

<b>Equation or Rule</b> 
$$y = u + bias$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/bias.cpp`



## 🔗 See also

[gain](../../nflow_blocks/math/gain.md), [sum](../../nflow_blocks/math/sum.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
