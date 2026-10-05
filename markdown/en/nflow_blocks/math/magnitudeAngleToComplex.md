# magnitudeAngleToComplex

Builds a complex signal from magnitude and angle inputs.

## 📝 Syntax

- Block type: magnitudeAngleToComplex

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Builds a complex signal from magnitude and angle inputs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>magnitudeAngleToComplex</code> | 
| Label | Mag-Angle to Complex | 

 

<b>Description</b> 

Combines input port 1 (magnitude) and input port 2 (angle, radians) into the complex signal <code>m*cos(a) + i*m*sin(a)</code>. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 See also

[complexToMagnitudeAngle](../../nflow_blocks/math/complexToMagnitudeAngle.md), [realImagToComplex](../../nflow_blocks/math/realImagToComplex.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
