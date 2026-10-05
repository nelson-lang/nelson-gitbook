#import "../nelson_help.typ": *

= ElastoBacklash <nflow_blocks:acausal_rotational.ElastoBacklash>


#block-icon(image("ElastoBacklash.svg"))

Rotational backlash: elastic torque with a dead zone of total play b.

== Syntax

- #raw("Block type: ElastoBacklash");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Rotational backlash: elastic torque with a dead zone of total play b.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("ElastoBacklash");], 
  [Label], [ElastoBacklash], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ElastoBacklash', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'backlash', {{'a', 'a'}, {'b', 'b'}}, {{'c', 'c', 1, 'N.m/rad'}, {'b', 'play', 0, 'rad'}}, '', '', ...
    'Rotational backlash: elastic torque with a dead zone of total play b.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_rotational.EMF>)[EMF];, #nlink(<nflow_blocks:acausal_rotational.Inertia>)[Inertia];, #nlink(<nflow_blocks:acausal_rotational.RotSpring>)[RotSpring];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
