# ramp


<p align="center">
<img src="ramp.svg" width="192"/>
</p>
Generates a ramp beginning at start.

## 📝 Syntax

- Block type: ramp

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Generates a ramp beginning at start. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>ramp</code> | 
| Label | Ramp | 

  

<b>Description</b> 

Generates a ramp signal with slope starting at time start. 

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
| <code>slope</code> | 1 | 
| <code>start</code> | 0 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>slope</code> 
- <code>start</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | ramp | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- Before start, output is 0; at and after start, output is slope \* (t - start). 

<b>Equation or Rule</b> 
$$y = \begin{cases} slope\,(t - start), & t \ge start \\ 0, & t < start \end{cases}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/ramp.cpp`



## 🔗 See also

[step](../../nflow_blocks/source/step.md), [sine](../../nflow_blocks/source/sine.md), [clock](../../nflow_blocks/source/clock.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
