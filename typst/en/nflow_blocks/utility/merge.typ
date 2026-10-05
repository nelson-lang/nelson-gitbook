#import "../nelson_help.typ": *

= merge <nflow_blocks:utility.merge>

Recombines the outputs of mutually-exclusive conditional subsystems.

== Syntax

- #raw("Block type: merge");

== Input argument

/ input ports: Each input is driven by a conditional (action) subsystem.

== Output argument

/ output ports: 1 output: the value of the branch that ran this step.

== Description

Recombines the outputs of mutually-exclusive conditional subsystems.

 The inputs are driven directly by conditional subsystems, only one of which executes on a given step. The output takes the value of the input whose source subsystem ran this step; when no source ran, it holds its previous value (starting from #raw("InitialOutput");). If two sources run on the same step, the later input port wins.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("InitialOutput");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [merge], 
  [Family], [Utility blocks], 
  [Phases], [INIT, ALGEBRAIC], 
)
 #strong[Extended Capabilities];

 Code generation: supported for C and Rust.


== See also

#nlink(<nflow_blocks:logic.if>)[if];, #nlink(<nflow_blocks:logic.switchCase>)[switchCase];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
