# mux


<p align="center">
<img src="mux.svg" width="192"/>
</p>
Groups multiple input routes into one output route.

## 📝 Syntax

- Block type: mux

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Groups multiple input routes into one output route. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility blocks | 
| Type | <code>mux</code> | 
| Label | Mux | 

  

<b>Description</b> 

Virtual routing block that multiplexes several input ports onto a single output. The mux block performs no mathematical computation - it is a wiring convenience used to group and re-route signals. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=10 | 
| Port\_2 | Numeric signal read by the block. | left | x=0, y=30 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=8, y=20 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>inputs</code> | 2 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>inputs</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | mux | 
| Family | Utility blocks | 
| Rendered size | 8 x 40 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- The inputs parameter controls the exposed input count. 
- Used as a graph routing utility rather than a stateful numeric transform. 

<b>Equation or Rule</b> 

output route carries configured inputs 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


## 🔗 See also

[demux](../../nflow_blocks/utility/demux.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
