#import "../nelson_help.typ": *

= repeatingSequenceInterpolated <nflow_blocks:source.repeatingSequenceInterpolated>


#block-icon(image("repeatingSequenceInterpolated.svg"))

Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table.

== Syntax

- #raw("Block type: repeatingSequenceInterpolated");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source], 
  [Type], [#raw("repeatingSequenceInterpolated");], 
  [Label], [Repeating Sequence Interpolated], 
)
  #strong[Description];

 A periodic, piecewise-linear source with no input. The #raw("TimeValues");\/#raw("OutValues"); table defines one period (period \= last TimeValues entry); the output linearly interpolates the table at t wrapped into \[0, period) and repeats. Stateless (a pure function of time).

 #strong[Ports];

 This block has no input ports.

 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=80, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("TimeValues");], [\[0 1 2\]], 
  [#raw("OutValues");], [\[0 2 0\]], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [repeatingSequenceInterpolated], 
  [Family], [Source], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: tm \= mod(t, period); out \= linear interpolation of OutValues over TimeValues at tm. #strong[Equation or Rule];

 #latex("y(t) = \\text{interp}\\big(\\text{TimeValues}, \\text{OutValues}, t \\bmod T\\big)"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/repeatingSequenceInterpolated.cpp", title: "Runtime")


== Example

A triangle wave of period 1 s from \[0 0.5 1\] -\> \[0 1 0\].

``````matlab
d.blocks={ struct('id','r','type','repeatingSequenceInterpolated','inputs',0,'outputs',1,'params',struct('TimeValues',[0 0.5 1],'OutValues',[0 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:source.repeatingSequenceStair>)[repeatingSequenceStair];, #nlink(<nflow_blocks:source.signalGenerator>)[signalGenerator];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
