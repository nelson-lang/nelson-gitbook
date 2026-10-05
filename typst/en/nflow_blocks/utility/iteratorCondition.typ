#import "../nelson_help.typ": *

= iteratorCondition <nflow_blocks:utility.iteratorCondition>


#block-icon(image("iteratorCondition.svg"))

carries the continue predicate of a While Iterator subsystem

== Syntax

- #raw("Block type: iteratorCondition");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

 #strong[Description];

 Placed inside a While Iterator subsystem, this block marks the boolean signal that decides whether the loop runs again. After each iteration the engine reads its input: a non-zero value continues the loop, a zero value stops it (do-while: the body always runs at least once, and the condition is evaluated after each pass). The loop is also bounded by the subsystem's #raw("MaxIterations"); safety cap.

 The input is mirrored on the output so the same signal can also drive a scope or probe. If no iteratorCondition block is present, or its input is unconnected, the While loop runs the full cap.

 #strong[Input(s)];

 

#table(
  columns: 3,
  table.header([Port], [Role], [Side], ),
  [Port\_1], [Continue predicate: non-zero keeps looping, zero stops.], [left], 
)
 #strong[Output(s)];

 

#table(
  columns: 3,
  table.header([Port], [Role], [Side], ),
  [Port\_1], [Mirror of the condition input (for probing).], [right], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [iteratorCondition], 
  [Family], [Utility blocks], 
  [Phases], [ALGEBRAIC], 
  [Code generation], [native only (not generated)], 
)
 See #strong[For \/ While Iterator subsystems]; for the full loop semantics.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/iterator.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:utility.iteratorNumber>)[iteratorNumber];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
