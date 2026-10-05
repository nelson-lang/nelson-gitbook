# dashboardSlider


<p align="center">
<img src="dashboardSlider.svg" width="72"/>
</p>
Sets a bound parameter by dragging a linear slider.

## 📝 Syntax

- Block type: dashboardSlider

## 📄 Description


Sets a bound parameter by dragging a linear slider. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardSlider</code> | 
| Label | Slider | 

  

<b>Description</b> 

The Slider block lets you set the bound parameter by dragging a handle along a linear track between the configured limits. 

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
| <code>ScaleType</code> | Linear | 
| <code>Limits</code> | [0, -1, 100] | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ScaleType</code> 
- <code>Limits</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardSlider | 
| Family | Dashboard blocks | 
| Rendered size | 200 x 90 | 
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

[dashboardSliderSwitch](../../nflow_blocks/dashboard/dashboardSliderSwitch.md), [dashboardToggleSwitch](../../nflow_blocks/dashboard/dashboardToggleSwitch.md), [dashboardCallbackButton](../../nflow_blocks/dashboard/dashboardCallbackButton.md), [dashboardCheckBox](../../nflow_blocks/dashboard/dashboardCheckBox.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
