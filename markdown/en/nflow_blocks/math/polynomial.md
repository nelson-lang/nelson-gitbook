# polynomial


<p align="center">
<img src="polynomial.svg" width="72"/>
</p>
Evaluates a polynomial with constant Coefficients (highest power first).

## 📝 Syntax

- Block type: polynomial

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Evaluates a polynomial with constant Coefficients (highest power first). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Math | 
| Type | <code>polynomial</code> | 
| Label | Polynomial | 

  

<b>Description</b> 

Evaluates a polynomial with constant <code>Coefficients</code> (highest power first, polyval order) at the input using Horner's method. For Coefficients = [a b c], out = a\*u^2 + b\*u + c. Pure algebraic feedthrough, element-wise; the Horner form is unrolled over the static coefficients in generated code. 

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
| <code>Coefficients</code> | [1 0 0] | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | polynomial | 
| Family | Math | 
| Rendered size | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: Horner evaluation acc = c[0]; acc = acc\*u + c[k] for k = 1..n-1. 

<b>Equation or Rule</b> 
$$y = \sum_{k=0}^{n-1} c_k\, u^{\,n-1-k}$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/polynomial.cpp`


## 💡 Example

Coefficients [1 -2 3] at u = 2: 1*4 - 2*2 + 3 = 3.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2)), struct('id','g','type','polynomial','inputs',1,'outputs',1,'params',struct('Coefficients',[1 -2 3])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','g','fromIndex',0,'toIndex',0), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[gain](../../nflow_blocks/math/gain.md), [mathFunction](../../nflow_blocks/math/mathFunction.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
