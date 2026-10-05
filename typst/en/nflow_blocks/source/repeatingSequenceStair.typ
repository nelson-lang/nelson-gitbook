#import "../nelson_help.typ": *

= repeatingSequenceStair <nflow_blocks:source.repeatingSequenceStair>


#block-icon(image("repeatingSequenceStair.svg"))

Periodic staircase: one OutValues entry per sample, repeating.

== Syntax

- #raw("Block type: repeatingSequenceStair");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Periodic staircase: one OutValues entry per sample, repeating.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source], 
  [Type], [#raw("repeatingSequenceStair");], 
  [Label], [Repeating Sequence Stair], 
)
  #strong[Description];

 A periodic staircase source with no input. Emits one entry of the #raw("OutValues"); vector per sample, holding each for a step, and repeats from the start once the end is reached. An empty vector outputs 0; a single entry acts as a constant.

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
  [#raw("OutValues");], [\[0 1 2 3 2 1\]], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [repeatingSequenceStair], 
  [Family], [Source], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= OutValues\[index\]. UPDATE: index \= (index + 1) mod N. #strong[Equation or Rule];

 #latex("y_k = \\text{OutValues}[k \\bmod N]"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/repeatingSequenceStair.cpp", title: "Runtime")


== Example

Repeat the sequence 10, 20, 30.

``````matlab
d.blocks={ struct('id','r','type','repeatingSequenceStair','inputs',0,'outputs',1,'params',struct('OutValues',[10 20 30])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:source.repeatingSequenceInterpolated>)[repeatingSequenceInterpolated];, #nlink(<nflow_blocks:source.counterLimited>)[counterLimited];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
