#import "../nelson_help.typ": *

= QuadraticSpeedDependentTorque <nflow_blocks:acausal_rotational.QuadraticSpeedDependentTorque>


#block-icon(image("QuadraticSpeedDependentTorque.svg"))

Quadratic (drag) resistance to ground: tau \= -d w |w|.

== Syntax

- #raw("Block type: QuadraticSpeedDependentTorque");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Quadratic (drag) resistance to ground: tau \= -d w |w|.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("QuadraticSpeedDependentTorque");], 
  [Label], [QuadraticSpeedDependentTorque], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('QuadraticSpeedDependentTorque', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'quadraticSpeedForce', {{'flange', 'node'}}, {{'d', 'd', 1, 'N.m.s2/rad2'}}, '', '', ...
    'Quadratic (drag) resistance to ground: tau = -d w |w|.');
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
