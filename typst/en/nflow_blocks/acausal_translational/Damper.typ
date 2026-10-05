#import "../nelson_help.typ": *

= Damper <nflow_blocks:acausal_translational.Damper>


#block-icon(image("Damper.svg"))

Linear translational damper: F \= d (v\_a - v\_b).

== Syntax

- #raw("Block type: Damper");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Linear translational damper: F \= d (v\_a - v\_b).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("Damper");], 
  [Label], [Damper], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Damper', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'damper', {{'a', 'a'}, {'b', 'b'}}, {{'d', 'd', 1, 'N.s/m'}}, '', '', ...
    'Linear translational damper: F = d (v_a - v_b).');
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
