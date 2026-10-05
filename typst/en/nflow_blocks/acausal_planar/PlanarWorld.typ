#import "../nelson_help.typ": *

= PlanarWorld <nflow_blocks:acausal_planar.PlanarWorld>


#block-icon(image("PlanarWorld.svg"))

Inertial world with uniform gravity (down \= -y); provides a fixed frame at the origin.

== Syntax

- #raw("Block type: PlanarWorld");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Inertial world with uniform gravity (down \= -y); provides a fixed frame at the origin.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarWorld");], 
  [Label], [PlanarWorld], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarWorld', 'World', {'frame'}, ...
    {{'gravity', 9.81, 'm/s2'}}, '', ...
    'Inertial world with uniform gravity (down = -y); provides a fixed frame at the origin.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed];, #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody];, #nlink(<nflow_blocks:acausal_planar.PlanarPointMass>)[PlanarPointMass];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
