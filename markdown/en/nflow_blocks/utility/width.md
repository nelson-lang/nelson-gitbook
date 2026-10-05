# width


<p align="center">
<img src="width.svg" width="72"/>
</p>
Outputs the number of elements (width) of its input signal, as a scalar.

## 📝 Syntax

- Block type: width

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs the number of elements (width) of its input signal, as a scalar. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility | 
| Type | <code>width</code> | 
| Label | Width | 

  

<b>Description</b> 

Outputs the number of elements of the input signal as a scalar constant (Width). A modeling / introspection aid, e.g. to drive a gain or a loop bound by a bus or vector width. The output is always scalar regardless of the input width. Interpreter-only: the code generator flattens vector signals to scalar wires before per-block emission, so a model containing a width block is reported as not code-generatable. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=25 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=80, y=25 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| *none* |  | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | width | 
| Family | Utility | 
| Rendered size | 80 x 50 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = number of elements of the input signal (scalar). 

<b>Extended Capabilities</b> 

Native runtime only (this block is not code-generated). 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/width.cpp`


## 💡 Example

A constant [10 20 30] (width 3) into a width block outputs 3.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',[10 20 30])), struct('id','wd','type','width','inputs',1,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','wd','fromIndex',0,'toIndex',0), struct('from','wd','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[mux](../../nflow_blocks/utility/mux.md), [demux](../../nflow_blocks/utility/demux.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
