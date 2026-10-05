# detectDecrease


<p align="center">
<img src="detectDecrease.svg" width="72"/>
</p>
Outputs 1 when the input strictly decreases from the previous step.

## 📝 Syntax

- Block type: detectDecrease

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs 1 when the input strictly decreases from the previous step. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Discrete | 
| Type | <code>detectDecrease</code> | 
| Label | Detect Decrease | 

  

<b>Description</b> 

Outputs 1 on any step where the input is strictly less than its value at the previous step, else 0. <code>InitialCondition</code> seeds the value before the first step. Stateful; element-wise over a vector input. 

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
| <code>InitialCondition</code> | 0 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | detectDecrease | 
| Family | Discrete | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: out = (u < prev) ? 1 : 0. UPDATE: prev = u. 

<b>Equation or Rule</b> 
$$y_k = [\,u_k < u_{k-1}\,]$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/detectDecrease.cpp`


## 💡 Example

A falling ramp (slope -1) yields 1 at every step after the first.

```matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',-1)), struct('id','dd','type','detectDecrease','inputs',1,'outputs',1,'params',struct('InitialCondition',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','dd','fromIndex',0,'toIndex',0), struct('from','dd','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[detectIncrease](../../nflow_blocks/discrete/detectIncrease.md), [detectChange](../../nflow_blocks/discrete/detectChange.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
