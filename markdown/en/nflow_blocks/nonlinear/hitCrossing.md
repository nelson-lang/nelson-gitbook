# hitCrossing


<p align="center">
<img src="hitCrossing.svg" width="192"/>
</p>
Outputs 1 on the step where the input crosses HitCrossingOffset.

## 📝 Syntax

- Block type: hitCrossing

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs 1 on the step where the input crosses HitCrossingOffset. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Non-Linear | 
| Type | <code>hitCrossing</code> | 
| Label | Hit Crossing | 

  

<b>Description</b> 

Detects when the scalar input reaches <code>HitCrossingOffset</code> in the configured direction and outputs 1 on the step where the crossing occurs, else 0. <code>HitCrossingDirection</code> is "rising", "falling" or "either". Stateful: the previous input (relative to the offset) is held so a straddle can be detected, and the first step is primed so it never false-fires. 

Because the input is read in the OUTPUT phase, drive this block from a source rather than through an ALGEBRAIC feedthrough block (whose output would be one step stale). 

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
| <code>HitCrossingOffset</code> | 0 | 
| <code>HitCrossingDirection</code> | either | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | hitCrossing | 
| Family | Non-Linear | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: out = crossing(prev - offset, u - offset, direction) ? 1 : 0. UPDATE: prev = u. 

<b>Equation or Rule</b> 
$$y_k = [\,(u_{k-1}-\text{off})\,\text{and}\,(u_k-\text{off})\ \text{straddle } 0\,]$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/hitCrossing.cpp`


## 💡 Example

Detect a rising crossing of 0.5 by a step source.

```matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','hc','type','hitCrossing','inputs',1,'outputs',1,'params',struct('HitCrossingOffset',0.5,'HitCrossingDirection','rising')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','hc','fromIndex',0,'toIndex',0), struct('from','hc','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[detectChange](../../nflow_blocks/discrete/detectChange.md), [intervalTest](../../nflow_blocks/logic/intervalTest.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
