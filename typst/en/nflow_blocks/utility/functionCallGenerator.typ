#import "../nelson_help.typ": *

= functionCallGenerator <nflow_blocks:utility.functionCallGenerator>

Drives a function-call subsystem a fixed number of times per step.

== Syntax

- #raw("Block type: functionCallGenerator");

== Input argument

/ input ports: None.

== Output argument

/ output ports: 1 event output: wire it to the control port of a function-call subsystem.

== Description

Drives a function-call subsystem a fixed number of times per step.

 On each major step the generator invokes every function-call subsystem wired to its event output, running each one #raw("NumberOfIterations"); times (its ALGEBRAIC pass followed by an immediate internal UPDATE). This is caller-driven execution: the callee runs on demand, outside the normal topological schedule, rather than once per step like an ordinary block. A function-call subsystem is a subsystem whose control port kind is #raw("functionCall");.

 Function-call subsystems require the default (discrete \/ fixed-step) engine; selecting an explicit continuous solver is rejected in this version.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("NumberOfIterations");], [1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [functionCallGenerator], 
  [Family], [Utility blocks], 
  [Phases], [ALGEBRAIC], 
)
 #strong[Extended Capabilities];

 Code generation: supported for C and Rust.


== See also

#nlink(<nflow_blocks:utility.subsystem>)[subsystem];, #nlink(<nflow_blocks:utility.merge>)[merge];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
