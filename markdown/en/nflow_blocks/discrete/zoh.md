# zoh


<p align="center">
<img src="zoh.svg" width="192"/>
</p>
Samples an input and holds the last sampled value.

## 📝 Syntax

- Block type: zoh

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Samples an input and holds the last sampled value. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Discrete blocks | 
| Type | <code>zoh</code> | 
| Label | ZOH | 

  

<b>Description</b> 

Zero-Order Hold: holds the input constant for a sampling period (used in discrete-time systems). 

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
| Block type | zoh | 
| Family | Discrete blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears the stored output and schedules sampling. 
- OUTPUT emits the stored output. UPDATE samples when t reaches the next sample time. 
- ts is clamped to at least 0.001. 

<b>Equation or Rule</b> 
$$y(t) = u(t_k),\quad t_k \le t$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/zoh.cpp`



## 🔗 See also

[foh](../../nflow_blocks/discrete/foh.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md), [ddelay](../../nflow_blocks/discrete/ddelay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
