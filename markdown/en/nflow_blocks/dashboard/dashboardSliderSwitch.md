# dashboardSliderSwitch


<p align="center">
<img src="dashboardSliderSwitch.svg" width="72"/>
</p>
Toggles a bound parameter between two states with a sliding switch.

## 📝 Syntax

- Block type: dashboardSliderSwitch

## 📄 Description


Toggles a bound parameter between two states with a sliding switch. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardSliderSwitch</code> | 
| Label | Slider Switch | 

  

<b>Description</b> 

The Slider Switch block toggles the bound parameter between its two configured states with a sliding control. 

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
| <code>States</code> | [{"Value": 0, "Label": "Off"}, {"Value": 1, "Label": "On"}] | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>States</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardSliderSwitch | 
| Family | Dashboard blocks | 
| Rendered size | 120 x 45 | 
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

[dashboardToggleSwitch](../../nflow_blocks/dashboard/dashboardToggleSwitch.md), [dashboardCallbackButton](../../nflow_blocks/dashboard/dashboardCallbackButton.md), [dashboardCheckBox](../../nflow_blocks/dashboard/dashboardCheckBox.md), [dashboardComboBox](../../nflow_blocks/dashboard/dashboardComboBox.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
