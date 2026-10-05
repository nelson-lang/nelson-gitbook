#import "../nelson_help.typ": *

= dataStoreWrite <nflow_blocks:utility.dataStoreWrite>


#block-icon(image("dataStoreWrite.svg"))

Writes its input to the named data store.

== Syntax

- #raw("Block type: dataStoreWrite");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: No output ports (this block has none).

== Description

Writes its input to the named data store.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility], 
  [Type], [#raw("dataStoreWrite");], 
  [Label], [Data Store Write], 
)
  #strong[Description];

 Writes the input value to the named memory #raw("DataStoreName"); declared by a #raw("dataStoreMemory"); block (a matching entry is created if none exists). The write happens in the UPDATE phase, so a #raw("dataStoreRead"); of the same name observes it on the next step. One input, no output. Native only; scalar.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=30], 
)
 This block has no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("DataStoreName");], [A], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dataStoreWrite], 
  [Family], [Utility], 
  [Rendered size], [70 x 60], 
  [Phases], [INIT, UPDATE], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- UPDATE: store\[DataStoreName\] \= u. #strong[Extended Capabilities];

 Native runtime only (this block is not code-generated).

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/dataStore.cpp", title: "Runtime")


== Example

See the dataStoreMemory example, which wires a ramp through a Write.

``````matlab
% See the dataStoreMemory example for a complete Memory/Write/Read wiring.
``````


== See also

#nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory];, #nlink(<nflow_blocks:utility.dataStoreRead>)[dataStoreRead];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
