#import "../nelson_help.typ": *

= pulse <nflow_blocks:source.pulse>


#block-icon(image("pulse.svg"))

Pulse Generator: a periodic pulse train (Amplitude, Period, Width, StartTime, Offset).

== Syntax

- #raw("Block type: pulse");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Pulse Generator: a periodic pulse train.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source], 
  [Type], [#raw("pulse");], 
  [Label], [Pulse Generator], 
)
  #strong[Description];

 A periodic pulse train with no input. Starting at #raw("StartTime");, the output is #raw("Offset + Amplitude"); during the first #raw("Width"); percent of each #raw("Period");, and #raw("Offset"); otherwise. Stateless (a pure function of time).

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
  [#raw("Amplitude");], [1], 
  [#raw("Period");], [1], 
  [#raw("Width");], [50], 
  [#raw("StartTime");], [0], 
  [#raw("Offset");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [pulse], 
  [Family], [Source], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: evaluates the pulse train at the current time. #strong[Equation or Rule];

 #latex("y(t) = \\text{Offset} + \\begin{cases} A & \\bmod(t-t_0, T) < \\frac{W}{100} T \\\\ 0 & \\text{otherwise} \\end{cases}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/periodic.cpp", title: "Runtime")


== Example

Generate a pulse train (amplitude 1, period 1, 50% duty).

``````matlab
d.blocks={ struct('id','p','type','pulse','inputs',0,'outputs',1,'params',struct('Amplitude',1,'Period',1,'Width',50,'StartTime',0,'Offset',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','p','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.05; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:source.signalGenerator>)[signalGenerator];, #nlink(<nflow_blocks:source.step>)[step];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
