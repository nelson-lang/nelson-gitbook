# busCreator

Groups heterogeneous signals (or nested buses) into one bus.

## 📝 Syntax

- Block type: busCreator

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Groups heterogeneous signals (or nested buses) into one bus. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility blocks | 
| Type | <code>busCreator</code> | 
| Label | Bus Creator | 

 

<b>Description</b> 

Packs its input signals into one bus signal. Member names come from the <code>MemberNames</code> parameter (default <code>signalN</code>); an input that is itself a bus becomes a nested member. 

A named <code>BusType</code> (declared in the model-level <code>busTypes</code> array) validates the member layout; <code>NonVirtual</code> marks the bus for struct emission at the generated-code interface. Members keep their full descriptor: numeric type (including exact int64/uint64), complexity and N-D shape. 

Bus members are extracted by path with the <code>busSelector</code> block; a bus wired to any other block is a compile-time error. 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/busCreator.cpp`



## 🔗 See also

[busSelector](../../nflow_blocks/utility/busSelector.md), [mux](../../nflow_blocks/utility/mux.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
