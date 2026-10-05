# toWorkspace


<p align="center">
<img src="toWorkspace.svg" width="72"/>
</p>
Writes the input signal to a Nelson workspace variable.

## 📝 Syntax

- Block type: toWorkspace

## 📥 Input argument

- input ports - 1 input port (scalar or vector, any signal type).

## 📄 Description


Accumulates its input signal at major simulation steps and, when the simulation stops, writes it into the base-workspace variable <code>VariableName</code>.  

<code>Decimation</code> keeps one sample out of k (starting with the first). <code>MaxDataPoints</code> keeps only the last N decimated samples (<code>inf</code> keeps everything). <code>SaveFormat</code> selects the variable layout: 

- <code>Structure With Time</code>: fields <code>time</code>, <code>signals.values</code> (NxW), <code>signals.dimensions</code>, <code>signals.label</code>, <code>blockName</code>; 
- <code>Structure</code>: same with an empty <code>time</code>; 
- <code>Array</code>: NxW matrix of samples (use the simulation time grid for timing). 

In generated code the block is a no-op (workspace logging has no meaning there). 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>VariableName</code> | simout | 
| <code>MaxDataPoints</code> | inf | 
| <code>Decimation</code> | 1 | 
| <code>SaveFormat</code> | Structure With Time | 
| <code>SampleTime</code> | -1 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | toWorkspace | 
| Family | Sink blocks | 
| Phases | INIT, AFTER\_STEP | 
| Signal data type | any (recorded as double) | 
| Code generation | no-op | 

 

Code generation: supported for C and Rust. 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/toWorkspace.cpp`


## 💡 Example

Open the To Workspace demo (logs a sine to 'simout')

```matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow']);
```


## 🔗 See also

[fromWorkspace](../../nflow_blocks/source/fromWorkspace.md), [scope](../../nflow_blocks/sink/scope.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
