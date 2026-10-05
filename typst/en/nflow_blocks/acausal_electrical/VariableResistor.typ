#import "../nelson_help.typ": *

= VariableResistor <nflow_blocks:acausal_electrical.VariableResistor>


#block-icon(image("VariableResistor.svg"))

Resistor whose resistance R is set by the input signal.

== Syntax

- #raw("Block type: VariableResistor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Resistor whose resistance R is set by the input signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("VariableResistor");], 
  [Label], [VariableResistor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('VariableResistor', 'Electrical', 'electrical', 'physicalIsland', ...
    'variableResistor', {{'p', 'a'}, {'n', 'b'}}, {}, 'R', '', ...
    'Resistor whose resistance R is set by the input signal.');
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
