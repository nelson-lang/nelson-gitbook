#import "../nelson_help.typ": *

= dashboardMultiStateImage <nflow_blocks:dashboard.dashboardMultiStateImage>


#block-icon(image("dashboardMultiStateImage.svg"))

Shows one of several images selected by a bound signal.

== Syntax

- #raw("Block type: dashboardMultiStateImage");

== Description

Shows one of several images selected by a bound signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardMultiStateImage");], 
  [Label], [MultiStateImage], 
)
  #strong[Description];

 The MultiStateImage block displays one image from a configured set, selected by the value of the bound signal. Values without a matching state use the default image.

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
  [#raw("States");], [\[{"State": 0, "Size": \[0, 0\], "Image": "", "Thumbnail": ""}\]], 
  [#raw("DefaultImage");], [{"Size": \[0, 0\], "Image": "", "Thumbnail": ""}], 
  [#raw("ScaleMode");], [Fill with fixed aspect ratio], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("States");
- #raw("DefaultImage");
- #raw("ScaleMode"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardMultiStateImage], 
  [Family], [Dashboard blocks], 
  [Rendered size], [190 x 180], 
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

#nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton];, #nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge];, #nlink(<nflow_blocks:dashboard.dashboardRadioButton>)[dashboardRadioButton];, #nlink(<nflow_blocks:dashboard.dashboardRockerSwitch>)[dashboardRockerSwitch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
