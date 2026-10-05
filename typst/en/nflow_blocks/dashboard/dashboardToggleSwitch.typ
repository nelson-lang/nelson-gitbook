#import "../nelson_help.typ": *

= dashboardToggleSwitch <nflow_blocks:dashboard.dashboardToggleSwitch>


#block-icon(image("dashboardToggleSwitch.svg"))

Toggles a bound parameter between two states with a toggle switch.

== Syntax

- #raw("Block type: dashboardToggleSwitch");

== Description

Toggles a bound parameter between two states with a toggle switch.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardToggleSwitch");], 
  [Label], [Toggle Switch], 
)
  #strong[Description];

 The Toggle Switch block toggles the bound parameter between its two configured states.

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
  [#raw("States");], [\[{"Value": 0, "Label": "Off"}, {"Value": 1, "Label": "On"}\]], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("States"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardToggleSwitch], 
  [Family], [Dashboard blocks], 
  [Rendered size], [55 x 100], 
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

#nlink(<nflow_blocks:dashboard.dashboardCallbackButton>)[dashboardCallbackButton];, #nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox];, #nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox];, #nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
