# dataStoreRead


<p align="center">
<img src="dataStoreRead.svg" width="72"/>
</p>
Outputs the value of the named data store.

## 📝 Syntax

- Block type: dataStoreRead

## 📥 Input argument

- input ports - No input ports (this block has none).

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Outputs the value of the named data store. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility | 
| Type | <code>dataStoreRead</code> | 
| Label | Data Store Read | 

  

<b>Description</b> 

Outputs the current value of the named memory <code>DataStoreName</code> (0 if the store was never declared or written). The read happens in the OUTPUT phase, so it returns the value written on the previous step. No input, one output. Native only; scalar. 

<b>Ports</b> 

This block has no input ports. 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=70, y=30 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>DataStoreName</code> | A | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dataStoreRead | 
| Family | Utility | 
| Rendered size | 70 x 60 | 
| Phases | OUTPUT | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- OUTPUT: out = store[DataStoreName] (0 if absent). 

<b>Extended Capabilities</b> 

Native runtime only (this block is not code-generated). 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/dataStore.cpp`


## 💡 Example

See the dataStoreMemory example, which reads 'M' back to a scope.

```matlab
% See the dataStoreMemory example for a complete Memory/Write/Read wiring.
```


## 🔗 See also

[dataStoreMemory](../../nflow_blocks/utility/dataStoreMemory.md), [dataStoreWrite](../../nflow_blocks/utility/dataStoreWrite.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
