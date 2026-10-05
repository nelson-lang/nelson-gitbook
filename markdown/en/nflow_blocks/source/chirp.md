# chirp


<p align="center">
<img src="chirp.svg" width="72"/>
</p>
Generates a sine chirp from f0 to f1.

## 📝 Syntax

- Block type: chirp

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Generates a sine chirp from f0 to f1. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>chirp</code> | 
| Label | Chirp | 

  

<b>Description</b> 

Frequency-swept sinusoidal signal (chirp) from f0 to f1 over a duration. 

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
| <code>f0</code> | 1 | 
| <code>f1</code> | 10 | 
| <code>k</code> | 1 | 
| <code>phase</code> | 0 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>f0</code> 
- <code>f1</code> 
- <code>k</code> 
- <code>phase</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | chirp | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- The native runtime derives k from f0, f1, and max(t1, 0.001). 
- The manifest k parameter is visual/configuration metadata; the native handler computes the sweep rate. 

<b>Equation or Rule</b> 
$$y = amp\,\sin\left(2\pi\left(f_0 t + \frac{1}{2} k t^2\right)\right)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/chirp.cpp`



## 🔗 See also

[sine](../../nflow_blocks/source/sine.md), [noise](../../nflow_blocks/source/noise.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
