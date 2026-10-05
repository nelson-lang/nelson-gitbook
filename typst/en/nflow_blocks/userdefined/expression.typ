#import "../nelson_help.typ": *

= expression <nflow_blocks:userdefined.expression>


#block-icon(image("expression.svg"))

Evaluates a restricted math expression of u during simulation and in generated code.

== Syntax

- #raw("Block type: expression");

== Input argument

/ input ports: 1 input port (u, scalar double).

== Output argument

/ output ports: 1 output port (scalar double).

== Description

Evaluates the math expression #raw("Expr"); with #raw("u"); (block input), #raw("t"); (current time), #raw("dt"); (step) and the diagram variables. The same expression engine drives the simulation and the C\/Rust code generation, so simulated and generated behaviors match.

  Supported grammar: constants #raw("pi");, #raw("e");, #raw("inf");; unary functions #raw("abs, ceil, floor, round, sign, sqrt, exp, log, log10, log2, acos, asin, atan, cos, cosh, sin, sinh, tan, tanh, sinc");; binary functions #raw("pow, atan2, min, max");; ternary #raw("clamp");; operators #raw("+ - * / ^");. Non-math constructs are rejected at code generation.

 For arbitrary Nelson code (any function, handles), use the #raw("nelsonFunction"); block instead (simulation only).

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("Expr");], [u], 
)
 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [expression], 
  [Family], [User-Defined Function blocks], 
  [Phases], [INIT, ALGEBRAIC], 
  [Direct feedthrough], [yes], 
  [Signal data type], [double, scalar], 
  [Code generation], [yes (C and Rust)], 
)
 Code generation: supported for C and Rust.

 

#source-ref("modules/nflow_blocks/libraries/userdefined/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/userdefined/expression.cpp", title: "Runtime")


== Example

Open the user-defined function demo (Expression + Nelson Function)

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
``````


== See also

#nlink(<nflow_blocks:userdefined.nelsonFunction>)[nelsonFunction];, #nlink(<nflow_blocks:math.gain>)[gain];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version (replaces the codegen-only userFunc block; the expression block also simulates)],
)

// Author: Allan CORNET
