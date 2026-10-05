#import "../nelson_help.typ": *

= toWorkspace <nflow_blocks:sink.toWorkspace>


#block-icon(image("toWorkspace.svg"))

Writes the input signal to a Nelson workspace variable.

== Syntax

- #raw("Block type: toWorkspace");

== Input argument

/ input ports: 1 input port (scalar or vector, any signal type).

== Description

Accumulates its input signal at major simulation steps and, when the simulation stops, writes it into the base-workspace variable #raw("VariableName");.

  #raw("Decimation"); keeps one sample out of k (starting with the first). #raw("MaxDataPoints"); keeps only the last N decimated samples (#raw("inf"); keeps everything). #raw("SaveFormat"); selects the variable layout:

 

- #raw("Structure With Time");: fields #raw("time");, #raw("signals.values"); (NxW), #raw("signals.dimensions");, #raw("signals.label");, #raw("blockName");;
- #raw("Structure");: same with an empty #raw("time");;
- #raw("Array");: NxW matrix of samples (use the simulation time grid for timing). In generated code the block is a no-op (workspace logging has no meaning there).

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("VariableName");], [simout], 
  [#raw("MaxDataPoints");], [inf], 
  [#raw("Decimation");], [1], 
  [#raw("SaveFormat");], [Structure With Time], 
  [#raw("SampleTime");], [-1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [toWorkspace], 
  [Family], [Sink blocks], 
  [Phases], [INIT, AFTER\_STEP], 
  [Signal data type], [any (recorded as double)], 
  [Code generation], [no-op], 
)
 Code generation: supported for C and Rust.

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/toWorkspace.cpp", title: "Runtime")


== Example

Open the To Workspace demo (logs a sine to 'simout')

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow']);
``````


== See also

#nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace];, #nlink(<nflow_blocks:sink.scope>)[scope];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
