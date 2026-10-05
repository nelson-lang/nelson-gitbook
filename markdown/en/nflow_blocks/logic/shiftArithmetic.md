# shiftArithmetic


<p align="center">
<img src="shiftArithmetic.svg" width="72"/>
</p>
Arithmetic bit shift left/right by ShiftNumber (signed 64-bit).

## 📝 Syntax

- Block type: shiftArithmetic

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Arithmetic bit shift left/right by ShiftNumber (signed 64-bit). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Logic / Bit Operations | 
| Type | <code>shiftArithmetic</code> | 
| Label | Shift Arithmetic | 

  

<b>Description</b> 

Arithmetic bit shift of the integer-valued input. <code>ShiftDirection</code> = "Left" multiplies by 2^ShiftNumber; "Right" performs a sign-preserving arithmetic right shift (dividing by 2^ShiftNumber, rounding toward negative infinity). Values are treated as signed 64-bit integers; the left shift is computed through unsigned arithmetic to stay well-defined. Element-wise over the input width. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=90, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>ShiftDirection</code> | Left | 
| <code>ShiftNumber</code> | 1 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | shiftArithmetic | 
| Family | Logic / Bit Operations | 
| Rendered size | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: Left -> out = x << ShiftNumber; Right -> out = x >> ShiftNumber (arithmetic). 

<b>Equation or Rule</b> 
$$y = u \cdot 2^{\pm \text{ShiftNumber}}$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/shiftArithmetic.cpp`


## 💡 Example

Shift 5 left by 3 bits to get 40.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',5)), struct('id','s','type','shiftArithmetic','inputs',1,'outputs',1,'params',struct('ShiftDirection','Left','ShiftNumber',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','s','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md), [extractBits](../../nflow_blocks/logic/extractBits.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
