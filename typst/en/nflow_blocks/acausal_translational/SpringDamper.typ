#import "../nelson_help.typ": *

= SpringDamper <nflow_blocks:acausal_translational.SpringDamper>


#block-icon(image("SpringDamper.svg"))

Parallel spring and damper: F \= k (s\_a - s\_b) + d (v\_a - v\_b).

== Syntax

- #raw("Block type: SpringDamper");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Parallel spring and damper: F \= k (s\_a - s\_b) + d (v\_a - v\_b).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("SpringDamper");], 
  [Label], [SpringDamper], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('SpringDamper', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'spring', {{'a', 'a'}, {'b', 'b'}}, {{'k', 'k', 1, 'N/m'}, {'d', 'd', 1, 'N.s/m'}}, '', '', ...
    'Parallel spring and damper: F = k (s_a - s_b) + d (v_a - v_b).');
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
