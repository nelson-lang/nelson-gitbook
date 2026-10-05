#import "../nelson_help.typ": *

= switchCase <nflow_blocks:logic.switchCase>

Routes an integer control to one of several action outputs.

== Syntax

- #raw("Block type: switchCase");

== Input argument

/ input ports: 1 input port: the control value.

== Output argument

/ output ports: One output per case, plus an optional default output.

== Description

Routes an integer control to one of several action outputs.

 The scalar input is truncated toward zero to an integer and matched against #raw("CaseConditions");, a cell literal such as #raw("{1, [7 9 4]}");. The first matching case drives its output to #raw("1.0"); and every other output to #raw("0.0");. With #raw("ShowDefaultCase"); set to #raw("on");, an unmatched value drives the last (default) output. There is no fall-through. These outputs are meant to gate action subsystems.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("CaseConditions");], [{1}], 
  [#raw("ShowDefaultCase");], [on], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [switchCase], 
  [Family], [Logic blocks], 
  [Phases], [ALGEBRAIC], 
)
 #strong[Extended Capabilities];

 Code generation: supported for C and Rust.


== See also

#nlink(<nflow_blocks:logic.if>)[if];, #nlink(<nflow_blocks:utility.merge>)[merge];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
