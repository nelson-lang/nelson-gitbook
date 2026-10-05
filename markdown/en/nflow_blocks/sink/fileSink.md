# fileSink


<p align="center">
<img src="fileSink.svg" width="72"/>
</p>
Represents a file output sink.

## 📝 Syntax

- Block type: fileSink

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📄 Description


Represents a file output sink. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Sink blocks | 
| Type | <code>fileSink</code> | 
| Label | Output File | 

  

<b>Description</b> 

Writes simulation outputs to a CSV file path. Acts as a sink with file output behavior. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>path</code> | output.csv | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>path</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | fileSink | 
| Family | Sink blocks | 
| Rendered size | 80 x 80 | 
| Phases | none | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT: truncates the CSV file (FileName parameter) and writes the header "t,<id>" (one column per input element for a vector signal). 
- AFTER\_STEP: appends one row per sample (time then input values); the file is opened and closed per phase so a cancelled run keeps every row written so far. 
- Generated code carries no file I/O: the block becomes a model-output column of the generated runner's CSV (tagged with the block id). 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/fileSink.cpp`



## 🔗 See also

[scope](../../nflow_blocks/sink/scope.md), [display](../../nflow_blocks/sink/display.md), [fileSource](../../nflow_blocks/source/fileSource.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
