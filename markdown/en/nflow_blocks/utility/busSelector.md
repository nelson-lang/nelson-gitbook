# busSelector

Extracts members from a bus by path.

## 📝 Syntax

- Block type: busSelector

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 2 output port(s) declared.

## 📄 Description


Extracts members from a bus by path. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility blocks | 
| Type | <code>busSelector</code> | 
| Label | Bus Selector | 

 

<b>Description</b> 

Reads its bus input and emits one output port per entry of the <code>SelectedSignals</code> parameter. Paths address nested buses with dots (<code>sub.a</code>); a selected member that is itself a bus yields a bus-typed output. 

Each output adopts the member’s full descriptor (type, complexity, N-D shape). An unknown path is a compile-time error listing the available members. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/busSelector.cpp`



## 🔗 See also

[busCreator](../../nflow_blocks/utility/busCreator.md), [demux](../../nflow_blocks/utility/demux.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
