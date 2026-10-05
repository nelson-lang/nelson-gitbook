#import "../nelson_help.typ": *

= polynomial <nflow_blocks:math.polynomial>


#block-icon(image("polynomial.svg"))

Evaluates a polynomial with constant Coefficients (highest power first).

== Syntax

- #raw("Block type: polynomial");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Evaluates a polynomial with constant Coefficients (highest power first).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Math], 
  [Type], [#raw("polynomial");], 
  [Label], [Polynomial], 
)
  #strong[Description];

 Evaluates a polynomial with constant #raw("Coefficients"); (highest power first, polyval order) at the input using Horner's method. For Coefficients \= \[a b c\], out \= a\*u^2 + b\*u + c. Pure algebraic feedthrough, element-wise; the Horner form is unrolled over the static coefficients in generated code.

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
  [Port\_1], [Numeric signal produced by the block.], [right], [x\=80, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("Coefficients");], [\[1 0 0\]], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [polynomial], 
  [Family], [Math], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: Horner evaluation acc \= c\[0\]; acc \= acc\*u + c\[k\] for k \= 1..n-1. #strong[Equation or Rule];

 #latex("y = \\sum_{k=0}^{n-1} c_k\\, u^{\\,n-1-k}"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/polynomial.cpp", title: "Runtime")


== Example

Coefficients \[1 -2 3\] at u \= 2: 1\*4 - 2\*2 + 3 \= 3.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2)), struct('id','g','type','polynomial','inputs',1,'outputs',1,'params',struct('Coefficients',[1 -2 3])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','g','fromIndex',0,'toIndex',0), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:math.gain>)[gain];, #nlink(<nflow_blocks:math.mathFunction>)[mathFunction];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
