# dashboardMultiStateImage


<p align="center">
<img src="dashboardMultiStateImage.svg" width="72"/>
</p>
Shows one of several images selected by a bound signal.

## 📝 Syntax

- Block type: dashboardMultiStateImage

## 📄 Description


Shows one of several images selected by a bound signal. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardMultiStateImage</code> | 
| Label | MultiStateImage | 

  

<b>Description</b> 

The MultiStateImage block displays one image from a configured set, selected by the value of the bound signal. Values without a matching state use the default image. 

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
| <code>States</code> | [{"State": 0, "Size": [0, 0], "Image": "", "Thumbnail": ""}] | 
| <code>DefaultImage</code> | {"Size": [0, 0], "Image": "", "Thumbnail": ""} | 
| <code>ScaleMode</code> | Fill with fixed aspect ratio | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>States</code> 
- <code>DefaultImage</code> 
- <code>ScaleMode</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardMultiStateImage | 
| Family | Dashboard blocks | 
| Rendered size | 190 x 180 | 
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

[dashboardPushButton](../../nflow_blocks/dashboard/dashboardPushButton.md), [dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md), [dashboardRadioButton](../../nflow_blocks/dashboard/dashboardRadioButton.md), [dashboardRockerSwitch](../../nflow_blocks/dashboard/dashboardRockerSwitch.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
