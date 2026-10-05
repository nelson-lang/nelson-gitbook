# mathFunction

Mathematical function of the input.

## 📝 Syntax

- Block type: mathFunction

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Mathematical function of the input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>mathFunction</code> | 
| Label | Math Function | 

 

<b>Description</b> 

Applies the mathematical function selected by the <code>Function</code> parameter, element-wise, with scalar expansion for vector signals. 

<b>Function</b> 

Single-input values: <code>exp</code>, <code>log</code>, <code>10^u</code> (10 raised to the input), <code>log10</code>, <code>square</code> (u\*u), <code>sqrt</code>, <code>reciprocal</code> (1/u). 

Two-input values (u1 on port 1, u2 on port 2): <code>pow</code> (u1^u2), <code>hypot</code> (sqrt(u1^2+u2^2)), <code>rem</code> (remainder with the sign of u1), <code>mod</code> (modulo with the sign of u2, mod(u1,0)=u1). 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/mathFunction.cpp`



## 🔗 See also

[trigFunction](../../nflow_blocks/math/trigFunction.md), [sqrt](../../nflow_blocks/math/sqrt.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
