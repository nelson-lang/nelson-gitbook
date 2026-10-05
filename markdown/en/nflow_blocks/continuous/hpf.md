# hpf


<p align="center">
<img src="hpf.svg" width="192"/>
</p>
Applies a first-order high-pass filter.

## 📝 Syntax

- Block type: hpf

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Applies a first-order high-pass filter. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Continuous blocks | 
| Type | <code>hpf</code> | 
| Label | HPF | 

  

<b>Description</b> 

A first-order high-pass filter. Passes high-frequency components and attenuates low-frequency ones. 

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
| <code>cutoff</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>cutoff</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | hpf | 
| Family | Continuous blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears stored output and previous raw input. 
- OUTPUT emits the stored output. UPDATE applies the discrete high-pass update. 
- If cutoff is not positive, output is forced to 0. 

<b>Equation or Rule</b> 
$$y_k = \alpha\,(y_{k-1} + u_k - u_{k-1})$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/hpf.cpp`



## 🔗 See also

[lpf](../../nflow_blocks/continuous/lpf.md), [derivative](../../nflow_blocks/continuous/derivative.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
