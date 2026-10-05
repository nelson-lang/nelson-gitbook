# multiportSwitch

Routes one of several data inputs to the output, selected by a control input.

## 📝 Syntax

- Block type: multiportSwitch

## 📥 Input argument

- input ports - 1 control + N data input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Routes one of several data inputs to the output, selected by a control input. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility | 
| Type | <code>multiportSwitch</code> | 
| Label | Multiport Switch | 

 

<b>Description</b> 

Input port 1 is the control; the remaining ports are data inputs. The control is rounded and clamped to the number of data ports (one-based), and the selected data input is copied to the output element-wise. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/multiportSwitch.cpp`



## 🔗 See also

[mux](../../nflow_blocks/utility/mux.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
