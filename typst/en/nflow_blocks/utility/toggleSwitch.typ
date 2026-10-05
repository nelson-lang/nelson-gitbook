#import "../nelson_help.typ": *

= toggleSwitch <nflow_blocks:utility.toggleSwitch>


#block-icon(image("toggleSwitch.svg"))

Outputs one of two configured values from state.

== Syntax

- #raw("Block type: toggleSwitch");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs one of two configured values from state.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("toggleSwitch");], 
  [Label], [Toggle Switch], 
)
  #strong[Description];

 Two-state toggle source. The block has no inputs and a single output that

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=80, y\=25], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("state");], [0], 
  [#raw("onLabel");], [ON], 
  [#raw("offLabel");], [OFF], 
  [#raw("onValue");], [1], 
  [#raw("offValue");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("state");
- #raw("onLabel");
- #raw("offLabel");
- #raw("onValue");
- #raw("offValue"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [toggleSwitch], 
  [Family], [Utility blocks], 
  [Rendered size], [80 x 50], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- Nonzero state outputs onValue; zero state outputs offValue.
- onLabel and offLabel affect UI labels only. #strong[Equation or Rule];

 #latex("y = \\begin{cases} onValue, & state \\ne 0 \\\\ offValue, & state = 0 \\end{cases}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/toggleSwitch.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:utility.switch>)[switch];, #nlink(<nflow_blocks:source.constant>)[constant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
