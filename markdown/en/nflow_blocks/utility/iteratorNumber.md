# iteratorNumber


<p align="center">
<img src="iteratorNumber.svg" width="72"/>
</p>
outputs the current iteration index inside a For/While iterator subsystem

## 📝 Syntax

- Block type: iteratorNumber

## 📥 Input argument

- input ports - 0 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description
 

<b>Description</b> 

Placed inside a For Iterator or While Iterator subsystem, this source block outputs the current iteration index of the enclosing loop: 1 on the first pass, 2 on the second, and so on. Outside an iterator subsystem it outputs 0. 

The value lets the body of the loop depend on which pass is running (for example, building a running sum, or forming a loop-termination condition for a While Iterator). 

<b>Output(s)</b> 

| Port | Role | Side | 
| --- | --- | --- | 
| Port\_1 | Current 1-based iteration index (0 outside an iterator body). | right | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | iteratorNumber | 
| Family | Utility blocks | 
| Phases | OUTPUT | 
| Code generation | native only (not generated) | 

 

See <b>For / While Iterator subsystems</b> for the full loop semantics. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/iterator.cpp`



## 🔗 See also

[iteratorCondition](../../nflow_blocks/utility/iteratorCondition.md), [subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
