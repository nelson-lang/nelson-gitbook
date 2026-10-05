# combinatorialLogic


<p align="center">
<img src="combinatorialLogic.svg" width="72"/>
</p>
Truth-table lookup: an N-bit input vector indexes a 2^N-entry TruthTable.

## 📝 Syntax

- Block type: combinatorialLogic

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Truth-table lookup: an N-bit input vector indexes a 2^N-entry TruthTable. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Logic / Bit Operations | 
| Type | <code>combinatorialLogic</code> | 
| Label | Combinatorial Logic | 

  

<b>Description</b> 

The single input is a vector of N boolean elements that forms a binary index (element 0 is the most-significant bit); the output is <code>TruthTable[index]</code>, where <code>TruthTable</code> is a 2^N-entry column. Non-zero inputs count as 1. The block is registered vector-aware (it accepts a vector input and produces a scalar output). 

Native runtime only: the vector-input row lookup is not yet code-generated. An out-of-range index or an empty table yields 0. 

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
| <code>TruthTable</code> | [0 1 1 0] | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | combinatorialLogic | 
| Family | Logic / Bit Operations | 
| Rendered size | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: index = sum over bits (u[i] != 0) \* 2^(N-1-i); out = TruthTable[index]. 

<b>Equation or Rule</b> 
$$y = \text{TruthTable}\big[\textstyle\sum_i u_i\,2^{N-1-i}\big]$$
 

<b>Extended Capabilities</b> 

Native runtime only (this block is not code-generated). 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/combinatorialLogic.cpp`


## 💡 Example

A 2-input XOR truth table [0 1 1 0] applied to the vector [1 0] gives 1.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',[1 0])), struct('id','cl','type','combinatorialLogic','inputs',1,'outputs',1,'params',struct('TruthTable',[0 1 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','cl','fromIndex',0,'toIndex',0), struct('from','cl','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
