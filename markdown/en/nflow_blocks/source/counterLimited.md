# counterLimited


<p align="center">
<img src="counterLimited.svg" width="72"/>
</p>
Up-counter that wraps back to 0 once it reaches UpperLimit.

## 📝 Syntax

- Block type: counterLimited

## 📥 Input argument

- input ports - No input ports (this block has none).

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Up-counter that wraps back to 0 once it reaches UpperLimit. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source | 
| Type | <code>counterLimited</code> | 
| Label | Counter Limited | 

  

<b>Description</b> 

An up-counter with no input that wraps at a configurable ceiling. Starts at 0 and increments by 1 at every sample step; once it reaches <code>UpperLimit</code> it wraps back to 0 on the next step, so the output sweeps 0, 1, ..., UpperLimit, 0, ... 

<b>Ports</b> 

This block has no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>UpperLimit</code> | 7 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | counterLimited | 
| Family | Source | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: out = count. UPDATE: count = (count >= UpperLimit) ? 0 : count + 1. 

<b>Equation or Rule</b> 
$$y_k = k \bmod (\text{UpperLimit}+1)$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/counterLimited.cpp`


## 💡 Example

A counter limited to 3 cycles 0,1,2,3,0,1,...

```matlab
d.blocks={ struct('id','c','type','counterLimited','inputs',0,'outputs',1,'params',struct('UpperLimit',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[counterFreeRunning](../../nflow_blocks/source/counterFreeRunning.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
