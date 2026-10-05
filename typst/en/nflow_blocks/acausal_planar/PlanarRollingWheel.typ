#import "../nelson_help.typ": *

= PlanarRollingWheel <nflow_blocks:acausal_planar.PlanarRollingWheel>


#block-icon(image("PlanarRollingWheel.svg"))

Wheel at frame a rolls without slipping on the fixed surface line (px,py)+(dx,dy), staying at height radius.

== Syntax

- #raw("Block type: PlanarRollingWheel");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Wheel at frame a rolls without slipping on the fixed surface line (px,py)+(dx,dy), staying at height radius.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarRollingWheel");], 
  [Label], [PlanarRollingWheel], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarRollingWheel', 'Joints', {'a'}, ...
    {{'dx', 1, '1'}, {'dy', 0, '1'}, {'px', 0, 'm'}, {'py', 0, 'm'}, {'radius', 1, 'm'}}, '', ...
    'Wheel at frame a rolls without slipping on the fixed surface line (px,py)+(dx,dy), staying at height radius.');
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
