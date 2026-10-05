# demux


<p align="center">
<img src="demux.svg" width="192"/>
</p>
Routes one input to multiple output ports.

## 📝 Syntax

- Block type: demux

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 2 output port(s) declared.

## 📄 Description


Routes one input to multiple output ports. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility blocks | 
| Type | <code>demux</code> | 
| Label | Demux | 

  

<b>Description</b> 

Virtual routing block that splits a single input into multiple output ports. The demux block performs no computation - it is a wiring convenience used to fan out signals and organise connections. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=20 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=8, y=10 | 
| Port\_2 | Numeric signal produced by the block. | right | x=8, y=30 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>outputs</code> | 2 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>outputs</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | demux | 
| Family | Utility blocks | 
| Rendered size | 8 x 40 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- The manifest controls the output count. 
- The block is a graph routing utility rather than a stateful numeric transform. 

<b>Equation or Rule</b> 
$$y_i = u$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


## 🔗 See also

[mux](../../nflow_blocks/utility/mux.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
