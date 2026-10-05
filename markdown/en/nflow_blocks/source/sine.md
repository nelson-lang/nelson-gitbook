# sine


<p align="center">
<img src="sine.svg" width="192"/>
</p>
Generates a sinusoidal signal.

## 📝 Syntax

- Block type: sine

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Generates a sinusoidal signal. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>sine</code> | 
| Label | Sine | 

  

<b>Description</b> 

Sinusoidal source with amplitude, frequency and phase. 

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
| <code>freq</code> | 1 | 
| <code>phase</code> | 0 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>amp</code> 
- <code>freq</code> 
- <code>phase</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | sine | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- Uses amp, freq, phase, and simulation time. 

<b>Equation or Rule</b> 
$$y = amp\,\sin(2\pi\,freq\,t + phase)$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/sine.cpp`



## 🔗 See also

[chirp](../../nflow_blocks/source/chirp.md), [noise](../../nflow_blocks/source/noise.md), [clock](../../nflow_blocks/source/clock.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
