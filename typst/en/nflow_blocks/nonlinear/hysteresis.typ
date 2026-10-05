#import "../nelson_help.typ": *

= hysteresis <nflow_blocks:nonlinear.hysteresis>


#block-icon(image("hysteresis.svg"))

Relay: latching two-threshold switch (uHigh, uLow, yHigh, yLow).

== Syntax

- #raw("Block type: hysteresis");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Relay: a latching switch with two thresholds (hysteresis).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Nonlinear], 
  [Type], [#raw("hysteresis");], 
  [Label], [Relay], 
)
  #strong[Description];

 The output latches: it switches to #raw("yHigh"); when the input rises to or above #raw("uHigh");, to #raw("yLow"); when it falls to or below #raw("uLow");, and holds its previous value in between. This two-threshold behaviour is the classic relay with hysteresis. Stateful (latched output).

 #strong[Ports];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Control input compared against the thresholds.], [left], [x\=0, y\=40], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Latched relay output (yHigh or yLow).], [right], [x\=80, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("uHigh");], [1], 
  [#raw("uLow");], [-1], 
  [#raw("yHigh");], [1], 
  [#raw("yLow");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [hysteresis], 
  [Family], [Nonlinear], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Internal state or history], [yes (latched output)], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT: start at yLow.
- OUTPUT: emit the latched value.
- UPDATE: switch to yHigh above uHigh, to yLow below uLow, otherwise hold. #strong[Equation or Rule];

 #latex("y \\leftarrow \\begin{cases} y_{High} & u \\ge u_{High} \\\\ y_{Low} & u \\le u_{Low} \\\\ y & \\text{otherwise} \\end{cases}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/hysteresis.cpp", title: "Runtime")


== Example

Relay driven by a sine crossing both thresholds.

``````matlab
d.blocks={ struct('id','s','type','sine','inputs',0,'outputs',1,'params',struct('Amplitude',2,'Frequency',1)), struct('id','r','type','hysteresis','inputs',1,'outputs',1,'params',struct('uHigh',1,'uLow',-1,'yHigh',1,'yLow',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','r','fromIndex',0,'toIndex',0), struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.02; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
