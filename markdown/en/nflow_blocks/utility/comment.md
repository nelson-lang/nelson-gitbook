# comment


<p align="center">
<img src="comment.svg" width="72"/>
</p>
Adds non-executed annotation text to a diagram.

## 📝 Syntax

- Block type: comment

## 📄 Description


Adds non-executed annotation text to a diagram. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Utility blocks | 
| Type | <code>comment</code> | 
| Label | Comment | 

  

<b>Description</b> 

Free-text comment block used to annotate diagrams. Can optionally show a border. 

<b>Ports</b> 

<b>Input(s)</b> 

This block declares no input ports. 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>commentText</code> |  | 
| <code>showBorder</code> | true | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>commentText</code> 
- <code>showBorder</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | comment | 
| Family | Utility blocks | 
| Rendered size | 220 x 120 | 
| Phases | none | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | not observed in the documented runtime | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- No native numeric handler and no signal ports. 
- Used by the editor and renderer for comment text and border display. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


## 🔗 See also

[subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
