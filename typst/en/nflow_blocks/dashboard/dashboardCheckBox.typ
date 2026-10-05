#import "../nelson_help.typ": *

= dashboardCheckBox <nflow_blocks:dashboard.dashboardCheckBox>


#block-icon(image("dashboardCheckBox.svg"))

Toggles a bound parameter between two values with a check box.

== Syntax

- #raw("Block type: dashboardCheckBox");

== Description

Toggles a bound parameter between two values with a check box.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardCheckBox");], 
  [Label], [Check Box], 
)
  #strong[Description];

 The Check Box block toggles the bound parameter between two configured values depending on whether it is checked.

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
  [#raw("Label");], [Label], 
  [#raw("Values");], [\[0, 1\]], 
  [#raw("Opacity");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("Label");
- #raw("Values");
- #raw("Opacity"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardCheckBox], 
  [Family], [Dashboard blocks], 
  [Rendered size], [135 x 30], 
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

#nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox];, #nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope];, #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];, #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
