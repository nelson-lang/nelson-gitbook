# dashboardPushButton


<p align="center">
<img src="dashboardPushButton.svg" width="72"/>
</p>
Writes a value to a bound parameter while pressed or toggled.

## 📝 Syntax

- Block type: dashboardPushButton

## 📄 Description


Writes a value to a bound parameter while pressed or toggled. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardPushButton</code> | 
| Label | Push Button | 

  

<b>Description</b> 

The Push Button block writes a value to the bound parameter when pressed. It can act as a momentary or latched button and can show a text label or an icon. 

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
| <code>ButtonText</code> | Button | 
| <code>OnValue</code> | 1 | 
| <code>Opacity</code> | 1 | 
| <code>ButtonType</code> | Momentary | 
| <code>Icon</code> | None | 
| <code>CustomIcon</code> |  | 
| <code>IconAlignment</code> | Left | 
| <code>IconOnColor</code> | [0, 0.39215686274509803, 0] | 
| <code>IconOffColor</code> | [0, 1, 0] | 
| <code>IconColor</code> | Off | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ButtonText</code> 
- <code>OnValue</code> 
- <code>Opacity</code> 
- <code>ButtonType</code> 
- <code>Icon</code> 
- <code>CustomIcon</code> 
- <code>IconAlignment</code> 
- <code>IconOnColor</code> 
- <code>IconOffColor</code> 
- <code>IconColor</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardPushButton | 
| Family | Dashboard blocks | 
| Rendered size | 91 x 44 | 
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

[dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md), [dashboardRadioButton](../../nflow_blocks/dashboard/dashboardRadioButton.md), [dashboardRockerSwitch](../../nflow_blocks/dashboard/dashboardRockerSwitch.md), [dashboardRotarySwitch](../../nflow_blocks/dashboard/dashboardRotarySwitch.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
