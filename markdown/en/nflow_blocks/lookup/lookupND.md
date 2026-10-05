# lookupND

n-D interpolated lookup table.

## 📝 Syntax

- Block type: lookupND

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


n-D interpolated lookup table. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Lookup Tables | 
| Type | <code>lookupND</code> | 
| Label | n-D Lookup Table | 

 

<b>Description</b> 

N inputs (one coordinate per dimension, NumberOfTableDimensions) index a static column-major Table; multilinear interpolation as the weighted blend of the 2^N corners. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/lookupND.cpp`



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
