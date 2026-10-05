#import "../nelson_help.typ": *

= ZDiode <nflow_blocks:acausal_electrical.ZDiode>


#block-icon(image("ZDiode.svg"))

Zener diode: forward Shockley conduction plus reverse breakdown at -Vz.

== Syntax

- #raw("Block type: ZDiode");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Zener diode: forward Shockley conduction plus reverse breakdown at -Vz.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("ZDiode");], 
  [Label], [ZDiode], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ZDiode', 'Electrical', 'electrical', 'physicalIsland', ...
    'zdiode', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Is', 'Is', 1e-9, 'A'}, {'Vt', 'Vt', 0.04, 'V'}, {'Vz', 'Vz', 5, 'V'}}, '', '', ...
    'Zener diode: forward Shockley conduction plus reverse breakdown at -Vz.');
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
