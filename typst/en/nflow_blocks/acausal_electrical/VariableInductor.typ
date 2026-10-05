#import "../nelson_help.typ": *

= VariableInductor <nflow_blocks:acausal_electrical.VariableInductor>


#block-icon(image("VariableInductor.svg"))

Inductor whose inductance L is set by a signal (exact flux phi formulation).

== Syntax

- #raw("Block type: VariableInductor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Inductor whose inductance L is set by a signal (exact flux phi formulation).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("VariableInductor");], 
  [Label], [VariableInductor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('VariableInductor', 'Electrical', 'electrical', 'physicalIsland', ...
    'variableInductor', {{'p', 'a'}, {'n', 'b'}}, {{'phi0', 'ic', 0, 'Wb'}}, 'L', '', ...
    'Inductor whose inductance L is set by a signal (exact flux phi formulation).');
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
