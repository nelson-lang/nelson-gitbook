#import "../nelson_help.typ": *

= dashboardCallbackButton <nflow_blocks:dashboard.dashboardCallbackButton>


#block-icon(image("dashboardCallbackButton.svg"))

Runs a callback and writes a value when clicked.

== Syntax

- #raw("Block type: dashboardCallbackButton");

== Description

Runs a callback and writes a value when clicked.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardCallbackButton");], 
  [Label], [Callback Button], 
)
  #strong[Description];

 The Callback Button block runs the configured callback function when clicked and can write a value to the bound parameter. Use it to trigger scripted actions from the dashboard.

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
  [#raw("ShowInitialText");], [off], 
  [#raw("ButtonText");], [Callback Button], 
  [#raw("ButtonType");], [Momentary], 
  [#raw("ClickFcn");], [], 
  [#raw("OnValue");], [1], 
  [#raw("PressDelay");], [500], 
  [#raw("PressFcn");], [], 
  [#raw("RepeatInterval");], [0], 
  [#raw("AutoActivate");], [true], 
  [#raw("fixedAspectRatio");], [off], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ButtonText");
- #raw("ButtonType");
- #raw("ClickFcn");
- #raw("OnValue");
- #raw("PressDelay");
- #raw("PressFcn");
- #raw("RepeatInterval");
- #raw("AutoActivate");
- #raw("fixedAspectRatio"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardCallbackButton], 
  [Family], [Dashboard blocks], 
  [Rendered size], [110 x 35], 
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

#nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox];, #nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox];, #nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope];, #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
