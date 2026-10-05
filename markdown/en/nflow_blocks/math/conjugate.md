# conjugate

Complex conjugate of the input signal.

## 📝 Syntax

- Block type: conjugate

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Complex conjugate of the input signal. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>conjugate</code> | 
| Label | Conjugate | 

 

<b>Description</b> 

Outputs <code>conj(z)</code>; for a real input the block is the identity. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 See also

[realImagToComplex](../../nflow_blocks/math/realImagToComplex.md), [complexToRealImag](../../nflow_blocks/math/complexToRealImag.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
