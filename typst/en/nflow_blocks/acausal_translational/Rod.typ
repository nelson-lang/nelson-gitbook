#import "../nelson_help.typ": *

= Rod <nflow_blocks:acausal_translational.Rod>


#block-icon(image("Rod.svg"))

Rigid massless rod: s\_a \= s\_b (structural merge; ratio defaults to 1).

== Syntax

- #raw("Block type: Rod");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Rigid massless rod: s\_a \= s\_b (structural merge; ratio defaults to 1).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("Rod");], 
  [Label], [Rod], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Rod', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'gear', {{'a', 'a'}, {'b', 'b'}}, {{'ratio', 'ratio', 1, '1'}}, '', '', ...
    'Rigid massless rod: s_a = s_b (structural merge; ratio defaults to 1).');
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
