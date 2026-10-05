#import "../nelson_help.typ": *

= prelookup <nflow_blocks:lookup.prelookup>


#block-icon(image("prelookup.svg"))

Computes the interval index k and fraction f for a shared breakpoint search.

== Syntax

- #raw("Block type: prelookup");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Computes the interval index k and fraction f for a shared breakpoint search.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Lookup Tables], 
  [Type], [#raw("prelookup");], 
  [Label], [Prelookup], 
)
  #strong[Description];

 Given a scalar input #raw("u"); and the strictly increasing #raw("BreakpointsForDimension1"); vector, computes the interval index k with bp\[k\] \<\= u \< bp\[k+1\] and the fraction f \= (u - bp\[k\]) \/ (bp\[k+1\] - bp\[k\]). The output is the 2-element vector #raw("[k, f]");, which one or more #raw("interpolationPrelookup"); blocks can reuse to interpolate several tables without repeating the interval search.

 Out-of-range inputs are clipped: below the first breakpoint gives \[0, 0\]; at or above the last gives \[N-2, 1\]. Code generation is supported for C and Rust (the vector-expansion pass lowers the block into scalar helpers).

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=90, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("BreakpointsForDimension1");], [\[0 1 2 3 4\]], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [prelookup], 
  [Family], [Lookup Tables], 
  [Rendered size], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: locate k, compute f, output \[k, f\]. #strong[Equation or Rule];

 #latex("k : b_k \\le u < b_{k+1},\\quad f = \\frac{u - b_k}{b_{k+1} - b_k}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/prelookup.cpp", title: "Runtime")


== Example

Prelookup u \= 2.5 over \[0 1 2 3 4\], then interpolate table \[0 1 4 9 16\] -\> 6.5.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2.5)), struct('id','pl','type','prelookup','inputs',1,'outputs',1,'params',struct('BreakpointsForDimension1',[0 1 2 3 4])), struct('id','ip','type','interpolationPrelookup','inputs',1,'outputs',1,'params',struct('Table',[0 1 4 9 16])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','pl','fromIndex',0,'toIndex',0), struct('from','pl','to','ip','fromIndex',0,'toIndex',0), struct('from','ip','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:lookup.interpolationPrelookup>)[interpolationPrelookup];, #nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
