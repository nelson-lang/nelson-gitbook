#import "../nelson_help.typ": *

= dataStoreRead <nflow_blocks:utility.dataStoreRead>


#block-icon(image("dataStoreRead.svg"))

Outputs the value of the named data store.

== Syntax

- #raw("Block type: dataStoreRead");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Outputs the value of the named data store.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility], 
  [Type], [#raw("dataStoreRead");], 
  [Label], [Data Store Read], 
)
  #strong[Description];

 Outputs the current value of the named memory #raw("DataStoreName"); (0 if the store was never declared or written). The read happens in the OUTPUT phase, so it returns the value written on the previous step. No input, one output. Native only; scalar.

 #strong[Ports];

 This block has no input ports.

 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=70, y\=30], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("DataStoreName");], [A], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dataStoreRead], 
  [Family], [Utility], 
  [Rendered size], [70 x 60], 
  [Phases], [OUTPUT], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- OUTPUT: out \= store\[DataStoreName\] (0 if absent). #strong[Extended Capabilities];

 Native runtime only (this block is not code-generated).

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/dataStore.cpp", title: "Runtime")


== Example

See the dataStoreMemory example, which reads 'M' back to a scope.

``````matlab
% See the dataStoreMemory example for a complete Memory/Write/Read wiring.
``````


== See also

#nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory];, #nlink(<nflow_blocks:utility.dataStoreWrite>)[dataStoreWrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
