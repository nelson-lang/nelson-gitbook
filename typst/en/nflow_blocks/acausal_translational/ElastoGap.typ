#import "../nelson_help.typ": *

= ElastoGap <nflow_blocks:acausal_translational.ElastoGap>


#block-icon(image("ElastoGap.svg"))

One-sided contact spring-damper: acts only while the gap is closed (s\_rel \< s\_rel0).

== Syntax

- #raw("Block type: ElastoGap");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

One-sided contact spring-damper: acts only while the gap is closed (s\_rel \< s\_rel0).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("ElastoGap");], 
  [Label], [ElastoGap], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ElastoGap', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'elastoGap', {{'a', 'a'}, {'b', 'b'}}, ...
    {{'c', 'c', 100, 'N/m'}, {'d', 'd', 1, 'N.s/m'}, {'s_rel0', 's_rel0', 0, 'm'}}, '', '', ...
    'One-sided contact spring-damper: acts only while the gap is closed (s_rel < s_rel0).');
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
