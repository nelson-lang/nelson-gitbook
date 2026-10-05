#import "../nelson_help.typ": *

= logicalOperator <nflow_blocks:logic.logicalOperator>


#block-icon(image("logicalOperator.svg"))

Configurable logical AND\/OR\/NAND\/NOR\/XOR\/XNOR\/NOT of the inputs.

== Syntax

- #raw("Block type: logicalOperator");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Configurable logical AND\/OR\/NAND\/NOR\/XOR\/XNOR\/NOT of the inputs.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("logicalOperator");], 
  [Label], [Logical Operator], 
)
  #strong[Description];

 A single dispatchable logical block: #raw("Operator"); selects AND, OR, NAND, NOR, XOR, XNOR or NOT. It reduces the N inputs element-wise (a nonzero input is true); NOT takes a single input and negates it. Complements the fixed and \/ or \/ xor \/ not blocks with one configurable block.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=26], 
  [Port\_2], [Numeric signal read by the block.], [left], [x\=0, y\=54], 
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
  [#raw("Operator");], [AND], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [logicalOperator], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: reduce the N boolean inputs with the chosen operator; the output is Boolean (0\/1). #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/logicalOperator.cpp", title: "Runtime")


== Example

NAND of two constants: NAND(1, 1) \= 0.

``````matlab
d.blocks={ struct('id','a','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','b','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','g','type','logicalOperator','inputs',2,'outputs',1,'params',struct('Operator','NAND')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','a','to','g','fromIndex',0,'toIndex',0), struct('from','b','to','g','fromIndex',0,'toIndex',1), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.and>)[and];, #nlink(<nflow_blocks:logic.or>)[or];, #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
