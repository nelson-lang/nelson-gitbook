# xyzScope


<p align="center">
<img src="xyzScope.svg" width="72"/>
</p>
Stores X/Y/Z samples for 3D display.

## 📝 Syntax

- Block type: xyzScope

## 📥 Input argument

- input ports - 3 input port(s) declared.

## 📄 Description


Stores X/Y/Z samples for 3D display. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Sink blocks | 
| Type | <code>xyzScope</code> | 
| Label | XYZ Scope | 

  

<b>Description</b> 

3D scope for plotting three time-series components. Includes rotation parameters for 3D view. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=50 | 
| Port\_2 | Numeric signal read by the block. | left | x=0, y=90 | 
| Port\_3 | Numeric signal read by the block. | left | x=0, y=130 | 

 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>xMin</code> |  | 
| <code>xMax</code> |  | 
| <code>yMin</code> |  | 
| <code>yMax</code> |  | 
| <code>zMin</code> |  | 
| <code>zMax</code> |  | 
| <code>width</code> | 220 | 
| <code>height</code> | 180 | 
| <code>rotationX</code> | 30 | 
| <code>rotationY</code> | 45 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>xMin</code> 
- <code>xMax</code> 
- <code>yMin</code> 
- <code>yMax</code> 
- <code>zMin</code> 
- <code>zMax</code> 
- <code>width</code> 
- <code>height</code> 
- <code>rotationX</code> 
- <code>rotationY</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | xyzScope | 
| Family | Sink blocks | 
| Rendered size | 220 x 180 | 
| Phases | INIT, AFTER\_STEP | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT clears xSeries, ySeries, and zSeries. 
- AFTER\_STEP appends the three inputs; missing inputs append NaN. 
- The block has no outputs. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/xyzScope.cpp`



## 🔗 See also

[scope](../../nflow_blocks/sink/scope.md), [xyScope](../../nflow_blocks/sink/xyScope.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
