#import "../nelson_help.typ": *

= PlanarSpringDamper <nflow_blocks:acausal_planar.PlanarSpringDamper>


#block-icon(image("PlanarSpringDamper.svg"))

Linear 2D spring-damper between the points at frames a and b: F \= -(c dr + d dv).

== Syntax

- #raw("Block type: PlanarSpringDamper");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Linear 2D spring-damper between the points at frames a and b: F \= -(c dr + d dv).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Planar (acausal)], 
  [Type], [#raw("PlanarSpringDamper");], 
  [Label], [PlanarSpringDamper], 
  [Solver], [Lowered to #raw("planarMechanicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarSpringDamper', 'Forces', {'a', 'b'}, ...
    {{'c', 100, 'N/m'}, {'d', 1, 'N.s/m'}}, '', ...
    'Linear 2D spring-damper between the points at frames a and b: F = -(c dr + d dv).');
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
