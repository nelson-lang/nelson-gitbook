#import "../nelson_help.typ": *

= Resistor <nflow_blocks:acausal_electrical.Resistor>


#block-icon(image("Resistor.svg"))

Ideal linear resistor: i \= (v\_p - v\_n) \/ R.

== Syntax

- #raw("Block type: Resistor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Ideal linear resistor: i \= (v\_p - v\_n) \/ R.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("Resistor");], 
  [Label], [Resistor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Resistor', 'Electrical', 'electrical', 'physicalIsland', ...
    'resistor', {{'p', 'a'}, {'n', 'b'}}, {{'R', 'R', 1000, 'ohm'}}, '', '', ...
    'Ideal linear resistor: i = (v_p - v_n) / R.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground];, #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor];, #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
