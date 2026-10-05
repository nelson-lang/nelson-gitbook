# extractBits


<p align="center">
<img src="extractBits.svg" width="72"/>
</p>
Extracts NumBitsToExtract bits starting at StartBit, right-aligned.

## 📝 Syntax

- Block type: extractBits

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Extracts NumBitsToExtract bits starting at StartBit, right-aligned. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Logic / Bit Operations | 
| Type | <code>extractBits</code> | 
| Label | Extract Bits | 

  

<b>Description</b> 

Extracts a contiguous field of <code>NumBitsToExtract</code> bits starting at bit <code>StartBit</code> (0-based, LSB) from the integer-valued input and right-aligns it in the output. Values are reinterpreted as <code>NumBits</code>-wide unsigned integers. Element-wise over the input width. 

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
| <code>StartBit</code> | 0 | 
| <code>NumBitsToExtract</code> | 8 | 
| <code>NumBits</code> | 32 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | extractBits | 
| Family | Logic / Bit Operations | 
| Rendered size | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = (x >> StartBit) & ((1 << NumBitsToExtract) - 1). 

<b>Equation or Rule</b> 
$$y = (u \gg \text{StartBit}) \,\&\, (2^{\text{NumBitsToExtract}}-1)$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/extractBits.cpp`


## 💡 Example

Extract the high nibble of 180 (10110100) starting at bit 4: 1011 = 11.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',180)), struct('id','e','type','extractBits','inputs',1,'outputs',1,'params',struct('StartBit',4,'NumBitsToExtract',4,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','e','fromIndex',0,'toIndex',0), struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md), [shiftArithmetic](../../nflow_blocks/logic/shiftArithmetic.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
