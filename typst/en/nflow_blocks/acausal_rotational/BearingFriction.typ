#import "../nelson_help.typ": *

= BearingFriction <nflow_blocks:acausal_rotational.BearingFriction>


#block-icon(image("BearingFriction.svg"))

Regularised bearing friction (event-free): tau \= -tau\_c tanh(w \/ w\_eps).

== Syntax

- #raw("Block type: BearingFriction");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Regularised bearing friction (event-free): tau \= -tau\_c tanh(w \/ w\_eps).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("BearingFriction");], 
  [Label], [BearingFriction], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('BearingFriction', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'friction', {{'flange', 'node'}}, {{'tau_c', 'Fc', 1, 'N.m'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'Regularised bearing friction (event-free): tau = -tau_c tanh(w / w_eps).');
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
