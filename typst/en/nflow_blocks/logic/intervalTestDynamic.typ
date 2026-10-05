#import "../nelson_help.typ": *

= intervalTestDynamic <nflow_blocks:logic.intervalTestDynamic>


#block-icon(image("intervalTestDynamic.svg"))

Like intervalTest but the bounds come from input ports (lo, u, up).

== Syntax

- #raw("Block type: intervalTestDynamic");

== Input argument

/ input ports: 3 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Like intervalTest but the bounds come from input ports (lo, u, up).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("intervalTestDynamic");], 
  [Label], [Interval Test Dynamic], 
)
  #strong[Description];

 Signal-driven variant of #raw("intervalTest");: instead of parameters, the lower bound, the value and the upper bound are read from input ports 1, 2 and 3 respectively, so the acceptance window can move at run time. Output is 1 when #raw("lo <= u <= up");. #raw("IntervalClosedLeft");\/#raw("IntervalClosedRight"); control end inclusivity. Element-wise over the value width; scalar bounds broadcast.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=20], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=40], 
  [Port\_3], [Numeric signal read by the block.], [left], [x\=0, y\=60], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=100, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("IntervalClosedLeft");], [1], 
  [#raw("IntervalClosedRight");], [1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [intervalTestDynamic], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: reads port 0 \= lower, port 1 \= value, port 2 \= upper; out \= 1 when the value is inside the (possibly open) interval. #strong[Equation or Rule];

 #latex("y = \\begin{cases} 1 & \\text{lo} \\le u \\le \\text{up} \\\\ 0 & \\text{otherwise} \\end{cases}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/intervalTestDynamic.cpp", title: "Runtime")


== Example

Feed lo\=1, u\=ramp, up\=3 and record when the ramp enters the window.

``````matlab
d.blocks={ struct('id','lo','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','u','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','up','type','constant','inputs',0,'outputs',1,'params',struct('Value',3)), struct('id','it','type','intervalTestDynamic','inputs',3,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','lo','to','it','fromIndex',0,'toIndex',0), struct('from','u','to','it','fromIndex',0,'toIndex',1), struct('from','up','to','it','fromIndex',0,'toIndex',2), struct('from','it','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.intervalTest>)[intervalTest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
