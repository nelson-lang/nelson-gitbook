# sign

Signum of the input (-1, 0 or +1).

## 📝 Syntax

- Block type: sign

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Signum of the input (-1, 0 or +1). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>sign</code> | 
| Label | Sign | 

 

<b>Description</b> 

Returns <code>-1</code> when the input is negative, <code>0</code> when it is zero and <code>+1</code> when it is positive, element-wise with scalar expansion for vector signals. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/sign.cpp`



## 🔗 See also

[abs](../../nflow_blocks/math/abs.md), [roundingFunction](../../nflow_blocks/math/roundingFunction.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
