#import "../nelson_help.typ": *

= Gyrator <nflow_blocks:acausal_electrical.Gyrator>


#block-icon(image("Gyrator.svg"))

Gyrator: i1 \= G2 v2, i2 \= -G1 v1 (across\<-\>through transducer).

== Syntax

- #raw("Block type: Gyrator");

== Input argument

/ physical pins: 4 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Gyrator: i1 \= G2 v2, i2 \= -G1 v1 (across\<-\>through transducer).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("Gyrator");], 
  [Label], [Gyrator], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Gyrator', 'Electrical', 'electrical', 'physicalIsland', ...
    'gyrator', {{'p1', 'a'}, {'n1', 'b'}, {'p2', 'c'}, {'n2', 'd'}}, ...
    {{'G1', 'G1', 1, 'S'}, {'G2', 'G2', 1, 'S'}}, '', '', ...
    'Gyrator: i1 = G2 v2, i2 = -G1 v1 (across<->through transducer).');
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
