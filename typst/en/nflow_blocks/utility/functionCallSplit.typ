#import "../nelson_help.typ": *

= functionCallSplit <nflow_blocks:utility.functionCallSplit>

Fans one function-call out to several callees in order.

== Syntax

- #raw("Block type: functionCallSplit");

== Input argument

/ input ports: 1 event input, driven by a functionCallGenerator (or another split).

== Output argument

/ output ports: N event outputs; each drives a function-call subsystem's control port.

== Description

Fans one function-call out to several callees in order.

 A single incoming function-call is routed to every wired callee, in output-port order: output 0 runs first, then output 1, and so on. The block is a compile-time router; it holds no state and never executes on its own; the engine resolves it into the ordered callee list of the driving #nlink(<nflow_blocks:utility.functionCallGenerator>)[functionCallGenerator];. Outputs may fan out to function-call subsystems or to further splits.

 This block has no parameters.

 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [functionCallSplit], 
  [Family], [Utility blocks], 
  [Phases], [(none, resolved at compile time)], 
)
 #strong[Extended Capabilities];

 Code generation: supported for C and Rust.


== See also

#nlink(<nflow_blocks:utility.functionCallGenerator>)[functionCallGenerator];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
