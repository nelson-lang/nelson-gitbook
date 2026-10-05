#import "../nelson_help.typ": *

= PlanarPrismatic <nflow_blocks:acausal_planar.PlanarPrismatic>


#block-icon(image("PlanarPrismatic.svg"))

Prismatic joint: frame b slides along the world axis (dx, dy) through frame a, relative rotation locked.

== Syntax

- #raw("Block type: PlanarPrismatic");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Prismatic joint: frame b slides along the world axis (dx, dy) through frame a, relative rotation locked.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarPrismatic");], 
  [Label], [PlanarPrismatic], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarPrismatic', 'Joints', {'a', 'b'}, ...
    {{'dx', 1, '1'}, {'dy', 0, '1'}}, '', ...
    'Prismatic joint: frame b slides along the world axis (dx, dy) through frame a, relative rotation locked.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld];, #nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed];, #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
