#import "../nelson_help.typ": *

= rateTransition <nflow_blocks:discrete.rateTransition>

Resamples a signal at its own sample time (zero-order hold).

== Syntax

- #raw("Block type: rateTransition");

== Input argument

/ input ports: 1 input: the fast-rate signal to resample.

== Output argument

/ output ports: 1 output: the input held at the block's own sample time.

== Description

Resamples a signal at its own sample time (zero-order hold).

 The block samples its input at multiples of #raw("OutPortSampleTime"); and holds that value between ticks, so it can run slower than the diagram's base step. This is the minimal multi-rate primitive: a value #raw("<="); the base step (or the default #raw("-1");, inherit) samples every step, degrading to a plain unit delay; a larger value #raw("Ts"); holds the output for #raw("Ts / base-step"); steps. The sampled value appears one base step after the tick (a zero-order hold with data integrity).

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("OutPortSampleTime");], [-1], 
  [#raw("InitialCondition");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [rateTransition], 
  [Family], [Discrete blocks], 
  [Phases], [INIT, OUTPUT, UPDATE], 
)
 #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/rateTransition.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:discrete.zoh>)[zoh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
