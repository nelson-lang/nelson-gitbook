#import "../nelson_help.typ": *

= Capacitor <nflow_blocks:acausal_electrical.Capacitor>


#block-icon(image("Capacitor.svg"))

Ideal linear capacitor: i \= C dv\/dt.

== Syntax

- #raw("Block type: Capacitor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Ideal linear capacitor: i \= C dv\/dt.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("Capacitor");], 
  [Label], [Capacitor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Capacitor', 'Electrical', 'electrical', 'physicalIsland', ...
    'capacitor', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'C', 'C', 1e-6, 'F'}, {'v0', 'ic', 0, 'V'}}, '', '', ...
    'Ideal linear capacitor: i = C dv/dt.');
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
