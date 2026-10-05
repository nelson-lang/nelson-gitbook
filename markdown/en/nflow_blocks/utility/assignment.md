# assignment


<p align="center">
<img src="assignment.svg" width="72"/>
</p>
Writes elements into a signal: out = base with out[Indices] = values.

## 📝 Syntax

- Block type: assignment

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Writes elements into a signal: out = base with out[Indices] = values. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility | 
| Type | <code>assignment</code> | 
| Label | Assignment | 

  

<b>Description</b> 

Writes elements into a signal (Assignment). Port 0 is the base signal; its width sets the output width; port 1 carries the replacement values. <code>Indices</code> (1-based) selects which base elements are overwritten by the successive values: <code>out = base</code>, then <code>out[Indices[k]] = values[k]</code>. Elements not listed pass through unchanged. Simulation-only (vector-shape routing, like reshape / selector): no scalar code-generation path. 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=20 | 
| Port\_2 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=90, y=30 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>Indices</code> | [1] | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | assignment | 
| Family | Utility | 
| Rendered size | 90 x 60 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = base; for each k, out[Indices[k]-1] = values[k]. 

<b>Extended Capabilities</b> 

Native runtime only (this block is not code-generated). 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/assignment.cpp`


## 💡 Example

base [1 2 3 4], values [90 70], Indices [2 4] -> [1 90 3 70].

```matlab
d.blocks={ struct('id','b','type','constant','inputs',0,'outputs',1,'params',struct('Value',[1 2 3 4])), struct('id','v','type','constant','inputs',0,'outputs',1,'params',struct('Value',[90 70])), struct('id','a','type','assignment','inputs',2,'outputs',1,'params',struct('Indices',[2 4])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','b','to','a','fromIndex',0,'toIndex',0), struct('from','v','to','a','fromIndex',0,'toIndex',1), struct('from','a','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.1; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[selector](../../nflow_blocks/utility/selector.md), [reshape](../../nflow_blocks/utility/reshape.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
