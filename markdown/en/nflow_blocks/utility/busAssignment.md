# busAssignment


<p align="center">
<img src="busAssignment.svg" width="72"/>
</p>
Replaces selected members of a bus, passing the rest through unchanged.

## 📝 Syntax

- Block type: busAssignment

## 📥 Input argument

- input ports - 2 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Replaces selected members of a bus, passing the rest through unchanged. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility | 
| Type | <code>busAssignment</code> | 
| Label | Bus Assignment | 

  

<b>Description</b> 

Replaces selected members of a bus and passes the rest through (Bus Assignment). Port 0 is the base bus; its type sets the output bus type; ports 1..N carry replacement signals, one per path in <code>AssignedSignals</code>. The output is a bus of the same type: a full copy of the base with each assigned member's packed region overwritten by the matching replacement input. The mirror image of busSelector; all storage lanes (real / imaginary / int64) are preserved. Simulation-only, like the other bus-routing blocks. 

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
| <code>AssignedSignals</code> | [] | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | busAssignment | 
| Family | Utility | 
| Rendered size | 90 x 60 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = copy of the base bus; for each assigned path k, overwrite its packed region with replacement input k. 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/busAssignment.cpp`


## 💡 Example

A bus {pos=[1 2], count=7}; assigning 'count' to 99 yields {pos=[1 2], count=99}.

```matlab
d.blocks={ struct('id','pos','type','constant','inputs',0,'outputs',1,'params',struct('Value',[1 2])), struct('id','cnt','type','constant','inputs',0,'outputs',1,'params',struct('Value',7)), struct('id','nc','type','constant','inputs',0,'outputs',1,'params',struct('Value',99)), struct('id','bc','type','busCreator','inputs',2,'outputs',1,'params',struct('MemberNames',{{'pos','count'}})), struct('id','ba','type','busAssignment','inputs',2,'outputs',1,'params',struct('AssignedSignals',{{'count'}})), struct('id','sel','type','busSelector','inputs',1,'outputs',1,'params',struct('SelectedSignals',{{'count'}})), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','pos','to','bc','fromIndex',0,'toIndex',0), struct('from','cnt','to','bc','fromIndex',0,'toIndex',1), struct('from','bc','to','ba','fromIndex',0,'toIndex',0), struct('from','nc','to','ba','fromIndex',0,'toIndex',1), struct('from','ba','to','sel','fromIndex',0,'toIndex',0), struct('from','sel','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.1; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 See also

[busCreator](../../nflow_blocks/utility/busCreator.md), [busSelector](../../nflow_blocks/utility/busSelector.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
