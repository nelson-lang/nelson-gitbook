# complexToMagnitudeAngle

Outputs the magnitude and angle of a complex signal.

## 📝 Syntax

- Block type: complexToMagnitudeAngle

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 2 output port(s) declared.

## 📄 Description


Outputs the magnitude and angle of a complex signal. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>complexToMagnitudeAngle</code> | 
| Label | Complex to Mag-Angle | 

 

<b>Description</b> 

Output port 1 carries the magnitude <code>abs(z)</code> and output port 2 the four-quadrant angle <code>atan2(imag(z), real(z))</code> of the complex input. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 See also

[magnitudeAngleToComplex](../../nflow_blocks/math/magnitudeAngleToComplex.md), [atan2](../../nflow_blocks/math/atan2.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
