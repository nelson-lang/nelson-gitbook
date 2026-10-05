#import "../nelson_help.typ": *

= risingEdge <nflow_blocks:discrete.risingEdge>


#block-icon(image("risingEdge.svg"))

Outputs 1 on the step where the input crosses from \<\= 0 to \> 0.

== Syntax

- #raw("Block type: risingEdge");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs 1 on the step where the input crosses from \<\= 0 to \> 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Discrete], 
  [Type], [#raw("risingEdge");], 
  [Label], [Rising Edge], 
)
  #strong[Description];

 Detects a rising edge: outputs 1 on the step where the input goes from non-positive to strictly positive (#raw("prev <= 0 && u > 0");), else 0. #raw("InitialCondition"); seeds the previous value. Stateful; element-wise.

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
  [Block type], [risingEdge], 
  [Family], [Discrete], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= (prev \<\= 0 && u \> 0) ? 1 : 0. UPDATE: prev \= u. #strong[Equation or Rule];

 #latex("y_k = [\\,u_{k-1} \\le 0 \\wedge u_k > 0\\,]"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/risingEdge.cpp", title: "Runtime")


== Example

Drive a step (0 then 1) and capture the single rising edge.

``````matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','re','type','risingEdge','inputs',1,'outputs',1,'params',struct('InitialCondition',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','re','fromIndex',0,'toIndex',0), struct('from','re','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:discrete.fallingEdge>)[fallingEdge];, #nlink(<nflow_blocks:discrete.detectChange>)[detectChange];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
