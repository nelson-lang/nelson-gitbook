# dashboardCallbackButton


<p align="center">
<img src="dashboardCallbackButton.svg" width="72"/>
</p>
Runs a callback and writes a value when clicked.

## 📝 Syntax

- Block type: dashboardCallbackButton

## 📄 Description


Runs a callback and writes a value when clicked. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardCallbackButton</code> | 
| Label | Callback Button | 

  

<b>Description</b> 

The Callback Button block runs the configured callback function when clicked and can write a value to the bound parameter. Use it to trigger scripted actions from the dashboard. 

<b>Ports</b> 

<b>Input(s)</b> 

This block declares no input ports. 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>LabelPosition</code> | Top | 
| <code>Binding</code> |  | 
| <code>ShowInitialText</code> | off | 
| <code>ButtonText</code> | Callback Button | 
| <code>ButtonType</code> | Momentary | 
| <code>ClickFcn</code> |  | 
| <code>OnValue</code> | 1 | 
| <code>PressDelay</code> | 500 | 
| <code>PressFcn</code> |  | 
| <code>RepeatInterval</code> | 0 | 
| <code>AutoActivate</code> | true | 
| <code>fixedAspectRatio</code> | off | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ButtonText</code> 
- <code>ButtonType</code> 
- <code>ClickFcn</code> 
- <code>OnValue</code> 
- <code>PressDelay</code> 
- <code>PressFcn</code> 
- <code>RepeatInterval</code> 
- <code>AutoActivate</code> 
- <code>fixedAspectRatio</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardCallbackButton | 
| Family | Dashboard blocks | 
| Rendered size | 110 x 35 | 
| Phases | none | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- The block declares no simulation phases; it is driven by the dashboard, not by the solver. 
- User interaction writes the selected value to the bound parameter before or during the run. 
- The block declares no input or output signal ports. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/dashboard/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/DashboardHandlers.cpp`



## 🔗 See also

[dashboardCheckBox](../../nflow_blocks/dashboard/dashboardCheckBox.md), [dashboardComboBox](../../nflow_blocks/dashboard/dashboardComboBox.md), [dashboardScope](../../nflow_blocks/dashboard/dashboardScope.md), [dashboardDisplay](../../nflow_blocks/dashboard/dashboardDisplay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
