#import "../nelson_help.typ": *

= enumeratedConstant <nflow_blocks:source.enumeratedConstant>


#block-icon(image("enumeratedConstant.svg"))

Outputs a fixed enumeration value (EnumClass documents it, Value is the number).

== Syntax

- #raw("Block type: enumeratedConstant");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs a fixed enumeration value (EnumClass documents it, Value is the number).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source], 
  [Type], [#raw("enumeratedConstant");], 
  [Label], [Enumerated Constant], 
)
  #strong[Description];

 Outputs a fixed enumeration value. #raw("EnumClass"); names the enumeration (documentation only) and #raw("Value"); is the underlying numeric value of the selected member. Behaves like a constant carrying an enumerated meaning; scalar output.

 #strong[Ports];

 This block has no input ports.

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
  [#raw("EnumClass");], [], 
  [#raw("Value");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [enumeratedConstant], 
  [Family], [Source], 
  [Rendered size], [90 x 50], 
  [Phases], [OUTPUT], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= Value (constant, every step). #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/enumeratedConstant.cpp", title: "Runtime")


== Example

EnumClass 'Color', Value 7 outputs 7 at every step.

``````matlab
d.blocks={ struct('id','e','type','enumeratedConstant','inputs',0,'outputs',1,'params',struct('EnumClass','Color','Value',7)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:source.constant>)[constant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
