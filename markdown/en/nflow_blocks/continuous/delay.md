# delay


<p align="center">
<img src="delay.svg" width="192"/>
</p>
Delays a signal with a circular buffer.

## 📝 Syntax

- Block type: delay

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Delays a signal with a circular buffer. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Continuous blocks | 
| Type | <code>delay</code> | 
| Label | Delay | 

  

<b>Description</b> 

Continuous-time transport delay block. Delays the input signal by a specified time. 

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
| <code>delay</code> | 0.1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>delay</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | delay | 
| Family | Continuous blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT allocates a buffer from delay / dt with at least one sample. 
- OUTPUT emits the current delayed buffer value. UPDATE stores the current input and advances the index. 

<b>Equation or Rule</b> 
$$y(t) \approx u(t - delay)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/delay.cpp`



## 🔗 See also

[ddelay](../../nflow_blocks/discrete/ddelay.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md), [zoh](../../nflow_blocks/discrete/zoh.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
