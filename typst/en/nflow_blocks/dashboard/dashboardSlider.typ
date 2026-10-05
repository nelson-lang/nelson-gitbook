#import "../nelson_help.typ": *

= dashboardSlider <nflow_blocks:dashboard.dashboardSlider>


#block-icon(image("dashboardSlider.svg"))

Sets a bound parameter by dragging a linear slider.

== Syntax

- #raw("Block type: dashboardSlider");

== Description

Sets a bound parameter by dragging a linear slider.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardSlider");], 
  [Label], [Slider], 
)
  #strong[Description];

 The Slider block lets you set the bound parameter by dragging a handle along a linear track between the configured limits.

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
  [#raw("ScaleType");], [Linear], 
  [#raw("Limits");], [\[0, -1, 100\]], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ScaleType");
- #raw("Limits"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardSlider], 
  [Family], [Dashboard blocks], 
  [Rendered size], [200 x 90], 
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

#nlink(<nflow_blocks:dashboard.dashboardSliderSwitch>)[dashboardSliderSwitch];, #nlink(<nflow_blocks:dashboard.dashboardToggleSwitch>)[dashboardToggleSwitch];, #nlink(<nflow_blocks:dashboard.dashboardCallbackButton>)[dashboardCallbackButton];, #nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
