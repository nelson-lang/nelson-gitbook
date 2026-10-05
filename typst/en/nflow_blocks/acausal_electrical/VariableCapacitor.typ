#import "../nelson_help.typ": *

= VariableCapacitor <nflow_blocks:acausal_electrical.VariableCapacitor>


#block-icon(image("VariableCapacitor.svg"))

Capacitor whose capacitance C is set by a signal (exact charge Q formulation).

== Syntax

- #raw("Block type: VariableCapacitor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Capacitor whose capacitance C is set by a signal (exact charge Q formulation).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("VariableCapacitor");], 
  [Label], [VariableCapacitor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('VariableCapacitor', 'Electrical', 'electrical', 'physicalIsland', ...
    'variableCapacitor', {{'p', 'a'}, {'n', 'b'}}, {{'q0', 'ic', 0, 'C'}}, 'C', '', ...
    'Capacitor whose capacitance C is set by a signal (exact charge Q formulation).');
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
