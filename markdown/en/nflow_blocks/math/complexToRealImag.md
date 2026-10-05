# complexToRealImag

Splits a complex signal into real and imaginary outputs.

## 📝 Syntax

- Block type: complexToRealImag

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 2 output port(s) declared.

## 📄 Description


Splits a complex signal into real and imaginary outputs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>complexToRealImag</code> | 
| Label | Complex to Re-Im | 

 

<b>Description</b> 

Output port 1 carries the real part and output port 2 the imaginary part of the complex input signal. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 See also

[realImagToComplex](../../nflow_blocks/math/realImagToComplex.md), [complexToMagnitudeAngle](../../nflow_blocks/math/complexToMagnitudeAngle.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
