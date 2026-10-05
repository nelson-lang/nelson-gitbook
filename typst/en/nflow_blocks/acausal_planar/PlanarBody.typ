#import "../nelson_help.typ": *

= PlanarBody <nflow_blocks:acausal_planar.PlanarBody>


#block-icon(image("PlanarBody.svg"))

Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.

== Syntax

- #raw("Block type: PlanarBody");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarBody");], 
  [Label], [PlanarBody], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarBody', 'Parts', {'com', '<named frames>'}, ...
    {{'m', 1, 'kg'}, {'I', 1, 'kg.m2'}, {'x0', 0, 'm'}, {'y0', 0, 'm'}, ...
     {'phi0', 0, 'rad'}, {'vx0', 0, 'm/s'}, {'vy0', 0, 'm/s'}, {'w0', 0, 'rad/s'}}, '', ...
    'Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld];, #nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed];, #nlink(<nflow_blocks:acausal_planar.PlanarPointMass>)[PlanarPointMass];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
