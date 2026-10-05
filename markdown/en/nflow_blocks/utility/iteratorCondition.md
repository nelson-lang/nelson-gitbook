# iteratorCondition


<p align="center">
<img src="iteratorCondition.svg" width="72"/>
</p>
carries the continue predicate of a While Iterator subsystem

## 📝 Syntax

- Block type: iteratorCondition

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description
 

<b>Description</b> 

Placed inside a While Iterator subsystem, this block marks the boolean signal that decides whether the loop runs again. After each iteration the engine reads its input: a non-zero value continues the loop, a zero value stops it (do-while: the body always runs at least once, and the condition is evaluated after each pass). The loop is also bounded by the subsystem's <code>MaxIterations</code> safety cap. 

The input is mirrored on the output so the same signal can also drive a scope or probe. If no iteratorCondition block is present, or its input is unconnected, the While loop runs the full cap. 

<b>Input(s)</b> 

| Port | Role | Side | 
| --- | --- | --- | 
| Port\_1 | Continue predicate: non-zero keeps looping, zero stops. | left | 

 

<b>Output(s)</b> 

| Port | Role | Side | 
| --- | --- | --- | 
| Port\_1 | Mirror of the condition input (for probing). | right | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | iteratorCondition | 
| Family | Utility blocks | 
| Phases | ALGEBRAIC | 
| Code generation | native only (not generated) | 

 

See <b>For / While Iterator subsystems</b> for the full loop semantics. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/iterator.cpp`



## 🔗 See also

[iteratorNumber](../../nflow_blocks/utility/iteratorNumber.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
