# productOfElements

Product of the elements of a vector input.

## 📝 Syntax

- Block type: productOfElements

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Product of the elements of a vector input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>productOfElements</code> | 
| Label | Product of Elements | 

 

<b>Description</b> 

Multiplies all elements of the vector input and outputs the scalar result. A scalar input passes through unchanged. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/matrix/vectorMath.cpp`



## 🔗 See also

[sum](../../nflow_blocks/math/sum.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
