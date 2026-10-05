#import "../nelson_help.typ": *

= PlanarFixed <nflow_blocks:acausal_planar.PlanarFixed>


#block-icon(image("PlanarFixed.svg"))

Frame rigidly fixed at the world point (x, y).

== Syntax

- #raw("Block type: PlanarFixed");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Frame rigidly fixed at the world point (x, y).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarFixed");], 
  [Label], [PlanarFixed], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarFixed', 'World', {'frame'}, ...
    {{'x', 0, 'm'}, {'y', 0, 'm'}}, '', ...
    'Frame rigidly fixed at the world point (x, y).');
``````
]

== See also

#nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld];, #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody];, #nlink(<nflow_blocks:acausal_planar.PlanarPointMass>)[PlanarPointMass];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
