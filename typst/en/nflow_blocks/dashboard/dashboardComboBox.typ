#import "../nelson_help.typ": *

= dashboardComboBox <nflow_blocks:dashboard.dashboardComboBox>


#block-icon(image("dashboardComboBox.svg"))

Selects one of several values from a drop-down list.

== Syntax

- #raw("Block type: dashboardComboBox");

== Description

Selects one of several values from a drop-down list.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardComboBox");], 
  [Label], [Combo Box], 
)
  #strong[Description];

 The Combo Box block writes the value of the selected entry to the bound parameter. Entries pair a label with a value.

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
  [#raw("States");], [\[{"Value": 0, "Label": "Label1"}, {"Value": 1, "Label": "Label2"}, {"Value": 2, "Label": "Label3"}\]], 
  [#raw("UseEnumeratedDataType");], [off], 
  [#raw("EnumeratedDataType");], [], 
  [#raw("Opacity");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("States");
- #raw("UseEnumeratedDataType");
- #raw("EnumeratedDataType");
- #raw("Opacity"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardComboBox], 
  [Family], [Dashboard blocks], 
  [Rendered size], [160 x 25], 
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

#nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope];, #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];, #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];, #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
