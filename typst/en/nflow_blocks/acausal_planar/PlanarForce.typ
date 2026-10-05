#import "../nelson_help.typ": *

= PlanarForce <nflow_blocks:acausal_planar.PlanarForce>


#block-icon(image("PlanarForce.svg"))

External world force (fx, fy) applied at the frame-a point (adds a torque when offset from the COM).

== Syntax

- #raw("Block type: PlanarForce");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

External world force (fx, fy) applied at the frame-a point (adds a torque when offset from the COM).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarForce");], 
  [Label], [PlanarForce], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarForce', 'Forces', {'a'}, ...
    {{'fx', 0, 'N'}, {'fy', 0, 'N'}}, '', ...
    'External world force (fx, fy) applied at the frame-a point (adds a torque when offset from the COM).');
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
