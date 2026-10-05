# coulombViscousFriction


<p align="center">
<img src="coulombViscousFriction.svg" width="72"/>
</p>
Static friction: viscous term Gain\*u plus signed Coulomb term Offset\*sign(u).

## 📝 Syntax

- Block type: coulombViscousFriction

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Static friction: viscous term Gain\*u plus signed Coulomb term Offset\*sign(u). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Non-Linear | 
| Type | <code>coulombViscousFriction</code> | 
| Label | Coulomb & Viscous Friction | 

  

<b>Description</b> 

Models a static friction characteristic combining a viscous term proportional to the input (<code>Gain</code>) and a Coulomb term of fixed magnitude (<code>Offset</code>) that opposes the direction of motion: <code>y = Gain*u + Offset*sign(u)</code>. Because <code>sign(0) = 0</code>, the output is exactly 0 at rest. Two parallel sloped segments with a jump of 2\*Offset across the origin. Scalar or vector (element-wise). 

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
| <code>Gain</code> | 1 | 
| <code>Offset</code> | 1 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | coulombViscousFriction | 
| Family | Non-Linear | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: y = Gain\*u + Offset\*sign(u), element-wise over the input width. 

<b>Equation or Rule</b> 
$$y = \text{Gain}\cdot u + \text{Offset}\cdot \operatorname{sign}(u)$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/coulombViscousFriction.cpp`


## 💡 Example

Gain = 2, Offset = 3: input 2 -> 7, input -2 -> -7, input 0 -> 0.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2)), struct('id','f','type','coulombViscousFriction','inputs',1,'outputs',1,'params',struct('Gain',2,'Offset',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','f','fromIndex',0,'toIndex',0), struct('from','f','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[deadZone](../../nflow_blocks/nonlinear/deadZone.md), [saturation](../../nflow_blocks/nonlinear/saturation.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
