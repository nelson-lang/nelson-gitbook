#import "../nelson_help.typ": *

= PNP <nflow_blocks:acausal_electrical.PNP>


#block-icon(image("PNP.svg"))

PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins.

== Syntax

- #raw("Block type: PNP");

== Input argument

/ physical pins: 3 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("PNP");], 
  [Label], [PNP], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('PNP', 'Electrical', 'electrical', 'physicalIsland', ...
    'pnp', {{'C', 'a'}, {'B', 'c'}, {'E', 'b'}}, ...
    {{'Is', 'Is', 1e-16, 'A'}, {'Vt', 'Vt', 0.025, 'V'}, ...
     {'Bf', 'Bf', 100, '1'}, {'Br', 'Br', 1, '1'}}, '', '', ...
    'PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins.');
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
