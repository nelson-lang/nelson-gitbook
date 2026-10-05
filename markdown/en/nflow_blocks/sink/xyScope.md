# xyScope


<p align="center">
<img src="xyScope.svg" width="72"/>
</p>
Stores paired X/Y samples for display.

## 📝 Syntax

- Block type: xyScope

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📄 Description


Stores paired X/Y samples for display. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Sink blocks | 
| Type | <code>xyScope</code> | 
| Label | XY Scope | 

  

<b>Description</b> 

XY plot scope: plots two inputs against each other (X vs Y) to visualize phase portraits or Lissajous curves. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=50 | 
| Port\_2 | Numeric signal read by the block. | left | x=0, y=110 | 

 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>xMin</code> |  | 
| <code>xMax</code> |  | 
| <code>yMin</code> |  | 
| <code>yMax</code> |  | 
| <code>width</code> | 220 | 
| <code>height</code> | 160 | 
| <code>showTickLabels</code> | false | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>xMin</code> 
- <code>xMax</code> 
- <code>yMin</code> 
- <code>yMax</code> 
- <code>width</code> 
- <code>height</code> 
- <code>showTickLabels</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | xyScope | 
| Family | Sink blocks | 
| Rendered size | 220 x 160 | 
| Phases | INIT, AFTER\_STEP | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears xSeries and ySeries. 
- AFTER\_STEP appends input 1 to xSeries and input 2 to ySeries; missing inputs append NaN. 
- The block has no outputs. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/xyScope.cpp`



## 🔗 See also

[scope](../../nflow_blocks/sink/scope.md), [xyzScope](../../nflow_blocks/sink/xyzScope.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
