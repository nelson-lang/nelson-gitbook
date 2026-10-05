#import "../nelson_help.typ": *

= fromWorkspace <nflow_blocks:source.fromWorkspace>


#block-icon(image("fromWorkspace.svg"))

Reads a signal from a Nelson workspace variable.

== Syntax

- #raw("Block type: fromWorkspace");

== Output argument

/ output ports: 1 output port (scalar or vector double, width taken from the variable).

== Description

Emits the signal stored in the base-workspace variable #raw("VariableName");. The variable is read once when the simulation starts. Two data formats are accepted:

 

- a #raw("[time, values]"); matrix: first column \= time, remaining columns \= signal elements;
- a struct with fields #raw("time"); (Nx1) and #raw("signals.values"); (NxW).  Time values must be non-decreasing, without Inf or NaN; duplicated time stamps describe discontinuities. With #raw("Interpolate"); on, output is linearly interpolated (before the first point: linear extrapolation from the first two points; at a duplicated time the newest value wins). With #raw("Interpolate"); off, the block holds the latest sample (zero before the first point).

 After the final data point, #raw("OutputAfterFinalValue"); selects #raw("Extrapolation"); (linear, requires interpolation), #raw("Setting to zero"); or #raw("Holding final value");.

 Code generation bakes the samples into constant tables with the same lookup semantics (scalar signals).

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("VariableName");], [simin], 
  [#raw("SampleTime");], [0], 
  [#raw("Interpolate");], [on], 
  [#raw("OutputAfterFinalValue");], [Extrapolation], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [fromWorkspace], 
  [Family], [Source blocks], 
  [Phases], [INIT, OUTPUT], 
  [Signal data type], [double, scalar or vector], 
  [Code generation], [yes (constant tables, scalar signals)], 
)
 Code generation: supported for C and Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/fromWorkspace.cpp", title: "Runtime")


== Example

Run the From\/To Workspace demo (defines 'simin' then opens the model)

``````matlab
run([modulepath('nflow_blocks'), '/examples/workspace/From_Workspace_Demo.m']);
``````


== See also

#nlink(<nflow_blocks:sink.toWorkspace>)[toWorkspace];, #nlink(<nflow_blocks:source.fileSource>)[fileSource];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
