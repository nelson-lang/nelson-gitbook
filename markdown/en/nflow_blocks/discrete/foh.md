# foh


<p align="center">
<img src="foh.svg" width="192"/>
</p>
First-order hold for sampled input values.

## 📝 Syntax

- Block type: foh

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


First-order hold for sampled input values. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Discrete blocks | 
| Type | <code>foh</code> | 
| Label | FOH | 

  

<b>Description</b> 

First-Order Hold: performs linear interpolation between sample instants for discrete-time signals. 

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
| <code>ts</code> | 0.1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>ts</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | foh | 
| Family | Discrete blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears previous/current samples and schedules sampling. 
- OUTPUT emits the interpolated held output. UPDATE samples input at ts. 
- ts is clamped to at least 0.001. 

<b>Equation or Rule</b> 

linear interpolation between sampled values 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/foh.cpp`



## 🔗 See also

[zoh](../../nflow_blocks/discrete/zoh.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
