#import "../nelson_help.typ": *

= TrapezoidTorque <nflow_blocks:acausal_rotational.TrapezoidTorque>


#block-icon(image("TrapezoidTorque.svg"))

Trapezoidal torque on a flange (continuous ramp-up \/ hold \/ ramp-down).

== Syntax

- #raw("Block type: TrapezoidTorque");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Trapezoidal torque on a flange (continuous ramp-up \/ hold \/ ramp-down).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("TrapezoidTorque");], 
  [Label], [TrapezoidTorque], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('TrapezoidTorque', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'force', {{'flange', 'node'}}, ...
    {{'Amplitude', 'Amplitude', 1, 'N.m'}, {'Rising', 'Rising', 0.2, 's'}, {'Width', 'Width', 0.3, 's'}, ...
     {'Falling', 'Falling', 0.2, 's'}, {'Period', 'Period', 1, 's'}}, ...
    '', '', 'Trapezoidal torque on a flange (continuous ramp-up / hold / ramp-down).');
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
