# fallingEdge


<p align="center">
<img src="fallingEdge.svg" width="192"/>
</p>
Outputs 1 on the step where the input crosses from >= 0 to < 0.

## 📝 Syntax

- Block type: fallingEdge

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs 1 on the step where the input crosses from >= 0 to < 0. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Discrete | 
| Type | <code>fallingEdge</code> | 
| Label | Falling Edge | 

  

<b>Description</b> 

Detects a falling edge: outputs 1 on the step where the input goes from non-negative to strictly negative (<code>prev >= 0 && u < 0</code>), else 0. <code>InitialCondition</code> seeds the previous value. Stateful; element-wise. 

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
| Block type | fallingEdge | 
| Family | Discrete | 
| Rendered size | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: out = (prev >= 0 && u < 0) ? 1 : 0. UPDATE: prev = u. 

<b>Equation or Rule</b> 
$$y_k = [\,u_{k-1} \ge 0 \wedge u_k < 0\,]$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/fallingEdge.cpp`


## 💡 Example

A falling ramp seeded above 0 produces one falling edge as it crosses zero.

```matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',-1)), struct('id','ic','type','initialCondition','inputs',1,'outputs',1,'params',struct('InitialValue',1)), struct('id','fe','type','fallingEdge','inputs',1,'outputs',1,'params',struct('InitialCondition',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','ic','fromIndex',0,'toIndex',0), struct('from','ic','to','fe','fromIndex',0,'toIndex',0), struct('from','fe','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[risingEdge](../../nflow_blocks/discrete/risingEdge.md), [detectChange](../../nflow_blocks/discrete/detectChange.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
