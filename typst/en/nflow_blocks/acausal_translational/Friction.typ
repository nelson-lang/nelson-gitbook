#import "../nelson_help.typ": *

= Friction <nflow_blocks:acausal_translational.Friction>


#block-icon(image("Friction.svg"))

Regularised Coulomb friction (event-free): F \= -Fc tanh(v \/ vEps).

== Syntax

- #raw("Block type: Friction");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Regularised Coulomb friction (event-free): F \= -Fc tanh(v \/ vEps).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("Friction");], 
  [Label], [Friction], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Friction', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'friction', {{'flange', 'node'}}, {{'Fc', 'Fc', 1, 'N'}, {'vEps', 'vEps', 0.001, 'm/s'}}, '', '', ...
    'Regularised Coulomb friction (event-free): F = -Fc tanh(v / vEps).');
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
