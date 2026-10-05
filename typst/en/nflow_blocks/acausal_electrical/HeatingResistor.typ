#import "../nelson_help.typ": *

= HeatingResistor <nflow_blocks:acausal_electrical.HeatingResistor>


#block-icon(image("HeatingResistor.svg"))

Resistor that dissipates its power P \= v^2 \/ R as heat into a thermal port.

== Syntax

- #raw("Block type: HeatingResistor");

== Input argument

/ physical pins: 3 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Resistor that dissipates its power P \= v^2 \/ R as heat into a thermal port.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("HeatingResistor");], 
  [Label], [HeatingResistor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('HeatingResistor', 'Electrical', 'electrical', 'physicalIsland', ...
    'resistor', {{'p', 'a'}, {'n', 'b'}, {'heatPort', 'a', 'thermal'}}, {{'R', 'R', 1000, 'ohm'}}, '', '', ...
    'Resistor that dissipates its power P = v^2 / R as heat into a thermal port.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground];, #nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor];, #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
