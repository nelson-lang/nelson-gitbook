#import "../nelson_help.typ": *

= RotSpringDamper <nflow_blocks:acausal_rotational.RotSpringDamper>


#block-icon(image("RotSpringDamper.svg"))

Parallel rotational spring and damper: tau \= c (phi\_a - phi\_b) + d (w\_a - w\_b).

== Syntax

- #raw("Block type: RotSpringDamper");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Parallel rotational spring and damper: tau \= c (phi\_a - phi\_b) + d (w\_a - w\_b).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("RotSpringDamper");], 
  [Label], [RotSpringDamper], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RotSpringDamper', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'spring', {{'a', 'a'}, {'b', 'b'}}, {{'c', 'c', 1, 'N.m/rad'}, {'d', 'd', 1, 'N.m.s/rad'}}, '', '', ...
    'Parallel rotational spring and damper: tau = c (phi_a - phi_b) + d (w_a - w_b).');
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
