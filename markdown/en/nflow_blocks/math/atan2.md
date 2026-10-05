# atan2

Four-quadrant arctangent of the two inputs.

## 📝 Syntax

- Block type: atan2

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Four-quadrant arctangent of the two inputs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>atan2</code> | 
| Label | Atan2 | 

 

<b>Description</b> 

Computes <code>atan2(y, x)</code> element-wise, with <code>y</code> on input port 1 and <code>x</code> on input port 2. 

The result is the angle in radians in the range (-pi, pi]. Vector signals are processed element by element with scalar expansion. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/atan2.cpp`



## 🔗 See also

[abs](../../nflow_blocks/math/abs.md), [divide](../../nflow_blocks/math/divide.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
