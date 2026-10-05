#import "../nelson_help.typ": *

= subsystem <nflow_blocks:utility.subsystem>


#block-icon(image("subsystem.svg"))

Runs a nested block diagram as a single block.

== Syntax

- #raw("Block type: subsystem");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Runs a nested block diagram as a single block.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("subsystem");], 
  [Label], [Subsystem], 
)
  #strong[Description];

 A container block that embeds another diagram as a reusable subsystem. Supports external input\/output mapping.

 #strong[For-each];

 With a #raw("forEach"); parameter #raw("{\"numIterations\": N, \"partition\": [ports]}"); the subsystem runs its body #raw("N"); times per step: a partitioned input of width #raw("N * w"); feeds iteration #raw("i"); its #raw("i");-th width-#raw("w"); slice, an unpartitioned input is broadcast to every iteration, and each inner output of width #raw("w_out"); is concatenated into an outer output of width #raw("N * w_out");. This applies one reusable sub-diagram element-wise across a vector or channel bank. The body may carry per-iteration state, discrete (a unit delay or discrete filter) or continuous (an integrator or transfer function integrated by the solver): each iteration keeps independent history \/ integrates its own channel.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=40], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=120, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("name");], [Subsystem], 
  [#raw("externalInputs");], [\[\]], 
  [#raw("externalOutputs");], [\[\]], 
  [#raw("subsystem");], [], 
  [#raw("forEach");], [\[\] (no iteration)], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("name");
- #raw("externalInputs");
- #raw("externalOutputs");
- #raw("subsystem"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [subsystem], 
  [Family], [Utility blocks], 
  [Rendered size], [120 x 80], 
  [Phases], [INIT, OUTPUT, ALGEBRAIC, UPDATE], 
  [Direct feedthrough], [yes], 
  [Internal state or history], [yes], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT builds inner state from the subsystem specification and schedules inner blocks by phase.
- OUTPUT routes external inputs, runs inner output blocks, and copies external outputs.
- ALGEBRAIC evaluates inner algebraic blocks; UPDATE advances inner update blocks. #strong[Equation or Rule];

 nested model execution

 #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


== See also

#nlink(<nflow_blocks:utility.mux>)[mux];, #nlink(<nflow_blocks:utility.demux>)[demux];, #nlink(<nflow_blocks:utility.comment>)[comment];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
