#import "../nelson_help.typ": *

= gain <nflow_blocks:math.gain>


#block-icon(image("gain.svg"))

Multiplies the input by a scalar gain.

== Syntax

- #raw("Block type: gain");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Multiplies the input by a scalar gain.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math blocks], 
  [Type], [#raw("gain");], 
  [Label], [Gain], 
)
  #strong[Description];

 Simple multiplicative gain block. Multiplies the input by a constant gain.

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
  [#raw("gain");], [2], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("gain"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [gain], 
  [Family], [Math blocks], 
  [Rendered size], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- Algebraic block.
- If input 1 is unconnected, the stored output is emitted; otherwise gain is resolved and multiplied by the input. #strong[Equation or Rule];

 #latex("y = gain\\,u"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/gain.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:math.bias>)[bias];, #nlink(<nflow_blocks:math.mult>)[mult];, #nlink(<nflow_blocks:math.sum>)[sum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
