# step


<p align="center">
<img src="step.svg" width="192"/>
</p>
Generates a unit step at stepTime.

## 📝 Syntax

- Block type: step

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Generates a unit step at stepTime. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>step</code> | 
| Label | Step | 

  

<b>Description</b> 

Generates a step (Heaviside) signal starting at stepTime. 

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
| <code>stepTime</code> | 0 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>stepTime</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | step | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- Outputs 0 before stepTime and 1 at or after stepTime. 

<b>Equation or Rule</b> 
$$y = \begin{cases} 1, & t \ge stepTime \\ 0, & t < stepTime \end{cases}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/step.cpp`



## 🔗 See also

[ramp](../../nflow_blocks/source/ramp.md), [impulse](../../nflow_blocks/source/impulse.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
