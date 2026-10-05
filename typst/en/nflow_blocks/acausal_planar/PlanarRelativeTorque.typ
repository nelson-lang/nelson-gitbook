#import "../nelson_help.typ": *

= PlanarRelativeTorque <nflow_blocks:acausal_planar.PlanarRelativeTorque>


#block-icon(image("PlanarRelativeTorque.svg"))

Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).

== Syntax

- #raw("Block type: PlanarRelativeTorque");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarRelativeTorque");], 
  [Label], [PlanarRelativeTorque], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarRelativeTorque', 'Forces', {'a', 'b'}, ...
    {{'tau', 0, 'N.m'}}, '', ...
    'Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).');
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
