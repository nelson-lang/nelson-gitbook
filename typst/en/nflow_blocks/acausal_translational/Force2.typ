#import "../nelson_help.typ": *

= Force2 <nflow_blocks:acausal_translational.Force2>


#block-icon(image("Force2.svg"))

Equal and opposite force between two flanges: +F on a, -F on b (signal-driven).

== Syntax

- #raw("Block type: Force2");

== Input argument

/ physical pins: 2 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Equal and opposite force between two flanges: +F on a, -F on b (signal-driven).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("Force2");], 
  [Label], [Force2], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Force2', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force2', {{'a', 'a'}, {'b', 'b'}}, {}, 'F', '', ...
    'Equal and opposite force between two flanges: +F on a, -F on b (signal-driven).');
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
