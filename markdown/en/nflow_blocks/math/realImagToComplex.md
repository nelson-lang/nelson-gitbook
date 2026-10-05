# realImagToComplex

Builds a complex signal from real and imaginary inputs.

## 📝 Syntax

- Block type: realImagToComplex

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Builds a complex signal from real and imaginary inputs. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math blocks | 
| Type | <code>realImagToComplex</code> | 
| Label | Re-Im to Complex | 

 

<b>Description</b> 

Combines input port 1 (real part) and input port 2 (imaginary part) into one complex output signal. 

Complexity is a per-port attribute orthogonal to the numeric type: the complex signal flows through the complex-aware math blocks (gain, sum, mult, divide, negate, conjugate) and the routing blocks, and back to real signals through <code>complexToRealImag</code>, <code>complexToMagnitudeAngle</code> or <code>abs</code> (magnitude). 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/complexOps.cpp`



## 🔗 See also

[complexToRealImag](../../nflow_blocks/math/complexToRealImag.md), [magnitudeAngleToComplex](../../nflow_blocks/math/magnitudeAngleToComplex.md), [conjugate](../../nflow_blocks/math/conjugate.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
