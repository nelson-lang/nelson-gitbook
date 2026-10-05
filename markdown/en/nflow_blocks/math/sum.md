# sum


<p align="center">
<img src="sum.svg" width="192"/>
</p>
Adds connected inputs with configurable signs.

## 📝 Syntax

- Block type: sum

## 📥 Input argument

- input ports - 3 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Adds connected inputs with configurable signs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>sum</code> | 
| Label | Sum | 

  

<b>Description</b> 

Adds up several inputs with optional signs per input. 

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

| Parameter | Default value | 
| --- | --- | 
| <code>signs</code> | [1, 1, 1] | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>signs</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | sum | 
| Family | Math blocks | 
| Rendered size | 20 x 20 | 
| Phases | ALGEBRAIC | 
| Direct feedthrough | yes | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- Algebraic block. 
- signs provides one sign per input; missing signs default to +1, and unconnected ports are skipped. 

<b>Equation or Rule</b> 
$$y = \sum_i sign_i\,u_i$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/sum.cpp`



## 🔗 See also

[gain](../../nflow_blocks/math/gain.md), [bias](../../nflow_blocks/math/bias.md), [negate](../../nflow_blocks/math/negate.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
