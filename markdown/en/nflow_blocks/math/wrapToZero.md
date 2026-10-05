# wrapToZero


<p align="center">
<img src="wrapToZero.svg" width="72"/>
</p>
Outputs 0 when the input reaches Threshold, else passes it through.

## 📝 Syntax

- Block type: wrapToZero

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs 0 when the input reaches Threshold, else passes it through. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math | 
| Type | <code>wrapToZero</code> | 
| Label | Wrap To Zero | 

  

<b>Description</b> 

Outputs 0 when the input is at or above <code>Threshold</code>, else passes the input through unchanged (Wrap To Zero). Pure algebraic feedthrough, element-wise over the input width. 

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
| <code>Threshold</code> | 255 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | wrapToZero | 
| Family | Math | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = (u >= Threshold) ? 0 : u. 

<b>Equation or Rule</b> 
$$y = \begin{cases} 0 & u \ge \text{Threshold} \\ u & \text{otherwise} \end{cases}$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/wrapToZero.cpp`


## 💡 Example

With Threshold = 5: input 7 wraps to 0, input 3 passes through.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',7)), struct('id','g','type','wrapToZero','inputs',1,'outputs',1,'params',struct('Threshold',5)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','g','fromIndex',0,'toIndex',0), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[saturation](../../nflow_blocks/nonlinear/saturation.md), [deadZone](../../nflow_blocks/nonlinear/deadZone.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
