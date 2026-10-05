#import "../nelson_help.typ": *

= NMOS <nflow_blocks:acausal_electrical.NMOS>


#block-icon(image("NMOS.svg"))

N-channel MOSFET (square law): drain, gate and source pins.

== Syntax

- #raw("Block type: NMOS");

== Input argument

/ physical pins: 3 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

N-channel MOSFET (square law): drain, gate and source pins.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("NMOS");], 
  [Label], [NMOS], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('NMOS', 'Electrical', 'electrical', 'physicalIsland', ...
    'nmos', {{'D', 'a'}, {'G', 'c'}, {'S', 'b'}}, ...
    {{'Beta', 'Beta', 1e-3, 'A/V^2'}, {'Vt', 'Vt', 1, 'V'}}, '', '', ...
    'N-channel MOSFET (square law): drain, gate and source pins.');
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
