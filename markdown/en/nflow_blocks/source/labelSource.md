# labelSource


<p align="center">
<img src="labelSource.svg" width="72"/>
</p>
Reads a signal from a matching labelSink.

## 📝 Syntax

- Block type: labelSource

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Reads a signal from a matching labelSink. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>labelSource</code> | 
| Label | Label | 

  

<b>Description</b> 

Provides a named signal that can be routed to a corresponding Label Sink or exported as an external input label. 

<b>Ports</b> 

<b>Input(s)</b> 

This block declares no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=40, y=20 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>name</code> | x | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>name</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | labelSource | 
| Family | Source blocks | 
| Rendered size | 40 x 40 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block. 
- Looks up a labelSink with the same name and forwards that sink input when available. 
- If the name or connection is missing, the output is not changed. 

<b>Equation or Rule</b> 
$$y = \mathrm{labeled\ signal}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/labelSource.cpp`



## 🔗 See also

[labelSink](../../nflow_blocks/sink/labelSink.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
