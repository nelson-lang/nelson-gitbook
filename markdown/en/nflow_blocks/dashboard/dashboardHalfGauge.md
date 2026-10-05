# dashboardHalfGauge


<p align="center">
<img src="dashboardHalfGauge.svg" width="72"/>
</p>
Displays a bound signal on a 180-degree semicircular scale.

## 📝 Syntax

- Block type: dashboardHalfGauge

## 📄 Description


Displays a bound signal on a 180-degree semicircular scale. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardHalfGauge</code> | 
| Label | Half Gauge | 

  

<b>Description</b> 

The Half Gauge block shows the value of the bound signal on a half-circle (180 degree) scale between the configured limits. 

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
| <code>ScaleColors</code> | [] | 
| <code>Limits</code> | [0, -1, 100] | 
| <code>FontColor</code> | [0, 0, 0] | 
| <code>Opacity</code> | 1 | 
| <code>ScaleDirection</code> | Clockwise | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ScaleColors</code> 
- <code>Limits</code> 
- <code>FontColor</code> 
- <code>Opacity</code> 
- <code>ScaleDirection</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardHalfGauge | 
| Family | Dashboard blocks | 
| Rendered size | 156 x 108 | 
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

[dashboardKnob](../../nflow_blocks/dashboard/dashboardKnob.md), [dashboardLamp](../../nflow_blocks/dashboard/dashboardLamp.md), [dashboardLinearGauge](../../nflow_blocks/dashboard/dashboardLinearGauge.md), [dashboardMultiStateImage](../../nflow_blocks/dashboard/dashboardMultiStateImage.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
