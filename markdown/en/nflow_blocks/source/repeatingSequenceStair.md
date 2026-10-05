# repeatingSequenceStair


<p align="center">
<img src="repeatingSequenceStair.svg" width="72"/>
</p>
Periodic staircase: one OutValues entry per sample, repeating.

## 📝 Syntax

- Block type: repeatingSequenceStair

## 📥 Input argument

- input ports - No input ports (this block has none).

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Periodic staircase: one OutValues entry per sample, repeating. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source | 
| Type | <code>repeatingSequenceStair</code> | 
| Label | Repeating Sequence Stair | 

  

<b>Description</b> 

A periodic staircase source with no input. Emits one entry of the <code>OutValues</code> vector per sample, holding each for a step, and repeats from the start once the end is reached. An empty vector outputs 0; a single entry acts as a constant. 

<b>Ports</b> 

This block has no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>OutValues</code> | [0 1 2 3 2 1] | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | repeatingSequenceStair | 
| Family | Source | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: out = OutValues[index]. UPDATE: index = (index + 1) mod N. 

<b>Equation or Rule</b> 
$$y_k = \text{OutValues}[k \bmod N]$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/repeatingSequenceStair.cpp`


## 💡 Example

Repeat the sequence 10, 20, 30.

```matlab
d.blocks={ struct('id','r','type','repeatingSequenceStair','inputs',0,'outputs',1,'params',struct('OutValues',[10 20 30])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[repeatingSequenceInterpolated](../../nflow_blocks/source/repeatingSequenceInterpolated.md), [counterLimited](../../nflow_blocks/source/counterLimited.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
