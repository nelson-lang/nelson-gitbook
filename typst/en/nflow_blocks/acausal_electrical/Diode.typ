#import "../nelson_help.typ": *

= Diode <nflow_blocks:acausal_electrical.Diode>


#block-icon(image("Diode.svg"))

Exponential (Shockley) diode: i \= Is (exp(vd\/Vt) - 1).

== Syntax

- #raw("Block type: Diode");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Exponential (Shockley) diode: i \= Is (exp(vd\/Vt) - 1).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("Diode");], 
  [Label], [Diode], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Diode', 'Electrical', 'electrical', 'physicalIsland', ...
    'diode', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Is', 'Is', 1e-9, 'A'}, {'Vt', 'Vt', 0.025, 'V'}}, '', '', ...
    'Exponential (Shockley) diode: i = Is (exp(vd/Vt) - 1).');
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
