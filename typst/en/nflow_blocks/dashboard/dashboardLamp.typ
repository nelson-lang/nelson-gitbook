#import "../nelson_help.typ": *

= dashboardLamp <nflow_blocks:dashboard.dashboardLamp>


#block-icon(image("dashboardLamp.svg"))

Shows a colored indicator that changes with a bound signal.

== Syntax

- #raw("Block type: dashboardLamp");

== Description

Shows a colored indicator that changes with a bound signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardLamp");], 
  [Label], [Lamp], 
)
  #strong[Description];

 The Lamp block displays a colored indicator whose color depends on the value of the bound signal. Value-to-color mappings define the state colors; other values use the default color.

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
  [#raw("ColorDefault");], [\[0.7529411764705882, 0.7529411764705882, 0.7529411764705882\]], 
  [#raw("StateColors");], [\[{"Value": 0, "Color": \[0.39215686274509803, 0.8313725490196079, 0.07450980392156863\]}\]], 
  [#raw("Opacity");], [1], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ColorDefault");
- #raw("StateColors");
- #raw("Opacity"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardLamp], 
  [Family], [Dashboard blocks], 
  [Rendered size], [65 x 60], 
  [Phases], [INIT, AFTER\_STEP], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT resets the widget to its initial reading.
- AFTER\_STEP samples the bound signal and refreshes the display.
- The block visualizes the signal only; it declares no input or output signal ports. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/dashboard/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/DashboardHandlers.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:dashboard.dashboardLinearGauge>)[dashboardLinearGauge];, #nlink(<nflow_blocks:dashboard.dashboardMultiStateImage>)[dashboardMultiStateImage];, #nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton];, #nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
