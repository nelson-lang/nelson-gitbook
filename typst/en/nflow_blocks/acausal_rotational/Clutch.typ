#import "../nelson_help.typ": *

= Clutch <nflow_blocks:acausal_rotational.Clutch>


#block-icon(image("Clutch.svg"))

Rotational clutch (event-free stick-slip): tau \= tau\_max tanh((w\_a - w\_b) \/ w\_eps) reduces the slip toward a common speed.

== Syntax

- #raw("Block type: Clutch");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Rotational clutch (event-free stick-slip): tau \= tau\_max tanh((w\_a - w\_b) \/ w\_eps) reduces the slip toward a common speed.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("Clutch");], 
  [Label], [Clutch], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Clutch', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'clutch', {{'a', 'a'}, {'b', 'b'}}, {{'tau_max', 'Fc', 1, 'N.m'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'Rotational clutch (event-free stick-slip): tau = tau_max tanh((w_a - w_b) / w_eps) reduces the slip toward a common speed.');
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
