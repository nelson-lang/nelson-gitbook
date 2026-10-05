# scope


<p align="center">
<img src="scope.svg" width="72"/>
</p>
Stores time-series samples for display.

## 📝 Syntax

- Block type: scope

## 📥 Input argument

- input ports - 3 input port(s) declared.

## 📄 Description


Stores time-series samples for display. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Sink blocks | 
| Type | <code>scope</code> | 
| Label | Scope | 

  

<b>Description</b> 

Multi-channel oscilloscope-style visualizer for time-series signals. Shows series over time with optional axis limits. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 
| Port\_2 | Numeric signal read by the block. | left | x=0, y=80 | 
| Port\_3 | Numeric signal read by the block. | left | x=0, y=120 | 

 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>tMin</code> |  | 
| <code>tMax</code> |  | 
| <code>yMin</code> |  | 
| <code>yMax</code> |  | 
| <code>width</code> | 220 | 
| <code>height</code> | 160 | 
| <code>showTickLabels</code> | false | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>tMin</code> 
- <code>tMax</code> 
- <code>yMin</code> 
- <code>yMax</code> 
- <code>width</code> 
- <code>height</code> 
- <code>showTickLabels</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | scope | 
| Family | Sink blocks | 
| Rendered size | 220 x 160 | 
| Phases | INIT, AFTER\_STEP | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears stored series. 
- AFTER\_STEP appends one value per declared input; missing inputs append NaN. 
- The block has no outputs. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/scope.cpp`



## 🔗 See also

[xyScope](../../nflow_blocks/sink/xyScope.md), [xyzScope](../../nflow_blocks/sink/xyzScope.md), [display](../../nflow_blocks/sink/display.md), [fileSink](../../nflow_blocks/sink/fileSink.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
