# backlash


<p align="center">
<img src="backlash.svg" width="72"/>
</p>
Models backlash with a dead band around the previous output.

## 📝 Syntax

- Block type: backlash

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Models backlash with a dead band around the previous output. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Nonlinear blocks | 
| Type | <code>backlash</code> | 
| Label | Backlash | 

  

<b>Description</b> 

Models mechanical backlash (deadband / play) behavior. The output sticks until input moves past a width. 

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
| <code>width</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>width</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | backlash | 
| Family | Nonlinear blocks | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears the stored output. 
- OUTPUT emits the stored value. UPDATE moves only when the input leaves width / 2 around the stored value. 
- width is clamped to a nonnegative value. 

<b>Equation or Rule</b> 

y follows u outside the +/- width/2 band 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/backlash.cpp`



## 🔗 See also

[deadZone](../../nflow_blocks/nonlinear/deadZone.md), [saturation](../../nflow_blocks/nonlinear/saturation.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
