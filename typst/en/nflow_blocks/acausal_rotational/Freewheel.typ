#import "../nelson_help.typ": *

= Freewheel <nflow_blocks:acausal_rotational.Freewheel>


#block-icon(image("Freewheel.svg"))

One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).

== Syntax

- #raw("Block type: Freewheel");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("Freewheel");], 
  [Label], [Freewheel], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Freewheel', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'freewheel', {{'a', 'a'}, {'b', 'b'}}, {{'d', 'd', 100, 'N.m.s/rad'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).');
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
