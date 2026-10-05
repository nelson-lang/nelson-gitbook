#import "../nelson_help.typ": *

= wrapToZero <nflow_blocks:math.wrapToZero>


#block-icon(image("wrapToZero.svg"))

Outputs 0 when the input reaches Threshold, else passes it through.

== Syntax

- #raw("Block type: wrapToZero");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs 0 when the input reaches Threshold, else passes it through.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math], 
  [Type], [#raw("wrapToZero");], 
  [Label], [Wrap To Zero], 
)
  #strong[Description];

 Outputs 0 when the input is at or above #raw("Threshold");, else passes the input through unchanged (Wrap To Zero). Pure algebraic feedthrough, element-wise over the input width.

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
  [#raw("Threshold");], [255], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [wrapToZero], 
  [Family], [Math], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: out \= (u \>\= Threshold) ? 0 : u. #strong[Equation or Rule];

 #latex("y = \\begin{cases} 0 & u \\ge \\text{Threshold} \\\\ u & \\text{otherwise} \\end{cases}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/wrapToZero.cpp", title: "Runtime")


== Example

With Threshold \= 5: input 7 wraps to 0, input 3 passes through.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',7)), struct('id','g','type','wrapToZero','inputs',1,'outputs',1,'params',struct('Threshold',5)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','g','fromIndex',0,'toIndex',0), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
