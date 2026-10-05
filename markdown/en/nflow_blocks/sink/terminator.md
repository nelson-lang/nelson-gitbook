# terminator


<p align="center">
<img src="terminator.svg" width="72"/>
</p>
Consumes an intentionally unused signal.

## 📝 Syntax

- Block type: terminator

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📄 Description


Consumes an intentionally unused signal. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Sink blocks | 
| Type | <code>terminator</code> | 
| Label | Terminator | 

  

<b>Description</b> 

Consumes a signal that is intentionally unused. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=20 | 

 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

No block parameters are declared in the manifest. 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | terminator | 
| Family | Sink blocks | 
| Rendered size | 40 x 40 | 
| Phases | none | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- No computation and no output ports. 
- Used to make unused signal ends explicit. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/terminator.cpp`



## 🔗 See also

[display](../../nflow_blocks/sink/display.md), [scope](../../nflow_blocks/sink/scope.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
