#import "../nelson_help.typ": *

= RotDamper <nflow_blocks:acausal_rotational.RotDamper>


#block-icon(image("RotDamper.svg"))

Rotational damper: tau \= d (w\_a - w\_b).

== Syntax

- #raw("Block type: RotDamper");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Rotational damper: tau \= d (w\_a - w\_b).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("RotDamper");], 
  [Label], [RotDamper], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RotDamper', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'damper', {{'a', 'a'}, {'b', 'b'}}, {{'d', 'd', 1, 'N.m.s/rad'}}, '', '', ...
    'Rotational damper: tau = d (w_a - w_b).');
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
