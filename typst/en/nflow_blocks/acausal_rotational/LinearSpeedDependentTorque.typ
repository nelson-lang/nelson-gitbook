#import "../nelson_help.typ": *

= LinearSpeedDependentTorque <nflow_blocks:acausal_rotational.LinearSpeedDependentTorque>


#block-icon(image("LinearSpeedDependentTorque.svg"))

Speed-proportional resistance to ground: tau \= -d w.

== Syntax

- #raw("Block type: LinearSpeedDependentTorque");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Speed-proportional resistance to ground: tau \= -d w.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("LinearSpeedDependentTorque");], 
  [Label], [LinearSpeedDependentTorque], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('LinearSpeedDependentTorque', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'linearSpeedForce', {{'flange', 'node'}}, {{'d', 'd', 1, 'N.m.s/rad'}}, '', '', ...
    'Speed-proportional resistance to ground: tau = -d w.');
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
