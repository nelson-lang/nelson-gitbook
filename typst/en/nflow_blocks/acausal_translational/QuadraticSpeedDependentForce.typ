#import "../nelson_help.typ": *

= QuadraticSpeedDependentForce <nflow_blocks:acausal_translational.QuadraticSpeedDependentForce>


#block-icon(image("QuadraticSpeedDependentForce.svg"))

Quadratic (drag) resistance to ground: F \= -d v |v|.

== Syntax

- #raw("Block type: QuadraticSpeedDependentForce");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Quadratic (drag) resistance to ground: F \= -d v |v|.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("QuadraticSpeedDependentForce");], 
  [Label], [QuadraticSpeedDependentForce], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('QuadraticSpeedDependentForce', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'quadraticSpeedForce', {{'flange', 'node'}}, {{'d', 'd', 1, 'N.s2/m2'}}, '', '', ...
    'Quadratic (drag) resistance to ground: F = -d v |v|.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_translational.TranslationalEMF>)[TranslationalEMF];, #nlink(<nflow_blocks:acausal_translational.Mass>)[Mass];, #nlink(<nflow_blocks:acausal_translational.SlidingMass>)[SlidingMass];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
