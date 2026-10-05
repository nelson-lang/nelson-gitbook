#import "../nelson_help.typ": *

= initialCondition <nflow_blocks:utility.initialCondition>


#block-icon(image("initialCondition.svg"))

Forces the output to InitialValue at the first step, then passes the input.

== Syntax

- #raw("Block type: initialCondition");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Forces the output to InitialValue at the first step, then passes the input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility], 
  [Type], [#raw("initialCondition");], 
  [Label], [IC], 
)
  #strong[Description];

 Emits the parameter #raw("InitialValue"); at simulation time 0 and passes the input through unchanged for every step afterwards (t \> 0). Useful to seed an algebraic loop or to define the value a feedback signal takes before the first real sample is available. Feedthrough for t \> 0.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=25], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=90, y\=25], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("InitialValue");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [initialCondition], 
  [Family], [Utility], 
  [Rendered size], [90 x 50], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: out \= (t \> 0) ? u : InitialValue. #strong[Equation or Rule];

 #latex("y(t) = \\begin{cases} \\text{InitialValue} & t = 0 \\\\ u(t) & t > 0 \\end{cases}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/initialCondition.cpp", title: "Runtime")


== Example

Break an algebraic loop by seeding the first sample to 5.

``````matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','ic','type','initialCondition','inputs',1,'outputs',1,'params',struct('InitialValue',5)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','ic','fromIndex',0,'toIndex',0), struct('from','ic','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.5; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
