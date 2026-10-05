#import "../nelson_help.typ": *

= combinatorialLogic <nflow_blocks:logic.combinatorialLogic>


#block-icon(image("combinatorialLogic.svg"))

Truth-table lookup: an N-bit input vector indexes a 2^N-entry TruthTable.

== Syntax

- #raw("Block type: combinatorialLogic");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Truth-table lookup: an N-bit input vector indexes a 2^N-entry TruthTable.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Logic \/ Bit Operations], 
  [Type], [#raw("combinatorialLogic");], 
  [Label], [Combinatorial Logic], 
)
  #strong[Description];

 The single input is a vector of N boolean elements that forms a binary index (element 0 is the most-significant bit); the output is #raw("TruthTable[index]");, where #raw("TruthTable"); is a 2^N-entry column. Non-zero inputs count as 1. The block is registered vector-aware (it accepts a vector input and produces a scalar output).

 Native runtime only: the vector-input row lookup is not yet code-generated. An out-of-range index or an empty table yields 0.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=90, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("TruthTable");], [\[0 1 1 0\]], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [combinatorialLogic], 
  [Family], [Logic \/ Bit Operations], 
  [Rendered size], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: index \= sum over bits (u\[i\] !\= 0) \* 2^(N-1-i); out \= TruthTable\[index\]. #strong[Equation or Rule];

 #latex("y = \\text{TruthTable}\\big[\\textstyle\\sum_i u_i\\,2^{N-1-i}\\big]"); #strong[Extended Capabilities];

 Native runtime only (this block is not code-generated).

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/combinatorialLogic.cpp", title: "Runtime")


== Example

A 2-input XOR truth table \[0 1 1 0\] applied to the vector \[1 0\] gives 1.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',[1 0])), struct('id','cl','type','combinatorialLogic','inputs',1,'outputs',1,'params',struct('TruthTable',[0 1 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','cl','fromIndex',0,'toIndex',0), struct('from','cl','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
