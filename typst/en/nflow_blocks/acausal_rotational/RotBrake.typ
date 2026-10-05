#import "../nelson_help.typ": *

= RotBrake <nflow_blocks:acausal_rotational.RotBrake>


#block-icon(image("RotBrake.svg"))

Signal-actuated rotational brake to ground: the input sets the peak braking torque.

== Syntax

- #raw("Block type: RotBrake");

== Input argument

/ physical pins: 1 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Signal-actuated rotational brake to ground: the input sets the peak braking torque.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("RotBrake");], 
  [Label], [RotBrake], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RotBrake', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'brake', {{'flange', 'node'}}, {{'w_eps', 'vEps', 0.001, 'rad/s'}}, 'f', '', ...
    'Signal-actuated rotational brake to ground: the input sets the peak braking torque.');
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
