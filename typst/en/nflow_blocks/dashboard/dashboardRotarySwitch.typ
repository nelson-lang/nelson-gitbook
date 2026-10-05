#import "../nelson_help.typ": *

= dashboardRotarySwitch <nflow_blocks:dashboard.dashboardRotarySwitch>


#block-icon(image("dashboardRotarySwitch.svg"))

Selects one of several states with a rotary selector.

== Syntax

- #raw("Block type: dashboardRotarySwitch");

== Description

Selects one of several states with a rotary selector.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardRotarySwitch");], 
  [Label], [Rotary Switch], 
)
  #strong[Description];

 The Rotary Switch block selects one of several configured states with a rotary selector and writes the selected value to the bound parameter.

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("LabelPosition");], [Top], 
  [#raw("Binding");], [], 
  [#raw("ShowInitialText");], [on], 
  [#raw("States");], [\[{"Value": 0, "Label": "Off"}, {"Value": 1, "Label": "Low"}, {"Value": 2, "Label": "Medium"}, {"Value": 3, "Label": "High"}\]], 
  [#raw("UseEnumeratedDataType");], [off], 
  [#raw("EnumeratedDataType");], [], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("States");
- #raw("UseEnumeratedDataType");
- #raw("EnumeratedDataType"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardRotarySwitch], 
  [Family], [Dashboard blocks], 
  [Rendered size], [125 x 100], 
  [Phases], [none], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- The block declares no simulation phases; it is driven by the dashboard, not by the solver.
- User interaction writes the selected value to the bound parameter before or during the run.
- The block declares no input or output signal ports. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/dashboard/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/DashboardHandlers.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:dashboard.dashboardSlider>)[dashboardSlider];, #nlink(<nflow_blocks:dashboard.dashboardSliderSwitch>)[dashboardSliderSwitch];, #nlink(<nflow_blocks:dashboard.dashboardToggleSwitch>)[dashboardToggleSwitch];, #nlink(<nflow_blocks:dashboard.dashboardCallbackButton>)[dashboardCallbackButton];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
