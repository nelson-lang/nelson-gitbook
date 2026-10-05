#import "../nelson_help.typ": *

= busCreator <nflow_blocks:utility.busCreator>

Groups heterogeneous signals (or nested buses) into one bus.

== Syntax

- #raw("Block type: busCreator");

== Input argument

/ input ports: 2 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Groups heterogeneous signals (or nested buses) into one bus.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("busCreator");], 
  [Label], [Bus Creator], 
)
 #strong[Description];

 Packs its input signals into one bus signal. Member names come from the #raw("MemberNames"); parameter (default #raw("signalN");); an input that is itself a bus becomes a nested member.

 A named #raw("BusType"); (declared in the model-level #raw("busTypes"); array) validates the member layout; #raw("NonVirtual"); marks the bus for struct emission at the generated-code interface. Members keep their full descriptor: numeric type (including exact int64\/uint64), complexity and N-D shape.

 Bus members are extracted by path with the #raw("busSelector"); block; a bus wired to any other block is a compile-time error.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/busCreator.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:utility.busSelector>)[busSelector];, #nlink(<nflow_blocks:utility.mux>)[mux];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
