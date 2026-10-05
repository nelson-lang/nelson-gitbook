#import "../nelson_help.typ": *

= if <nflow_blocks:logic.if>

Selects an action output from a boolean expression over the inputs.

== Syntax

- #raw("Block type: if");

== Input argument

/ input ports: The signals u1..un referenced by the expressions.

== Output argument

/ output ports: One output for the if clause, one per elseif, plus an optional else output.

== Description

Selects an action output from a boolean expression over the inputs.

 The if clause and each elseif clause are evaluated in order over the inputs #raw("u1..un");; the first true clause drives its output to #raw("1.0"); and every other output to #raw("0.0");. With #raw("ShowElse"); set to #raw("on");, an all-false result drives the last (else) output. The expression grammar is restricted: comparisons (#raw("< <= > >= == ~=");), logic (#raw("& | ~");), parentheses, unary minus, numeric literals and #raw("u<k>"); inputs. These outputs are meant to gate action subsystems.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("IfExpression");], [u1 \> 0], 
  [#raw("ElseIfExpressions");], [(comma-separated, empty by default)], 
  [#raw("ShowElse");], [on], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [if], 
  [Family], [Logic blocks], 
  [Phases], [ALGEBRAIC], 
)
 #strong[Extended Capabilities];

 Code generation: supported for C and Rust.


== See also

#nlink(<nflow_blocks:logic.switchCase>)[switchCase];, #nlink(<nflow_blocks:utility.merge>)[merge];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
