#import "../nelson_help.typ": *

= IdealGear <nflow_blocks:acausal_rotational.IdealGear>


#block-icon(image("IdealGear.svg"))

Ideal gear phi\_a \= ratio phi\_b (structural node merge, inertia folded).

== Syntax

- #raw("Block type: IdealGear");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Ideal gear phi\_a \= ratio phi\_b (structural node merge, inertia folded).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Rotational (acausal)], 
  [Type], [#raw("IdealGear");], 
  [Label], [IdealGear], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('IdealGear', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'gear', {{'a', 'a'}, {'b', 'b'}}, {{'ratio', 'ratio', 1, '1'}}, '', '', ...
    'Ideal gear phi_a = ratio phi_b (structural node merge, inertia folded).');
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
