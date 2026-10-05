#import "../nelson_help.typ": *

= RelRotSpeedSensor <nflow_blocks:acausal_rotational.RelRotSpeedSensor>


#block-icon(image("RelRotSpeedSensor.svg"))

Measures the relative angular velocity w\_a - w\_b between two flanges.

== Syntax

- #raw("Block type: RelRotSpeedSensor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 1 signal output(s) (sensor readings).

== Description

Measures the relative angular velocity w\_a - w\_b between two flanges.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("RelRotSpeedSensor");], 
  [Label], [RelRotSpeedSensor], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RelRotSpeedSensor', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'relSpeedSensor', {{'a', 'a'}, {'b', 'b'}}, {}, '', 'speed', ...
    'Measures the relative angular velocity w_a - w_b between two flanges.');
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
