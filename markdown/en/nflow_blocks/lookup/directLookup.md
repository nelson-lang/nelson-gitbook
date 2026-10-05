# directLookup

Direct (n-D) lookup table without interpolation.

## 📝 Syntax

- Block type: directLookup

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Direct (n-D) lookup table without interpolation. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Lookup Tables | 
| Type | <code>directLookup</code> | 
| Label | Direct Lookup Table (n-D) | 

 

<b>Description</b> 

N integer index inputs select one element of a static column-major Table (Element mode). Per-dimension sizes come from TableDimensions; each index is rounded and clamped (zero-based). 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/directLookup.cpp`



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
