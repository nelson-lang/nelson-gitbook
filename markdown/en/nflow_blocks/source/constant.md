# constant


<p align="center">
<img src="constant.svg" width="192"/>
</p>
Outputs a constant numeric value.

## 📝 Syntax

- Block type: constant

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs a constant numeric value. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>constant</code> | 
| Label | Constant | 

  

<b>Description</b> 

Represents a constant numeric source. Outputs the configured value. 

<b>Ports</b> 

<b>Input(s)</b> 

This block declares no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>value</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>value</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | constant | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- value is resolved numerically and written each output phase. 

<b>Equation or Rule</b> 
$$y = value$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/constant.cpp`



## 🔗 See also

[step](../../nflow_blocks/source/step.md), [ramp](../../nflow_blocks/source/ramp.md), [sine](../../nflow_blocks/source/sine.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
