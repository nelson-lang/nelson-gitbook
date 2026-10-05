# mult


<p align="center">
<img src="mult.svg" width="192"/>
</p>
Multiplies connected inputs.

## 📝 Syntax

- Block type: mult

## 📥 Input argument

- input ports - 3 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Multiplies connected inputs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>mult</code> | 
| Label | Mult | 

  

<b>Description</b> 

Multiplies up to three inputs together. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=-30, y=10 | 
| Port\_2 | Numeric signal read by the block. | top | x=10, y=-30 | 
| Port\_3 | Numeric signal read by the block. | bottom | x=10, y=50 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=50, y=10 | 

 

<b>Parameters</b> 

No block parameters are declared in the manifest. 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | mult | 
| Family | Math blocks | 
| Rendered size | 20 x 20 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. 
- Starts at 1 and multiplies each connected input; unconnected ports are skipped. 

<b>Equation or Rule</b> 
$$y = \prod_i u_i$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/mult.cpp`



## 🔗 See also

[divide](../../nflow_blocks/math/divide.md), [gain](../../nflow_blocks/math/gain.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
