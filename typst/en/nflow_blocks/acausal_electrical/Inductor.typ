#import "../nelson_help.typ": *

= Inductor <nflow_blocks:acausal_electrical.Inductor>


#block-icon(image("Inductor.svg"))

Ideal linear inductor: v \= L di\/dt.

== Syntax

- #raw("Block type: Inductor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Ideal linear inductor: v \= L di\/dt.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("Inductor");], 
  [Label], [Inductor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Inductor', 'Electrical', 'electrical', 'physicalIsland', ...
    'inductor', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'L', 'L', 1e-3, 'H'}, {'i0', 'ic', 0, 'A'}}, '', '', ...
    'Ideal linear inductor: v = L di/dt.');
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
