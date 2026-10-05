#import "../nelson_help.typ": *

= Accelerate <nflow_blocks:acausal_translational.Accelerate>


#block-icon(image("Accelerate.svg"))

Prescribed motion: the flange acceleration follows the input signal.

== Syntax

- #raw("Block type: Accelerate");

== Input argument

/ physical pins: 1 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Prescribed motion: the flange acceleration follows the input signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("Accelerate");], 
  [Label], [Accelerate], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Accelerate', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'accelerate', {{'flange', 'node'}}, {{'s0', 's0', 0, 'm'}, {'v0', 'v0', 0, 'm/s'}}, 'a', '', ...
    'Prescribed motion: the flange acceleration follows the input signal.');
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
