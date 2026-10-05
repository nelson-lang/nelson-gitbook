# stopSimulation


<p align="center">
<img src="stopSimulation.svg" width="72"/>
</p>
Ends the run at the end of the step where its input first becomes nonzero.

## 📝 Syntax

- Block type: stopSimulation

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - No output ports (this block has none).

## 📄 Description


Ends the run at the end of the step where its input first becomes nonzero. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Sinks | 
| Type | <code>stopSimulation</code> | 
| Label | Stop | 

  

<b>Description</b> 

Stops the simulation at the end of the step where its input first becomes nonzero, by setting <code>SimCtx::stopRequested</code> (honored by both the fixed-step and the solver loops). Typically driven by a comparison or interval-test block to stop on a condition. One input, no output; native only. 

Registered in the AFTER\_STEP phase so it observes each step's settled outputs before deciding to stop. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=20 | 

 

This block has no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| *none* |  | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | stopSimulation | 
| Family | Sinks | 
| Rendered size | 40 x 40 | 
| Phases | AFTER\_STEP | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- AFTER\_STEP: if any input element != 0, set stopRequested = true. 

<b>Extended Capabilities</b> 

Native runtime only (this block is not code-generated). 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/stopSimulation.cpp`


## 💡 Example

Stop the run once a step source turns on at t = 0.45.

```matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','stop','type','stopSimulation','inputs',1,'outputs',0,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','stop','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[compareToConstant](../../nflow_blocks/logic/compareToConstant.md), [intervalTest](../../nflow_blocks/logic/intervalTest.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
