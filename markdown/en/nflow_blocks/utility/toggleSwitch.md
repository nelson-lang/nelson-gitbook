# toggleSwitch


<p align="center">
<img src="toggleSwitch.svg" width="72"/>
</p>
Outputs one of two configured values from state.

## 📝 Syntax

- Block type: toggleSwitch

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs one of two configured values from state. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility blocks | 
| Type | <code>toggleSwitch</code> | 
| Label | Toggle Switch | 

  

<b>Description</b> 

Two-state toggle source. The block has no inputs and a single output that 

<b>Ports</b> 

<b>Input(s)</b> 

This block declares no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=25 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>state</code> | 0 | 
| <code>onLabel</code> | ON | 
| <code>offLabel</code> | OFF | 
| <code>onValue</code> | 1 | 
| <code>offValue</code> | 0 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>state</code> 
- <code>onLabel</code> 
- <code>offLabel</code> 
- <code>onValue</code> 
- <code>offValue</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | toggleSwitch | 
| Family | Utility blocks | 
| Rendered size | 80 x 50 | 
| Phases | OUTPUT | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT block with no inputs. 
- Nonzero state outputs onValue; zero state outputs offValue. 
- onLabel and offLabel affect UI labels only. 

<b>Equation or Rule</b> 
$$y = \begin{cases} onValue, & state \ne 0 \\ offValue, & state = 0 \end{cases}$$
 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/toggleSwitch.cpp`



## 🔗 See also

[switch](../../nflow_blocks/utility/switch.md), [constant](../../nflow_blocks/source/constant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
