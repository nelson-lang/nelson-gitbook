#import "../nelson_help.typ": *

= CCC <nflow_blocks:acausal_electrical.CCC>


#block-icon(image("CCC.svg"))

Current-controlled current source: i\_pn \= gain i\_cp (the sense branch cp-cn is a short).

== Syntax

- #raw("Block type: CCC");

== Input argument

/ physical pins: 4 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Current-controlled current source: i\_pn \= gain i\_cp (the sense branch cp-cn is a short).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("CCC");], 
  [Label], [CCC], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('CCC', 'Electrical', 'electrical', 'physicalIsland', ...
    'cccs', {{'p', 'a'}, {'n', 'b'}, {'cp', 'c'}, {'cn', 'd'}}, ...
    {{'gain', 'gain', 1, '1'}}, '', '', ...
    'Current-controlled current source: i_pn = gain i_cp (the sense branch cp-cn is a short).');
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
