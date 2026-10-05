# xor


<p align="center">
<img src="xor.svg" width="192"/>
</p>
Outputs the logical exclusive OR of two inputs.

## 📝 Syntax

- Block type: xor

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs the logical exclusive OR of two inputs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Logic blocks | 
| Type | <code>xor</code> | 
| Label | XOR | 

  

<b>Description</b> 

Logical exclusive-or block. Returns 1.0 if inputs differ, otherwise 0.0. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=20 | 
| Port\_2 | Numeric signal read by the block. | left | x=0, y=60 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

No block parameters are declared in the manifest. 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | xor | 
| Family | Logic blocks | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic boolean block. 
- The output is true when exactly one input is true. 

<b>Equation or Rule</b> 
$$y = \operatorname{xor}(\operatorname{bool}(u_1),\operatorname{bool}(u_2))$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/xor.cpp`



## 🔗 See also

[and](../../nflow_blocks/logic/and.md), [or](../../nflow_blocks/logic/or.md), [not](../../nflow_blocks/logic/not.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
