#import "../nelson_help.typ": *

= PlanarRelPositionSensor <nflow_blocks:acausal_planar.PlanarRelPositionSensor>


#block-icon(image("PlanarRelPositionSensor.svg"))

Relative position of the frame-a point minus the frame-b point along the chosen axis (x, y).

== Syntax

- #raw("Block type: PlanarRelPositionSensor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 1 signal output(s) (sensor readings).

== Description

Relative position of the frame-a point minus the frame-b point along the chosen axis (x, y).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarRelPositionSensor");], 
  [Label], [PlanarRelPositionSensor], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarRelPositionSensor', 'Sensors', {'a', 'b'}, ...
    {{'axis', 'x', 'x|y'}}, 'output', ...
    'Relative position of the frame-a point minus the frame-b point along the chosen axis (x, y).');
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
