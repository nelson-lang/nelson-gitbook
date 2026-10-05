#import "../nelson_help.typ": *

= dashboardPushButton <nflow_blocks:dashboard.dashboardPushButton>


#block-icon(image("dashboardPushButton.svg"))

Writes a value to a bound parameter while pressed or toggled.

== Syntax

- #raw("Block type: dashboardPushButton");

== Description

Writes a value to a bound parameter while pressed or toggled.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardPushButton");], 
  [Label], [Push Button], 
)
  #strong[Description];

 The Push Button block writes a value to the bound parameter when pressed. It can act as a momentary or latched button and can show a text label or an icon.

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("LabelPosition");], [Hide], 
  [#raw("Binding");], [], 
  [#raw("ShowInitialText");], [on], 
  [#raw("ButtonText");], [Button], 
  [#raw("OnValue");], [1], 
  [#raw("Opacity");], [1], 
  [#raw("ButtonType");], [Momentary], 
  [#raw("Icon");], [None], 
  [#raw("CustomIcon");], [], 
  [#raw("IconAlignment");], [Left], 
  [#raw("IconOnColor");], [\[0, 0.39215686274509803, 0\]], 
  [#raw("IconOffColor");], [\[0, 1, 0\]], 
  [#raw("IconColor");], [Off], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ButtonText");
- #raw("OnValue");
- #raw("Opacity");
- #raw("ButtonType");
- #raw("Icon");
- #raw("CustomIcon");
- #raw("IconAlignment");
- #raw("IconOnColor");
- #raw("IconOffColor");
- #raw("IconColor"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardPushButton], 
  [Family], [Dashboard blocks], 
  [Rendered size], [91 x 44], 
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

#nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge];, #nlink(<nflow_blocks:dashboard.dashboardRadioButton>)[dashboardRadioButton];, #nlink(<nflow_blocks:dashboard.dashboardRockerSwitch>)[dashboardRockerSwitch];, #nlink(<nflow_blocks:dashboard.dashboardRotarySwitch>)[dashboardRotarySwitch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
