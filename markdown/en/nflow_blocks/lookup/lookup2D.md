# lookup2D

2-D interpolated lookup table.

## 📝 Syntax

- Block type: lookup2D

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


2-D interpolated lookup table. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Lookup Tables | 
| Type | <code>lookup2D</code> | 
| Label | 2-D Lookup Table | 

 

<b>Description</b> 

Two inputs (row and column coordinates) index a static column-major matrix Table; bilinear / Flat / Nearest interpolation with Clip or Linear extrapolation. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/lookup2D.cpp`



## 🔗 See also

[lookup1D](../../nflow_blocks/lookup/lookup1D.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
