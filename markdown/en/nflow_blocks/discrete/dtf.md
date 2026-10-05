# dtf


<p align="center">
<img src="dtf.svg" width="192"/>
</p>
Implements a discrete transfer function.

## 📝 Syntax

- Block type: dtf

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Implements a discrete transfer function. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Discrete blocks | 
| Type | <code>dtf</code> | 
| Label | Discrete TF | 

  

<b>Description</b> 

Discrete-time transfer function block (z-domain) defined by numerator and denominator polynomials and a sample time. 

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
| <code>num</code> | [1] | 
| <code>den</code> | [1, -0.5] | 
| <code>ts</code> | 0.1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>num</code> 
- <code>den</code> 
- <code>ts</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dtf | 
| Family | Discrete blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT normalizes numerator and denominator by den[0] and clears histories. 
- OUTPUT emits the stored output. UPDATE samples at ts, shifts histories, and evaluates the recurrence. 
- Empty numerator defaults to [0], empty denominator to [1], and ts is at least 0.001. 

<b>Equation or Rule</b> 

discrete transfer-function recurrence 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/dtf.cpp`



## 🔗 See also

[dstateSpace](../../nflow_blocks/discrete/dstateSpace.md), [tf](../../nflow_blocks/continuous/tf.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
