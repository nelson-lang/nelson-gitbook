# functionCallGenerator

Drives a function-call subsystem a fixed number of times per step.

## 📝 Syntax

- Block type: functionCallGenerator

## 📥 Input argument

- input ports - None.

## 📤 Output argument

- output ports - 1 event output: wire it to the control port of a function-call subsystem.

## 📄 Description


Drives a function-call subsystem a fixed number of times per step. 

On each major step the generator invokes every function-call subsystem wired to its event output, running each one <code>NumberOfIterations</code> times (its ALGEBRAIC pass followed by an immediate internal UPDATE). This is caller-driven execution: the callee runs on demand, outside the normal topological schedule, rather than once per step like an ordinary block. A function-call subsystem is a subsystem whose control port kind is <code>functionCall</code>. 

Function-call subsystems require the default (discrete / fixed-step) engine; selecting an explicit continuous solver is rejected in this version. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>NumberOfIterations</code> | 1 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | functionCallGenerator | 
| Family | Utility blocks | 
| Phases | ALGEBRAIC | 

 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust.


## 🔗 See also

[subsystem](../../nflow_blocks/utility/subsystem.md), [merge](../../nflow_blocks/utility/merge.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
