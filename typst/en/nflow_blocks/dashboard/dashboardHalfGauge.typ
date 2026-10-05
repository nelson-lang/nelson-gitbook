#import "../nelson_help.typ": *

= dashboardHalfGauge <nflow_blocks:dashboard.dashboardHalfGauge>


#block-icon(image("dashboardHalfGauge.svg"))

Displays a bound signal on a 180-degree semicircular scale.

== Syntax

- #raw("Block type: dashboardHalfGauge");

== Description

Displays a bound signal on a 180-degree semicircular scale.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardHalfGauge");], 
  [Label], [Half Gauge], 
)
  #strong[Description];

 The Half Gauge block shows the value of the bound signal on a half-circle (180 degree) scale between the configured limits.

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
  [#raw("ScaleColors");], [\[\]], 
  [#raw("Limits");], [\[0, -1, 100\]], 
  [#raw("FontColor");], [\[0, 0, 0\]], 
  [#raw("Opacity");], [1], 
  [#raw("ScaleDirection");], [Clockwise], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ScaleColors");
- #raw("Limits");
- #raw("FontColor");
- #raw("Opacity");
- #raw("ScaleDirection"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardHalfGauge], 
  [Family], [Dashboard blocks], 
  [Rendered size], [156 x 108], 
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

#nlink(<nflow_blocks:dashboard.dashboardKnob>)[dashboardKnob];, #nlink(<nflow_blocks:dashboard.dashboardLamp>)[dashboardLamp];, #nlink(<nflow_blocks:dashboard.dashboardLinearGauge>)[dashboardLinearGauge];, #nlink(<nflow_blocks:dashboard.dashboardMultiStateImage>)[dashboardMultiStateImage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
