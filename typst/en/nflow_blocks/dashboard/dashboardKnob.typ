#import "../nelson_help.typ": *

= dashboardKnob <nflow_blocks:dashboard.dashboardKnob>


#block-icon(image("dashboardKnob.svg"))

Sets a bound parameter by turning a rotary knob.

== Syntax

- #raw("Block type: dashboardKnob");

== Description

Sets a bound parameter by turning a rotary knob.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardKnob");], 
  [Label], [Knob], 
)
  #strong[Description];

 The Knob block lets you set the bound parameter by turning a rotary control between the configured limits, on a linear or logarithmic scale.

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
  [Block type], [dashboardKnob], 
  [Family], [Dashboard blocks], 
  [Rendered size], [110 x 115], 
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

#nlink(<nflow_blocks:dashboard.dashboardLamp>)[dashboardLamp];, #nlink(<nflow_blocks:dashboard.dashboardLinearGauge>)[dashboardLinearGauge];, #nlink(<nflow_blocks:dashboard.dashboardMultiStateImage>)[dashboardMultiStateImage];, #nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
