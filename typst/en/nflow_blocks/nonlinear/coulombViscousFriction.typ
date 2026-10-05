#import "../nelson_help.typ": *

= coulombViscousFriction <nflow_blocks:nonlinear.coulombViscousFriction>


#block-icon(image("coulombViscousFriction.svg"))

Static friction: viscous term Gain\*u plus signed Coulomb term Offset\*sign(u).

== Syntax

- #raw("Block type: coulombViscousFriction");

== Input argument

/ input ports: 1 input port(s) declared.

== Output argument

/ output ports: 1 output port(s) declared.

== Description

Static friction: viscous term Gain\*u plus signed Coulomb term Offset\*sign(u).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Non-Linear], 
  [Type], [#raw("coulombViscousFriction");], 
  [Label], [Coulomb & Viscous Friction], 
)
  #strong[Description];

 Models a static friction characteristic combining a viscous term proportional to the input (#raw("Gain");) and a Coulomb term of fixed magnitude (#raw("Offset");) that opposes the direction of motion: #raw("y = Gain*u + Offset*sign(u)");. Because #raw("sign(0) = 0");, the output is exactly 0 at rest. Two parallel sloped segments with a jump of 2\*Offset across the origin. Scalar or vector (element-wise).

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
  [#raw("Gain");], [1], 
  [#raw("Offset");], [1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [coulombViscousFriction], 
  [Family], [Non-Linear], 
  [Rendered size], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Internal state or history], [no], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- ALGEBRAIC: y \= Gain\*u + Offset\*sign(u), element-wise over the input width. #strong[Equation or Rule];

 #latex("y = \\text{Gain}\\cdot u + \\text{Offset}\\cdot \\operatorname{sign}(u)"); #strong[Extended Capabilities];

 Code generation: supported for C and Rust.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/coulombViscousFriction.cpp", title: "Runtime")


== Example

Gain \= 2, Offset \= 3: input 2 -\> 7, input -2 -\> -7, input 0 -\> 0.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2)), struct('id','f','type','coulombViscousFriction','inputs',1,'outputs',1,'params',struct('Gain',2,'Offset',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','f','fromIndex',0,'toIndex',0), struct('from','f','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== See also

#nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];, #nlink(<nflow_blocks:nonlinear.saturation>)[saturation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
