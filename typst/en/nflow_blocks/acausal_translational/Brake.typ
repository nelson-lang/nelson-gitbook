#import "../nelson_help.typ": *

= Brake <nflow_blocks:acausal_translational.Brake>


#block-icon(image("Brake.svg"))

Signal-actuated friction brake to ground: the input sets the peak braking force.

== Syntax

- #raw("Block type: Brake");

== Input argument

/ physical pins: 1 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Signal-actuated friction brake to ground: the input sets the peak braking force.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("Brake");], 
  [Label], [Brake], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Brake', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'brake', {{'flange', 'node'}}, {{'vEps', 'vEps', 0.001, 'm/s'}}, 'f', '', ...
    'Signal-actuated friction brake to ground: the input sets the peak braking force.');
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
