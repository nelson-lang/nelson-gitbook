# dashboardScope


<p align="center">
<img src="dashboardScope.svg" width="72"/>
</p>
Plots bound signals against simulation time on a multi-channel scope.

## 📝 Syntax

- Block type: dashboardScope

## 📄 Description


Plots bound signals against simulation time on a multi-channel scope. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Dashboard blocks | 
| Type | <code>dashboardScope</code> | 
| Label | Dashboard Scope | 

  

<b>Description</b> 

The Dashboard Scope block displays one or more bound signals as curves over a rolling time span. It samples the connected signals after every simulation step and refreshes the plot, so signal trends can be watched live while a model runs. 

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
| <code>TimeSpan</code> | auto | 
| <code>LegendPosition</code> | Top | 
| <code>ScaleAtStop</code> | on | 
| <code>UpdateMode</code> | Wrap | 
| <code>NormalizeYAxis</code> | off | 
| <code>TicksPosition</code> | Outside | 
| <code>TickLabels</code> | All | 
| <code>Grid</code> | All | 
| <code>Border</code> | on | 
| <code>Markers</code> | off | 
| <code>FontColor</code> | [0, 0, 0] | 
| <code>YLimits</code> | [-3, 3] | 
| <code>Colors</code> | [] | 

 

<b>Inspector Keys</b> 

These serialized keys are exposed by the block inspector. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>TimeSpan</code> 
- <code>LegendPosition</code> 
- <code>ScaleAtStop</code> 
- <code>UpdateMode</code> 
- <code>NormalizeYAxis</code> 
- <code>TicksPosition</code> 
- <code>TickLabels</code> 
- <code>Grid</code> 
- <code>Border</code> 
- <code>Markers</code> 
- <code>FontColor</code> 
- <code>YLimits</code> 
- <code>Colors</code> 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | dashboardScope | 
| Family | Dashboard blocks | 
| Rendered size | 230 x 165 | 
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

[dashboardDisplay](../../nflow_blocks/dashboard/dashboardDisplay.md), [dashboardEdit](../../nflow_blocks/dashboard/dashboardEdit.md), [dashboardGauge](../../nflow_blocks/dashboard/dashboardGauge.md), [dashboardHalfGauge](../../nflow_blocks/dashboard/dashboardHalfGauge.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
