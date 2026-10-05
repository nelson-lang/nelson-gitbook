#import "../nelson_help.typ": *

= dashboardScope <nflow_blocks:dashboard.dashboardScope>


#block-icon(image("dashboardScope.svg"))

Plots bound signals against simulation time on a multi-channel scope.

== Syntax

- #raw("Block type: dashboardScope");

== Description

Plots bound signals against simulation time on a multi-channel scope.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Dashboard blocks], 
  [Type], [#raw("dashboardScope");], 
  [Label], [Dashboard Scope], 
)
  #strong[Description];

 The Dashboard Scope block displays one or more bound signals as curves over a rolling time span. It samples the connected signals after every simulation step and refreshes the plot, so signal trends can be watched live while a model runs.

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
  [#raw("TimeSpan");], [auto], 
  [#raw("LegendPosition");], [Top], 
  [#raw("ScaleAtStop");], [on], 
  [#raw("UpdateMode");], [Wrap], 
  [#raw("NormalizeYAxis");], [off], 
  [#raw("TicksPosition");], [Outside], 
  [#raw("TickLabels");], [All], 
  [#raw("Grid");], [All], 
  [#raw("Border");], [on], 
  [#raw("Markers");], [off], 
  [#raw("FontColor");], [\[0, 0, 0\]], 
  [#raw("YLimits");], [\[-3, 3\]], 
  [#raw("Colors");], [\[\]], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("TimeSpan");
- #raw("LegendPosition");
- #raw("ScaleAtStop");
- #raw("UpdateMode");
- #raw("NormalizeYAxis");
- #raw("TicksPosition");
- #raw("TickLabels");
- #raw("Grid");
- #raw("Border");
- #raw("Markers");
- #raw("FontColor");
- #raw("YLimits");
- #raw("Colors"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dashboardScope], 
  [Family], [Dashboard blocks], 
  [Rendered size], [230 x 165], 
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

#nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];, #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];, #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge];, #nlink(<nflow_blocks:dashboard.dashboardHalfGauge>)[dashboardHalfGauge];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
