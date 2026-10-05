# sqrt

Square-root family of the input.

## 📝 Syntax

- Block type: sqrt

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Square-root family of the input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>sqrt</code> | 
| Label | Sqrt | 

 

<b>Description</b> 

Applies the square-root variant selected by the <code>Function</code> parameter, element-wise, with scalar expansion for vector signals. 

<b>Function</b> 

<code>sqrt</code>: square root <code>sqrt(u)</code> (a negative input yields NaN on the real path). 

<code>signedSqrt</code>: signed square root <code>sign(u)*sqrt(|u|)</code> (always real). 

<code>rSqrt</code>: reciprocal square root <code>1/sqrt(u)</code>. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/sqrt.cpp`



## 🔗 See also

[abs](../../nflow_blocks/math/abs.md), [sign](../../nflow_blocks/math/sign.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
