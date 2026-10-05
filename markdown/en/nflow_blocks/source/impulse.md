# impulse


<p align="center">
<img src="impulse.svg" width="72"/>
</p>
Outputs an impulse at a configured time.

## 📝 Syntax

- Block type: impulse

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs an impulse at a configured time. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>impulse</code> | 
| Label | Impulse | 

  

<b>Description</b> 

Generates an impulse (approximate Dirac) at a given time with specified amplitude. 

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
| <code>time</code> | 0 | 
| <code>amp</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>time</code> 
- <code>amp</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | impulse | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- The output is amp when abs(t - time) <= dt / 2, otherwise 0. 

<b>Equation or Rule</b> 
$$y = \begin{cases} amp, & t \approx time \\ 0, & \mathrm{otherwise} \end{cases}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/impulse.cpp`



## 🔗 See also

[step](../../nflow_blocks/source/step.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
