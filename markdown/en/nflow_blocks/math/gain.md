# gain


<p align="center">
<img src="gain.svg" width="192"/>
</p>
Multiplies the input by a scalar gain.

## 📝 Syntax

- Block type: gain

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Multiplies the input by a scalar gain. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>gain</code> | 
| Label | Gain | 

  

<b>Description</b> 

Simple multiplicative gain block. Multiplies the input by a constant gain. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=100, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>gain</code> | 2 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>gain</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | gain | 
| Family | Math blocks | 
| Rendered size | 100 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. 
- If input 1 is unconnected, the stored output is emitted; otherwise gain is resolved and multiplied by the input. 

<b>Equation or Rule</b> 
$$y = gain\,u$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/gain.cpp`



## 🔗 See also

[bias](../../nflow_blocks/math/bias.md), [mult](../../nflow_blocks/math/mult.md), [sum](../../nflow_blocks/math/sum.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
