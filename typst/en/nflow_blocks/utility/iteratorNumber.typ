#import "../nelson_help.typ": *

= iteratorNumber <nflow_blocks:utility.iteratorNumber>


#block-icon(image("iteratorNumber.svg"))

outputs the current iteration index inside a For\/While iterator subsystem

== Syntax

- #raw("Block type: iteratorNumber");

== Input argument

/ input ports: 0 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

 #strong[Description];

 Placed inside a For Iterator or While Iterator subsystem, this source block outputs the current iteration index of the enclosing loop: 1 on the first pass, 2 on the second, and so on. Outside an iterator subsystem it outputs 0.

 The value lets the body of the loop depend on which pass is running (for example, building a running sum, or forming a loop-termination condition for a While Iterator).

 #strong[Output(s)];

 

#table(
  columns: 3,
  table.header([Port], [Role], [Side], ),
  [Port\_1], [Current 1-based iteration index (0 outside an iterator body).], [right], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [iteratorNumber], 
  [Family], [Utility blocks], 
  [Phases], [OUTPUT], 
  [Code generation], [native only (not generated)], 
)
 See #strong[For \/ While Iterator subsystems]; for the full loop semantics.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/iterator.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:utility.iteratorCondition>)[iteratorCondition];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
