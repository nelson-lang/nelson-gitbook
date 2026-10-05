#import "../nelson_help.typ": *

= pid <nflow_blocks:continuous.pid>


#block-icon(image("pid.svg"))

Implements a scalar PID controller with output limits.

== Syntax

- #raw("Block type: pid");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Implements a scalar PID controller with output limits.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("pid");], 
  [Label], [PID], 
)
  #strong[Description];

 Proportional-Integral-Derivative controller block. Computes a PID control action from input error.

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
  [#raw("kp");], [1], 
  [#raw("ki");], [0], 
  [#raw("kd");], [0], 
  [#raw("min");], [-inf], 
  [#raw("max");], [inf], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("kp");
- #raw("ki");
- #raw("kd");
- #raw("min");
- #raw("max"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [pid], 
  [Family], [Continuous blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT clears integral, previous input, and output.
- OUTPUT emits the stored controller output. UPDATE computes P, I, and D terms from input and dt.
- The result is clamped between min and max. #strong[Equation or Rule];

 #latex("y = \\operatorname{clamp}\\left(k_p u + k_i\\int u\\,dt + k_d\\frac{du}{dt},\\,min,\\,max\\right)"); #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/pid.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:continuous.derivative>)[derivative];, #nlink(<nflow_blocks:math.gain>)[gain];, #nlink(<nflow_blocks:math.sum>)[sum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
