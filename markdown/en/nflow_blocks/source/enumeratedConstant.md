# enumeratedConstant


<p align="center">
<img src="enumeratedConstant.svg" width="72"/>
</p>
Outputs a fixed enumeration value (EnumClass documents it, Value is the number).

## 📝 Syntax

- Block type: enumeratedConstant

## 📥 Input argument

- input ports - No input ports (this block has none).

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs a fixed enumeration value (EnumClass documents it, Value is the number). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Source | 
| Type | <code>enumeratedConstant</code> | 
| Label | Enumerated Constant | 

  

<b>Description</b> 

Outputs a fixed enumeration value. <code>EnumClass</code> names the enumeration (documentation only) and <code>Value</code> is the underlying numeric value of the selected member. Behaves like a constant carrying an enumerated meaning; scalar output. 

<b>Ports</b> 

This block has no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=90, y=25 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>EnumClass</code> |  | 
| <code>Value</code> | 0 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | enumeratedConstant | 
| Family | Source | 
| Rendered size | 90 x 50 | 
| Phases | OUTPUT | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: out = Value (constant, every step). 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/enumeratedConstant.cpp`


## 💡 Example

EnumClass 'Color', Value 7 outputs 7 at every step.

```matlab
d.blocks={ struct('id','e','type','enumeratedConstant','inputs',0,'outputs',1,'params',struct('EnumClass','Color','Value',7)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[constant](../../nflow_blocks/source/constant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
