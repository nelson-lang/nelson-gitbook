#import "../nelson_help.typ": *

= PlanarAccelerationSensor <nflow_blocks:acausal_planar.PlanarAccelerationSensor>


#block-icon(image("PlanarAccelerationSensor.svg"))

Absolute acceleration of the body at frame a along the chosen axis (x, y) or the angular acceleration (alpha).

== Syntax

- #raw("Block type: PlanarAccelerationSensor");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 1 signal output(s) (sensor readings).

== Description

Absolute acceleration of the body at frame a along the chosen axis (x, y) or the angular acceleration (alpha).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarAccelerationSensor");], 
  [Label], [PlanarAccelerationSensor], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarAccelerationSensor', 'Sensors', {'a'}, ...
    {{'axis', 'x', 'x|y|alpha'}}, 'output', ...
    'Absolute acceleration of the body at frame a along the chosen axis (x, y) or the angular acceleration (alpha).');
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
