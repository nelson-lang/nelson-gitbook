#import "../nelson_help.typ": *

= IdealOpAmp <nflow_blocks:acausal_electrical.IdealOpAmp>


#block-icon(image("IdealOpAmp.svg"))

Ideal op-amp (nullor): virtual short e\_+ \= e\_-, output current free.

== Syntax

- #raw("Block type: IdealOpAmp");

== Input argument

/ physical pins: 3 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Ideal op-amp (nullor): virtual short e\_+ \= e\_-, output current free.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("IdealOpAmp");], 
  [Label], [IdealOpAmp], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('IdealOpAmp', 'Electrical', 'electrical', 'physicalIsland', ...
    'opAmp', {{'in_p', 'a'}, {'in_n', 'b'}, {'out', 'c'}}, {}, '', '', ...
    'Ideal op-amp (nullor): virtual short e_+ = e_-, output current free.');
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
