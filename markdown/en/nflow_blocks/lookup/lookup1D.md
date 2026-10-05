# lookup1D

1-D interpolated lookup table.

## 📝 Syntax

- Block type: lookup1D

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


1-D interpolated lookup table. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Lookup Tables | 
| Type | <code>lookup1D</code> | 
| Label | 1-D Lookup Table | 

 

<b>Description</b> 

Interpolates a static breakpoints/table pair at the input value. InterpMethod selects Flat, Nearest, Linear point-slope or Linear Lagrange; ExtrapMethod selects Clip or Linear. Element-wise with scalar expansion. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/lookup1D.cpp`



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
