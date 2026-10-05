# dashboardRotarySwitch


<p align="center">
<img src="dashboardRotarySwitch.svg" width="72"/>
</p>
Selects one of several states with a rotary selector.

## 📝 Syntax

- Block type: dashboardRotarySwitch

## 📄 Description


Selects one of several states with a rotary selector. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardRotarySwitch</code> | 
| Label | Rotary Switch | 

  

<b>Description</b> 

The Rotary Switch block selects one of several configured states with a rotary selector and writes the selected value to the bound parameter. 

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
| <code>ShowInitialText</code> | on | 
| <code>States</code> | [{"Value": 0, "Label": "Off"}, {"Value": 1, "Label": "Low"}, {"Value": 2, "Label": "Medium"}, {"Value": 3, "Label": "High"}] | 
| <code>UseEnumeratedDataType</code> | off | 
| <code>EnumeratedDataType</code> |  | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>States</code> 
- <code>UseEnumeratedDataType</code> 
- <code>EnumeratedDataType</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardRotarySwitch | 
| Family | Dashboard blocks | 
| Rendered size | 125 x 100 | 
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

[dashboardSlider](../../nflow_blocks/dashboard/dashboardSlider.md), [dashboardSliderSwitch](../../nflow_blocks/dashboard/dashboardSliderSwitch.md), [dashboardToggleSwitch](../../nflow_blocks/dashboard/dashboardToggleSwitch.md), [dashboardCallbackButton](../../nflow_blocks/dashboard/dashboardCallbackButton.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
