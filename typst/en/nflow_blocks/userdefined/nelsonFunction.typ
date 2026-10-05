#import "../nelson_help.typ": *

= nelsonFunction <nflow_blocks:userdefined.nelsonFunction>


#block-icon(image("nelsonFunction.svg"))

Evaluates a Nelson function at every simulation step.

== Syntax

- #raw("Block type: nelsonFunction");

== Input argument

/ input ports: 1 input port (u, scalar or vector double). An unconnected input reads as 0.

== Output argument

/ output ports: 1 output port (scalar or vector double).

== Description

Calls the Nelson interpreter at every simulation step to evaluate #raw("Fcn"); with the block input #raw("u");. #raw("Fcn"); is a function name (#raw("sin");), an anonymous function source (#raw("@(u) 2*u");) or an expression using #raw("u"); (#raw("atan2(u(1), u(2))");).

  #raw("OutputDimensions");: -1 inherits the input width (element-wise assumption); set an explicit value when the function changes the signal width. The function is probed once at initialization; a width mismatch stops the simulation with a clear diagnostic, as does any error raised by the function.

 Because the interpreter is invoked at every step, this block is slower than native blocks. For pure math expressions prefer the #raw("expression"); block, which also generates code.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("Fcn");], [sin], 
  [#raw("OutputDimensions");], [-1], 
  [#raw("SampleTime");], [-1], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [nelsonFunction], 
  [Family], [User-Defined Function blocks], 
  [Phases], [INIT, ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Signal data type], [double, scalar or vector], 
  [Code generation], [no (rejected with an explicit error; replace with the expression block)], 
)
 

#source-ref("modules/nflow_blocks/libraries/userdefined/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/userdefined/nelsonFunction.cpp", title: "Runtime")


== Example

Open the user-defined function demo (Nelson Function + Expression)

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
``````


== See also

#nlink(<nflow_blocks:userdefined.expression>)[expression];, #nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
