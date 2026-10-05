#import "../nelson_help.typ": *

= dataStoreMemory <nflow_blocks:utility.dataStoreMemory>


#block-icon(image("dataStoreMemory.svg"))

Declares a named scalar memory shared across the model (initial value).

== Syntax

- #raw("Block type: dataStoreMemory");

== Input argument

/ input ports: No input ports (this block has none).

== Output argument

/ output ports: No output ports (this block has none).

== Description

Declares a named scalar memory shared across the model (initial value).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility], 
  [Type], [#raw("dataStoreMemory");], 
  [Label], [Data Store Memory], 
)
  #strong[Description];

 Declares a named scalar memory (#raw("DataStoreName");) with an #raw("InitialValue");, without any wire. The memory is written by #raw("dataStoreWrite"); and read by #raw("dataStoreRead"); blocks referencing the same name, allowing model-wide communication without routing lines. The store is a per-thread map re-seeded at each run by this block's INIT.

 Native only; scalar. Reads observe the previous step's write (one-step latency, like a unit delay).

 #strong[Ports];

 This block has no input ports.

 This block has no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("DataStoreName");], [A], 
  [#raw("InitialValue");], [0], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [dataStoreMemory], 
  [Family], [Utility], 
  [Rendered size], [70 x 60], 
  [Phases], [INIT], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- INIT: store\[DataStoreName\] \= InitialValue. The block has no ports. #strong[Extended Capabilities];

 Native runtime only (this block is not code-generated).

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/dataStore.cpp", title: "Runtime")


== Example

Declare memory 'M', write a ramp into it and read it back with one-step latency.

``````matlab
d.blocks={ struct('id','mem','type','dataStoreMemory','inputs',0,'outputs',0,'params',struct('DataStoreName','M','InitialValue',0)), struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','wr','type','dataStoreWrite','inputs',1,'outputs',0,'params',struct('DataStoreName','M')), struct('id','rd','type','dataStoreRead','inputs',0,'outputs',1,'params',struct('DataStoreName','M')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','wr','fromIndex',0,'toIndex',0), struct('from','rd','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:utility.dataStoreWrite>)[dataStoreWrite];, #nlink(<nflow_blocks:utility.dataStoreRead>)[dataStoreRead];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
