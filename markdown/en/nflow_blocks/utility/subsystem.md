# subsystem


<p align="center">
<img src="subsystem.svg" width="72"/>
</p>
Runs a nested block diagram as a single block.

## 📝 Syntax

- Block type: subsystem

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Runs a nested block diagram as a single block. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility blocks | 
| Type | <code>subsystem</code> | 
| Label | Subsystem | 

  

<b>Description</b> 

A container block that embeds another diagram as a reusable subsystem. Supports external input/output mapping. 

<b>For-each</b> 

With a <code>forEach</code> parameter <code>{"numIterations": N, "partition": [ports]}</code> the subsystem runs its body <code>N</code> times per step: a partitioned input of width <code>N * w</code> feeds iteration <code>i</code> its <code>i</code>-th width-<code>w</code> slice, an unpartitioned input is broadcast to every iteration, and each inner output of width <code>w_out</code> is concatenated into an outer output of width <code>N * w_out</code>. This applies one reusable sub-diagram element-wise across a vector or channel bank. The body may carry per-iteration state, discrete (a unit delay or discrete filter) or continuous (an integrator or transfer function integrated by the solver): each iteration keeps independent history / integrates its own channel. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=120, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>name</code> | Subsystem | 
| <code>externalInputs</code> | [] | 
| <code>externalOutputs</code> | [] | 
| <code>subsystem</code> |  | 
| <code>forEach</code> | [] (no iteration) | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>name</code> 
- <code>externalInputs</code> 
- <code>externalOutputs</code> 
- <code>subsystem</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | subsystem | 
| Family | Utility blocks | 
| Rendered size | 120 x 80 | 
| Phases | INIT, OUTPUT, ALGEBRAIC, UPDATE | 
| Direct feedthrough | yes | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT builds inner state from the subsystem specification and schedules inner blocks by phase. 
- OUTPUT routes external inputs, runs inner output blocks, and copies external outputs. 
- ALGEBRAIC evaluates inner algebraic blocks; UPDATE advances inner update blocks. 

<b>Equation or Rule</b> 

nested model execution 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


## 🔗 See also

[mux](../../nflow_blocks/utility/mux.md), [demux](../../nflow_blocks/utility/demux.md), [comment](../../nflow_blocks/utility/comment.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
