#import "../nelson_help.typ": *

= RotAccelerate <nflow_blocks:acausal_rotational.RotAccelerate>


#block-icon(image("RotAccelerate.svg"))

Prescribed motion: the flange angular acceleration follows the input signal.

== Syntax

- #raw("Block type: RotAccelerate");

== Input argument

/ physical pins: 1 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Prescribed motion: the flange angular acceleration follows the input signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("RotAccelerate");], 
  [Label], [RotAccelerate], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RotAccelerate', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'accelerate', {{'flange', 'node'}}, {{'phi0', 's0', 0, 'rad'}, {'w0', 'v0', 0, 'rad/s'}}, 'a', '', ...
    'Prescribed motion: the flange angular acceleration follows the input signal.');
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
