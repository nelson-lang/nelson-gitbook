#import "../nelson_help.typ": *

= constraint <nflow_blocks:continuous.constraint>


#block-icon(image("constraint.svg"))

Algebraic (differential-algebraic) constraint state solved by the DAE solver.

== Syntax

- #raw("Block type: constraint");

== Input argument

/ input ports: 1 input port(s) declared: the constraint residual g.

== Output argument

/ output ports: 1 output port(s) declared: the algebraic state z.

== Description

Algebraic (differential-algebraic) constraint state solved by the DAE solver.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Continuous blocks], 
  [Type], [#raw("constraint");], 
  [Label], [Constraint], 
)
  #strong[Description];

 The Constraint block introduces one #strong[algebraic]; state #strong[z]; (its output). It has no derivative of its own; instead the DAE solver adjusts #strong[z]; so that the block's input signal #strong[g]; is driven to zero. Wire the surrounding diagram so the input computes the constraint residual #strong[g(z, x) \= 0]; (typically using the block's own output z), and the solver holds the system on that manifold.

 This block is only meaningful under the differential-algebraic solver: set the model's #raw("solver"); to #raw("dae");. Under any other solver, or in generated C \/ Rust code, it is rejected with a clear message (there is no explicit lowering for a differential-algebraic system).

 #strong[Ports];

 #strong[Input(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [The constraint residual g, driven to zero.], [left], [x\=0, y\=40], 
)
 #strong[Output(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Side], [Position], ),
  [Port\_1], [The algebraic state z the solver determines.], [right], [x\=80, y\=40], 
)
 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("InitialCondition");], [0], 
)
 The initial condition is only an initial guess for z; the solver refines it to a consistent value with IDACalcIC.

 #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [constraint], 
  [Family], [Continuous blocks], 
  [Rendered size], [80 x 80], 
  [Phases], [INIT, OUTPUT, DERIVATIVE], 
  [Internal state or history], [one algebraic (mass-0) state], 
  [Signal data type], [double numeric values], 
)
 #strong[Equation or Rule];

 #latex("0 = g(z, x),\\qquad y = z"); #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/constraint.cpp", title: "Runtime")


== See also

#nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
