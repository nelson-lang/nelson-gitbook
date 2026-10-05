#import "../nelson_help.typ": *

= VoltageSensor <nflow_blocks:acausal_electrical.VoltageSensor>


#block-icon(image("VoltageSensor.svg"))

Measures the voltage v\_p - v\_n (ideal, no loading).

== Syntax

- #raw("Block type: VoltageSensor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 1 signal output(s) (sensor readings).

== Description

Measures the voltage v\_p - v\_n (ideal, no loading).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("VoltageSensor");], 
  [Label], [VoltageSensor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('VoltageSensor', 'Electrical', 'electrical', 'physicalIsland', ...
    'voltageSensor', {{'p', 'a'}, {'n', 'b'}}, {}, '', 'voltage', ...
    'Measures the voltage v_p - v_n (ideal, no loading).');
``````
]

== See also

#nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground];, #nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor];, #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
