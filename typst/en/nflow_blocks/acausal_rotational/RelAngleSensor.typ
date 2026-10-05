#import "../nelson_help.typ": *

= RelAngleSensor <nflow_blocks:acausal_rotational.RelAngleSensor>


#block-icon(image("RelAngleSensor.svg"))

Measures the relative angle phi\_a - phi\_b between two flanges.

== Syntax

- #raw("Block type: RelAngleSensor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 1 signal output(s) (sensor readings).

== Description

Measures the relative angle phi\_a - phi\_b between two flanges.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("RelAngleSensor");], 
  [Label], [RelAngleSensor], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RelAngleSensor', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'relPositionSensor', {{'a', 'a'}, {'b', 'b'}}, {}, '', 'angle', ...
    'Measures the relative angle phi_a - phi_b between two flanges.');
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
