# trigFunction

Trigonometric function of the input.

## 📝 Syntax

- Block type: trigFunction

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Trigonometric function of the input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>trigFunction</code> | 
| Label | Trigonometric Function | 

 

<b>Description</b> 

Applies the trigonometric function selected by the <code>Function</code> parameter, element-wise, with scalar expansion for vector signals. Angles are expressed in radians. 

<b>Function</b> 

Single-input values: <code>sin</code>, <code>cos</code>, <code>tan</code>, <code>asin</code>, <code>acos</code>, <code>atan</code>, <code>sinh</code>, <code>cosh</code>, <code>tanh</code>, <code>asinh</code>, <code>acosh</code>, <code>atanh</code>. 

<code>atan2</code> uses two inputs: <code>atan2(u1, u2)</code> with u1 on port 1 and u2 on port 2. <code>sincos</code> produces two outputs: sin(u) on port 1 and cos(u) on port 2. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/trigFunction.cpp`



## 🔗 See also

[atan2](../../nflow_blocks/math/atan2.md), [sqrt](../../nflow_blocks/math/sqrt.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
