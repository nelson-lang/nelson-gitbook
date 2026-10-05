# bitClear


<p align="center">
<img src="bitClear.svg" width="72"/>
</p>
Clears the bit at position BitIndex of the integer input to 0.

## 📝 Syntax

- Block type: bitClear

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Clears the bit at position BitIndex of the integer input to 0. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Logic / Bit Operations | 
| Type | <code>bitClear</code> | 
| Label | Bit Clear | 

  

<b>Description</b> 

Clears a single bit (0-based <code>BitIndex</code>) of the integer-valued input to 0 by AND-ing with the complement of a one-bit mask. Values are reinterpreted as <code>NumBits</code>-wide unsigned integers. Element-wise over the input width. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>BitIndex</code> | 0 | 
| <code>NumBits</code> | 32 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | bitClear | 
| Family | Logic / Bit Operations | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = (x & ~(1 << BitIndex)) & fullmask. 

<b>Equation or Rule</b> 
$$y = u \,\&\, \overline{2^{\text{BitIndex}}}$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/bitClear.cpp`


## 💡 Example

Clear bit 3 of 8 (1000) to get 0.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',8)), struct('id','b','type','bitClear','inputs',1,'outputs',1,'params',struct('BitIndex',3,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','b','fromIndex',0,'toIndex',0), struct('from','b','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[bitSet](../../nflow_blocks/logic/bitSet.md), [bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
