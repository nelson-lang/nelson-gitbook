# dotProduct

Dot product of two vector inputs.

## 📝 Syntax

- Block type: dotProduct

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Dot product of two vector inputs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>dotProduct</code> | 
| Label | Dot Product | 

 

<b>Description</b> 

Computes the sum over i of a[i]\*b[i] for the two vector inputs and outputs the scalar result. 

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
