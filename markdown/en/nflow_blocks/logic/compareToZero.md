# compareToZero


<p align="center">
<img src="compareToZero.svg" width="72"/>
</p>
Compares one input to zero.

## 📝 Syntax

- Block type: compareToZero

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Compares one input to zero. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Logic blocks | 
| Type | <code>compareToZero</code> | 
| Label | Compare Zero | 

  

<b>Description</b> 

Compares the input signal with zero and outputs 1 when the comparison is true, otherwise 0. 

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
| <code>operator</code> | ne | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>operator</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | compareToZero | 
| Family | Logic blocks | 
| Rendered size | 100 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. Requires the first input port. 
- Supported operators are ge, gt, and ne; unknown values fall back to ge. 

<b>Equation or Rule</b> 
$$y = \operatorname{compare}(u,\,0,\,operator)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/compareToZero.cpp`



## 🔗 See also

[compareToConstant](../../nflow_blocks/logic/compareToConstant.md), [relationalOperator](../../nflow_blocks/logic/relationalOperator.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
