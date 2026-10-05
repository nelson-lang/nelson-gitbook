# fileSource


<p align="center">
<img src="fileSource.svg" width="192"/>
</p>
Outputs values from preloaded times and values arrays.

## 📝 Syntax

- Block type: fileSource

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs values from preloaded times and values arrays. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source blocks | 
| Type | <code>fileSource</code> | 
| Label | File | 

  

<b>Description</b> 

Reads values from a CSV file and supplies them as a time series source. 

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
| <code>path</code> |  | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>path</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | fileSource | 
| Family | Source blocks | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT copies numeric params.times and params.values into state and resets the index. 
- OUTPUT returns 0 when data is empty; otherwise it advances to the latest time not greater than t. 
- path is configuration metadata for loading; the native handler consumes preloaded arrays. 

<b>Equation or Rule</b> 
$$y = values_{index(t)}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/fileSource.cpp`



## 🔗 See also

[fileSink](../../nflow_blocks/sink/fileSink.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
