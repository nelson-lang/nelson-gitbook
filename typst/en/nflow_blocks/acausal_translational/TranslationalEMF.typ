#import "../nelson_help.typ": *

= TranslationalEMF <nflow_blocks:acausal_translational.TranslationalEMF>


#block-icon(image("TranslationalEMF.svg"))

Linear electro-mechanical converter: back-emf v \= k v\_flange, force F \= k i.

== Syntax

- #raw("Block type: TranslationalEMF");

== Input argument

/ physical pins: 3 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Linear electro-mechanical converter: back-emf v \= k v\_flange, force F \= k i.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("TranslationalEMF");], 
  [Label], [TranslationalEMF], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('TranslationalEMF', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force', {{'p', 'a'}, {'n', 'b'}, {'flange', 'node'}}, {{'k', 'k', 1, 'N/A'}}, '', '', ...
    'Linear electro-mechanical converter: back-emf v = k v_flange, force F = k i.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_translational.Mass>)[Mass];, #nlink(<nflow_blocks:acausal_translational.SlidingMass>)[SlidingMass];, #nlink(<nflow_blocks:acausal_translational.MassWithWeight>)[MassWithWeight];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
