# intervalTest


<p align="center">
<img src="intervalTest.svg" width="72"/>
</p>
Outputs 1 when the input lies within [LowerLimit, UpperLimit], else 0.

## 📝 Syntax

- Block type: intervalTest

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs 1 when the input lies within [LowerLimit, UpperLimit], else 0. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Logic / Bit Operations | 
| Type | <code>intervalTest</code> | 
| Label | Interval Test | 

  

<b>Description</b> 

Tests whether the input <code>u</code> lies inside a static interval. The bounds <code>LowerLimit</code> and <code>UpperLimit</code> are parameters; <code>IntervalClosedLeft</code> and <code>IntervalClosedRight</code> select whether each end is inclusive (<code>>=</code>/<code><=</code>) or exclusive (<code>></code>/<code><</code>). The test is applied element-wise over a vector input. 

Pure algebraic feedthrough (no state): the output at each step depends only on the current input. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=100, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>LowerLimit</code> | 0 | 
| <code>UpperLimit</code> | 1 | 
| <code>IntervalClosedLeft</code> | 1 | 
| <code>IntervalClosedRight</code> | 1 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | intervalTest | 
| Family | Logic / Bit Operations | 
| Rendered size | 100 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = (u >= LowerLimit) && (u <= UpperLimit) ? 1 : 0, with strict comparisons when the corresponding end is open. 

<b>Equation or Rule</b> 
$$y = \begin{cases} 1 & \text{lo} \le u \le \text{up} \\ 0 & \text{otherwise} \end{cases}$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/intervalTest.cpp`


## 💡 Example

Test a constant against [0, 1] and display the result.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',0.5)), struct('id','it','type','intervalTest','inputs',1,'outputs',1,'params',struct('LowerLimit',0,'UpperLimit',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','it','fromIndex',0,'toIndex',0), struct('from','it','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[intervalTestDynamic](../../nflow_blocks/logic/intervalTestDynamic.md), [compareToConstant](../../nflow_blocks/logic/compareToConstant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
