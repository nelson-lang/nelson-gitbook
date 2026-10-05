#import "../nelson_help.typ": *

= Ground <nflow_blocks:acausal_electrical.Ground>


#block-icon(image("Ground.svg"))

Reference node (0 V) for an electrical island.

== Syntax

- #raw("Block type: Ground");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Reference node (0 V) for an electrical island.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("Ground");], 
  [Label], [Ground], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Ground', 'Electrical', 'electrical', 'physicalIsland', ...
    'ground', {{'p', 'a'}}, {}, '', '', ...
    'Reference node (0 V) for an electrical island.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor];, #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor];, #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
