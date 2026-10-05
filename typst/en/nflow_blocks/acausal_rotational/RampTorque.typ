#import "../nelson_help.typ": *

= RampTorque <nflow_blocks:acausal_rotational.RampTorque>


#block-icon(image("RampTorque.svg"))

Ramp torque on a flange: tau \= Slope (t - StartTime) for t \>\= StartTime, else 0.

== Syntax

- #raw("Block type: RampTorque");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Ramp torque on a flange: tau \= Slope (t - StartTime) for t \>\= StartTime, else 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("RampTorque");], 
  [Label], [RampTorque], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RampTorque', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'force', {{'flange', 'node'}}, ...
    {{'Slope', 'slope', 1, 'N.m/s'}, {'StartTime', 'start', 0, 's'}}, ...
    '', '', 'Ramp torque on a flange: tau = Slope (t - StartTime) for t >= StartTime, else 0.');
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
