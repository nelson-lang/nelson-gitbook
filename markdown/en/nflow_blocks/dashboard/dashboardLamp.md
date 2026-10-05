# dashboardLamp


<p align="center">
<img src="dashboardLamp.svg" width="72"/>
</p>
Shows a colored indicator that changes with a bound signal.

## 📝 Syntax

- Block type: dashboardLamp

## 📄 Description


Shows a colored indicator that changes with a bound signal. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardLamp</code> | 
| Label | Lamp | 

  

<b>Description</b> 

The Lamp block displays a colored indicator whose color depends on the value of the bound signal. Value-to-color mappings define the state colors; other values use the default color. 

<b>Ports</b> 

<b>Input(s)</b> 

This block declares no input ports. 

<b>Output(s)</b> 

This block declares no output ports. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>LabelPosition</code> | Hide | 
| <code>Binding</code> |  | 
| <code>ShowInitialText</code> | on | 
| <code>ColorDefault</code> | [0.7529411764705882, 0.7529411764705882, 0.7529411764705882] | 
| <code>StateColors</code> | [{"Value": 0, "Color": [0.39215686274509803, 0.8313725490196079, 0.07450980392156863]}] | 
| <code>Opacity</code> | 1 | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ColorDefault</code> 
- <code>StateColors</code> 
- <code>Opacity</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardLamp | 
| Family | Dashboard blocks | 
| Rendered size | 65 x 60 | 
| Phases | INIT, AFTER\_STEP | 
| Direct feedthrough | see Algorithms | 
| Internal state or history | yes | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- INIT resets the widget to its initial reading. 
- AFTER\_STEP samples the bound signal and refreshes the display. 
- The block visualizes the signal only; it declares no input or output signal ports. 

<b>Extended Capabilities</b> 

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block. 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/dashboard/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/DashboardHandlers.cpp`



## 🔗 See also

[dashboardLinearGauge](../../nflow_blocks/dashboard/dashboardLinearGauge.md), [dashboardMultiStateImage](../../nflow_blocks/dashboard/dashboardMultiStateImage.md), [dashboardPushButton](../../nflow_blocks/dashboard/dashboardPushButton.md), [dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
