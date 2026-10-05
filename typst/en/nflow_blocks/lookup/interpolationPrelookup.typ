#import "../nelson_help.typ": *

= interpolationPrelookup <nflow_blocks:lookup.interpolationPrelookup>


#block-icon(image("interpolationPrelookup.svg"))

Interpolates a static Table from a prelookup \[k, f\] pair.

== Syntax

- #raw("Block type: interpolationPrelookup");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Interpolates a static Table from a prelookup \[k, f\] pair.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Lookup Tables], 
  [Type], [#raw("interpolationPrelookup");], 
  [Label], [Interpolation Using Prelookup], 
)
  #strong[Description];

 Interpolates the static #raw("Table"); using the index\/fraction pair produced by a #raw("prelookup"); block. Input port 0 is the 2-element vector #raw("[k, f]");; the output is #raw("tbl[k] + f * (tbl[k+1] - tbl[k])");, i.e. linear interpolation at the shared interval. k is clamped to a valid table index. Sharing one #raw("prelookup"); across several of these blocks avoids repeating the interval search per table.

 Native runtime (the 2-vector input is a follow-up for code generation).

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
  [#raw("Table");], [\[0 1 4 9 16\]], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [interpolationPrelookup], 
  [Family], [Lookup Tables], 
  [Rendered size], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: out \= tbl\[k\] + f \* (tbl\[k+1\] - tbl\[k\]). #strong[Equation or Rule];

 #latex("y = t_k + f\\,(t_{k+1} - t_k)"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/interpolationPrelookup.cpp", title: "Runtime")


== Example

See the prelookup example, which wires prelookup into this block.

``````matlab
% See the prelookup example for a complete Prelookup -> Interpolation wiring.
``````


== See also

#nlink(<nflow_blocks:lookup.prelookup>)[prelookup];, #nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
