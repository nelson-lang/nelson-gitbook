#import "../nelson_help.typ": *

= intervalTest <nflow_blocks:logic.intervalTest>


#block-icon(image("intervalTest.svg"))

Outputs 1 when the input lies within \[LowerLimit, UpperLimit\], else 0.

== Syntax

- #raw("Block type: intervalTest");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs 1 when the input lies within \[LowerLimit, UpperLimit\], else 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("intervalTest");], 
  [Label], [Interval Test], 
)
  #strong[Description];

 Tests whether the input #raw("u"); lies inside a static interval. The bounds #raw("LowerLimit"); and #raw("UpperLimit"); are parameters; #raw("IntervalClosedLeft"); and #raw("IntervalClosedRight"); select whether each end is inclusive (#raw(">=");\/#raw("<=");) or exclusive (#raw(">");\/#raw("<");). The test is applied element-wise over a vector input.

 Pure algebraic feedthrough (no state): the output at each step depends only on the current input.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=100, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("LowerLimit");], [0], 
  [#raw("UpperLimit");], [1], 
  [#raw("IntervalClosedLeft");], [1], 
  [#raw("IntervalClosedRight");], [1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [intervalTest], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: out \= (u \>\= LowerLimit) && (u \<\= UpperLimit) ? 1 : 0, with strict comparisons when the corresponding end is open. #strong[Equation or Rule];

 #latex("y = \\begin{cases} 1 & \\text{lo} \\le u \\le \\text{up} \\\\ 0 & \\text{otherwise} \\end{cases}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/intervalTest.cpp", title: "Runtime")


== Example

Test a constant against \[0, 1\] and display the result.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',0.5)), struct('id','it','type','intervalTest','inputs',1,'outputs',1,'params',struct('LowerLimit',0,'UpperLimit',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','it','fromIndex',0,'toIndex',0), struct('from','it','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.intervalTestDynamic>)[intervalTestDynamic];, #nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
