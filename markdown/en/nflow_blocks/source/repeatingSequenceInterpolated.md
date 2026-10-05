# repeatingSequenceInterpolated


<p align="center">
<img src="repeatingSequenceInterpolated.svg" width="72"/>
</p>
Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table.

## 📝 Syntax

- Block type: repeatingSequenceInterpolated

## 📥 Input argument

- input ports - No input ports (this block has none).

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source | 
| Type | <code>repeatingSequenceInterpolated</code> | 
| Label | Repeating Sequence Interpolated | 

  

<b>Description</b> 

A periodic, piecewise-linear source with no input. The <code>TimeValues</code>/<code>OutValues</code> table defines one period (period = last TimeValues entry); the output linearly interpolates the table at t wrapped into [0, period) and repeats. Stateless (a pure function of time). 

<b>Ports</b> 

This block has no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>TimeValues</code> | [0 1 2] | 
| <code>OutValues</code> | [0 2 0] | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | repeatingSequenceInterpolated | 
| Family | Source | 
| Rendered size | 80 x 80 | 
| Phases | OUTPUT | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: tm = mod(t, period); out = linear interpolation of OutValues over TimeValues at tm. 

<b>Equation or Rule</b> 
$$y(t) = \text{interp}\big(\text{TimeValues}, \text{OutValues}, t \bmod T\big)$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/repeatingSequenceInterpolated.cpp`


## 💡 Example

A triangle wave of period 1 s from [0 0.5 1] -> [0 1 0].

```matlab
d.blocks={ struct('id','r','type','repeatingSequenceInterpolated','inputs',0,'outputs',1,'params',struct('TimeValues',[0 0.5 1],'OutValues',[0 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[repeatingSequenceStair](../../nflow_blocks/source/repeatingSequenceStair.md), [signalGenerator](../../nflow_blocks/source/signalGenerator.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
