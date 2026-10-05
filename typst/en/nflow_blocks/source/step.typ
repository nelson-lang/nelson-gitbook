#import "../nelson_help.typ": *

= step <nflow_blocks:source.step>


#block-icon(image("step.svg"))

Generates a unit step at stepTime.

== Syntax

- #raw("Block type: step");

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Generates a unit step at stepTime.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Source blocks], 
  [Type], [#raw("step");], 
  [Label], [Step], 
)
  #strong[Description];

 Generates a step (Heaviside) signal starting at stepTime.

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

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
  [#raw("stepTime");], [0], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("stepTime"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [step], 
  [Family], [Source blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [OUTPUT], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT block with no inputs.
- Outputs 0 before stepTime and 1 at or after stepTime. #strong[Equation or Rule];

 #latex("y = \\begin{cases} 1, & t \\ge stepTime \\\\ 0, & t < stepTime \\end{cases}"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/step.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:source.ramp>)[ramp];, #nlink(<nflow_blocks:source.impulse>)[impulse];, #nlink(<nflow_blocks:source.constant>)[constant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
