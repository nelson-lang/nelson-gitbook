# noise


<p align="center">
<img src="noise.svg" width="192"/>
</p>
Generates deterministic pseudo-random noise.

## 📝 Syntax

- Block type: noise

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Generates deterministic pseudo-random noise. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>noise</code> | 
| Label | Noise | 

  

<b>Description</b> 

Generates white noise with configurable amplitude. 

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
| <code>amp</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>amp</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | noise | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- Updates rngState with a linear congruential generator and maps it to approximately [-amp, amp]. 
- The initial rngState is 1. 

<b>Equation or Rule</b> 
$$y = amp\left(\frac{2\,rng}{4294967295} - 1\right)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/noise.cpp`



## 🔗 See also

[sine](../../nflow_blocks/source/sine.md), [chirp](../../nflow_blocks/source/chirp.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
