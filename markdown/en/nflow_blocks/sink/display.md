# display


<p align="center">
<img src="display.svg" width="192"/>
</p>
Stores the latest input value for display.

## 📝 Syntax

- Block type: display

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📄 Description


Stores the latest input value for display. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Sink blocks | 
| Type | <code>display</code> | 
| Label | Display | 

  

<b>Description</b> 

The Display block shows a single scalar value during simulation. It's intended for quick inspection of signals (numeric outputs) in the diagram. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=30 | 

 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>label</code> | Display | 
| <code>format</code> | short | 
| <code>decimation</code> | 1 | 
| <code>floatingDisplay</code> | false | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>label</code> 
- <code>format</code> 
- <code>decimation</code> 
- <code>floatingDisplay</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | display | 
| Family | Sink blocks | 
| Rendered size | 120 x 60 | 
| Phases | INIT, AFTER\_STEP | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears the stored scalar. 
- AFTER\_STEP samples input 1 according to decimation; values below 1 behave as 1. 
- The block has no output ports. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/display.cpp`



## 🔗 See also

[scope](../../nflow_blocks/sink/scope.md), [terminator](../../nflow_blocks/sink/terminator.md), [fileSink](../../nflow_blocks/sink/fileSink.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
