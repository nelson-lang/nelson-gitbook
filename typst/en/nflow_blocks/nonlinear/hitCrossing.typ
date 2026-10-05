#import "../nelson_help.typ": *

= hitCrossing <nflow_blocks:nonlinear.hitCrossing>


#block-icon(image("hitCrossing.svg"))

Outputs 1 on the step where the input crosses HitCrossingOffset.

== Syntax

- #raw("Block type: hitCrossing");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs 1 on the step where the input crosses HitCrossingOffset.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Non-Linear], 
  [Type], [#raw("hitCrossing");], 
  [Label], [Hit Crossing], 
)
  #strong[Description];

 Detects when the scalar input reaches #raw("HitCrossingOffset"); in the configured direction and outputs 1 on the step where the crossing occurs, else 0. #raw("HitCrossingDirection"); is "rising", "falling" or "either". Stateful: the previous input (relative to the offset) is held so a straddle can be detected, and the first step is primed so it never false-fires.

 Because the input is read in the OUTPUT phase, drive this block from a source rather than through an ALGEBRAIC feedthrough block (whose output would be one step stale).

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=40], 
)
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
  [#raw("HitCrossingOffset");], [0], 
  [#raw("HitCrossingDirection");], [either], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [hitCrossing], 
  [Family], [Non-Linear], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= crossing(prev - offset, u - offset, direction) ? 1 : 0. UPDATE: prev \= u. #strong[Equation or Rule];

 #latex("y_k = [\\,(u_{k-1}-\\text{off})\\,\\text{and}\\,(u_k-\\text{off})\\ \\text{straddle } 0\\,]"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/hitCrossing.cpp", title: "Runtime")


== Example

Detect a rising crossing of 0.5 by a step source.

``````matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','hc','type','hitCrossing','inputs',1,'outputs',1,'params',struct('HitCrossingOffset',0.5,'HitCrossingDirection','rising')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','hc','fromIndex',0,'toIndex',0), struct('from','hc','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:discrete.detectChange>)[detectChange];, #nlink(<nflow_blocks:logic.intervalTest>)[intervalTest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
