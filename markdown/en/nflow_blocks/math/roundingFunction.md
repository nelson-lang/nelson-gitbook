# roundingFunction

Rounds the input to an integer value.

## 📝 Syntax

- Block type: roundingFunction

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Rounds the input to an integer value. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>roundingFunction</code> | 
| Label | Rounding Function | 

 

<b>Description</b> 

Applies the rounding mode selected by the <code>Operator</code> parameter, element-wise, with scalar expansion for vector signals. 

<b>Operator</b> 

<code>floor</code>: round toward minus infinity. 

<code>ceil</code>: round toward plus infinity. 

<code>round</code>: round to the nearest integer, ties away from zero. 

<code>fix</code>: truncate toward zero. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/roundingFunction.cpp`



## 🔗 See also

[sign](../../nflow_blocks/math/sign.md), [sqrt](../../nflow_blocks/math/sqrt.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
