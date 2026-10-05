#import "../nelson_help.typ": *

= dashboardDisplay <nflow_blocks:dashboard.dashboardDisplay>


#block-icon(image("dashboardDisplay.svg"))

Shows the current value of a bound signal as formatted text.

== Syntax

- #raw("Block type: dashboardDisplay");

== Description

Shows the current value of a bound signal as formatted text.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardDisplay");], 
  [Label], [Display], 
)
  #strong[Description];

 The Display block shows the instantaneous value of the bound signal as text, using the selected numeric format. It updates after every simulation step.

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
  [#raw("Format");], [short], 
  [#raw("Alignment");], [Center], 
  [#raw("Opacity");], [1], 
  [#raw("Layout");], [Preserve dimensions], 
  [#raw("FormatString");], [%d], 
  [#raw("GridColor");], [\[0.502, 0.502, 0.502\]], 
  [#raw("ShowGrid");], [on], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("Format");
- #raw("Alignment");
- #raw("Opacity");
- #raw("Layout");
- #raw("FormatString");
- #raw("GridColor");
- #raw("ShowGrid"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardDisplay], 
  [Family], [Dashboard blocks], 
  [Rendered size], [180 x 40], 
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

#nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];, #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge];, #nlink(<nflow_blocks:dashboard.dashboardHalfGauge>)[dashboardHalfGauge];, #nlink(<nflow_blocks:dashboard.dashboardKnob>)[dashboardKnob];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
