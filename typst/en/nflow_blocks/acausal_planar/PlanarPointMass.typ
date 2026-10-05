#import "../nelson_help.typ": *

= PlanarPointMass <nflow_blocks:acausal_planar.PlanarPointMass>


#block-icon(image("PlanarPointMass.svg"))

Point mass (no orientation): four states (xc, yc, vx, vy); attach joints at its point.

== Syntax

- #raw("Block type: PlanarPointMass");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Point mass (no orientation): four states (xc, yc, vx, vy); attach joints at its point.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarPointMass");], 
  [Label], [PlanarPointMass], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarPointMass', 'Parts', {'com'}, ...
    {{'m', 1, 'kg'}, {'x0', 0, 'm'}, {'y0', 0, 'm'}, {'vx0', 0, 'm/s'}, {'vy0', 0, 'm/s'}}, '', ...
    'Point mass (no orientation): four states (xc, yc, vx, vy); attach joints at its point.');
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
