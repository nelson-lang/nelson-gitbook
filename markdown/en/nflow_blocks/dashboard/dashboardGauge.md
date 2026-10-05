# dashboardGauge


<p align="center">
<img src="dashboardGauge.svg" width="72"/>
</p>
Displays a bound signal as a needle on a circular scale.

## 📝 Syntax

- Block type: dashboardGauge

## 📄 Description


Displays a bound signal as a needle on a circular scale. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardGauge</code> | 
| Label | Gauge | 

  

<b>Description</b> 

The Gauge block shows the value of the bound signal as a needle sweeping a full circular scale between the configured limits. Scale colors highlight value ranges. 

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
| Block type | dashboardGauge | 
| Family | Dashboard blocks | 
| Rendered size | 125 x 140 | 
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

[dashboardHalfGauge](../../nflow_blocks/dashboard/dashboardHalfGauge.md), [dashboardKnob](../../nflow_blocks/dashboard/dashboardKnob.md), [dashboardLamp](../../nflow_blocks/dashboard/dashboardLamp.md), [dashboardLinearGauge](../../nflow_blocks/dashboard/dashboardLinearGauge.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
