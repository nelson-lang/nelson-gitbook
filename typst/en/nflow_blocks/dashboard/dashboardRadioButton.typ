#import "../nelson_help.typ": *

= dashboardRadioButton <nflow_blocks:dashboard.dashboardRadioButton>


#block-icon(image("dashboardRadioButton.svg"))

Selects one of several values with a group of radio buttons.

== Syntax

- #raw("Block type: dashboardRadioButton");

== Description

Selects one of several values with a group of radio buttons.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardRadioButton");], 
  [Label], [Radio Button], 
)
  #strong[Description];

 The Radio Button block presents a group of mutually exclusive options and writes the value of the selected option to the bound parameter.

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
  [#raw("ButtonGroupName");], [Group], 
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
- #raw("ButtonGroupName");
- #raw("States");
- #raw("UseEnumeratedDataType");
- #raw("EnumeratedDataType");
- #raw("Opacity"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardRadioButton], 
  [Family], [Dashboard blocks], 
  [Rendered size], [135 x 115], 
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

#nlink(<nflow_blocks:dashboard.dashboardRockerSwitch>)[dashboardRockerSwitch];, #nlink(<nflow_blocks:dashboard.dashboardRotarySwitch>)[dashboardRotarySwitch];, #nlink(<nflow_blocks:dashboard.dashboardSlider>)[dashboardSlider];, #nlink(<nflow_blocks:dashboard.dashboardSliderSwitch>)[dashboardSliderSwitch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
