# divide


<p align="center">
<img src="divide.svg" width="192"/>
</p>
Divides input 1 by input 2.

## 📝 Syntax

- Block type: divide

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Divides input 1 by input 2. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>divide</code> | 
| Label | Divide | 

  

<b>Description</b> 

Divides the first input by the second input. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=30 | 
| Port\_2 | Numeric signal read by the block. | left | x=0, y=50 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

No block parameters are declared in the manifest. 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | divide | 
| Family | Math blocks | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. Requires the first input port. 
- If abs(denominator) is below 1e-12, the previous output is left unchanged. 

<b>Equation or Rule</b> 
$$y = \frac{u_1}{u_2}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/divide.cpp`



## 🔗 See also

[mult](../../nflow_blocks/math/mult.md), [gain](../../nflow_blocks/math/gain.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
