#import "../nelson_help.typ": *

= stopSimulation <nflow_blocks:sink.stopSimulation>


#block-icon(image("stopSimulation.svg"))

Ends the run at the end of the step where its input first becomes nonzero.

== Syntax

- #raw("Block type: stopSimulation");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: No output ports (this block has none).

== Description

Ends the run at the end of the step where its input first becomes nonzero.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Sinks], 
  [Type], [#raw("stopSimulation");], 
  [Label], [Stop], 
)
  #strong[Description];

 Stops the simulation at the end of the step where its input first becomes nonzero, by setting #raw("SimCtx::stopRequested"); (honored by both the fixed-step and the solver loops). Typically driven by a comparison or interval-test block to stop on a condition. One input, no output; native only.

 Registered in the AFTER\_STEP phase so it observes each step's settled outputs before deciding to stop.

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [Numeric signal read by the block.], [left], [x\=0, y\=20], 
)
 This block has no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#emph[none];], [], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [stopSimulation], 
  [Family], [Sinks], 
  [Rendered size], [40 x 40], 
  [Phases], [AFTER\_STEP], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- AFTER\_STEP: if any input element !\= 0, set stopRequested \= true. #strong[Extended Capabilities];

 Native runtime only (this block is not code-generated).

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/stopSimulation.cpp", title: "Runtime")


== Example

Stop the run once a step source turns on at t \= 0.45.

``````matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','stop','type','stopSimulation','inputs',1,'outputs',0,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','stop','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];, #nlink(<nflow_blocks:logic.intervalTest>)[intervalTest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
