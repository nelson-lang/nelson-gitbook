#import "../nelson_help.typ": *

= signalGenerator <nflow_blocks:source.signalGenerator>


#block-icon(image("signalGenerator.svg"))

Configurable periodic source: sine, square or sawtooth (Amplitude, Frequency).

== Syntax

- #raw("Block type: signalGenerator");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Configurable periodic source: sine, square or sawtooth (Amplitude, Frequency).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source], 
  [Type], [#raw("signalGenerator");], 
  [Label], [Signal Generator], 
)
  #strong[Description];

 A configurable periodic source with no input. #raw("Waveform"); is "sine", "square" or "sawtooth", scaled by #raw("Amplitude");, with #raw("Frequency"); in Hz. sine \= A\*sin(2\*pi\*f\*t); square \= A\*sign(sin(2\*pi\*f\*t)); sawtooth ramps linearly from -A to +A over each period. Stateless (a pure function of time).

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
  [#raw("Waveform");], [sine], 
  [#raw("Amplitude");], [1], 
  [#raw("Frequency");], [1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [signalGenerator], 
  [Family], [Source], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: evaluates the selected waveform at the current time. #strong[Equation or Rule];

 #latex("y(t) = A\\,\\sin(2\\pi f t) \\quad(\\text{sine})"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/signalGenerator.cpp", title: "Runtime")


== Example

Generate a 1 Hz sine of amplitude 2.

``````matlab
d.blocks={ struct('id','g','type','signalGenerator','inputs',0,'outputs',1,'params',struct('Waveform','sine','Amplitude',2,'Frequency',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:source.sine>)[sine];, #nlink(<nflow_blocks:source.repeatingSequenceInterpolated>)[repeatingSequenceInterpolated];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
