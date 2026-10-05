#import "../nelson_help.typ": *

= detectChange <nflow_blocks:discrete.detectChange>


#block-icon(image("detectChange.svg"))

Outputs 1 on any step where the input differs from the previous step.

== Syntax

- #raw("Block type: detectChange");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs 1 on any step where the input differs from the previous step.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete], 
  [Type], [#raw("detectChange");], 
  [Label], [Detect Change], 
)
  #strong[Description];

 Outputs 1 on any step whose input differs from its value at the previous step, else 0. #raw("InitialCondition"); seeds the value "before" the first step. Stateful (the previous input is held); element-wise over a vector input.

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
  [#raw("InitialCondition");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [detectChange], 
  [Family], [Discrete], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= (u !\= prev) ? 1 : 0. UPDATE: prev \= u. #strong[Equation or Rule];

 #latex("y_k = [\\,u_k \\neq u_{k-1}\\,]"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/detectChange.cpp", title: "Runtime")


== Example

Detect that a ramp changes every step (1 after the first sample).

``````matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','dc','type','detectChange','inputs',1,'outputs',1,'params',struct('InitialCondition',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','dc','fromIndex',0,'toIndex',0), struct('from','dc','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:discrete.detectIncrease>)[detectIncrease];, #nlink(<nflow_blocks:discrete.detectDecrease>)[detectDecrease];, #nlink(<nflow_blocks:discrete.risingEdge>)[risingEdge];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
