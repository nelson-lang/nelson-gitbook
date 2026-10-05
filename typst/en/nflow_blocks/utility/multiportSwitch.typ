#import "../nelson_help.typ": *

= multiportSwitch <nflow_blocks:utility.multiportSwitch>

Routes one of several data inputs to the output, selected by a control input.

== Syntax

- #raw("Block type: multiportSwitch");

== Input argument

/ input ports: 1 control + N data input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Routes one of several data inputs to the output, selected by a control input.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility], 
  [Type], [#raw("multiportSwitch");], 
  [Label], [Multiport Switch], 
)
 #strong[Description];

 Input port 1 is the control; the remaining ports are data inputs. The control is rounded and clamped to the number of data ports (one-based), and the selected data input is copied to the output element-wise.

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/multiportSwitch.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:utility.mux>)[mux];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
