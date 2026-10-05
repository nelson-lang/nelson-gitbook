#import "../nelson_help.typ": *

= CCV <nflow_blocks:acausal_electrical.CCV>


#block-icon(image("CCV.svg"))

Current-controlled voltage source: v\_pn \= gain i\_cp (the sense branch cp-cn is a short).

== Syntax

- #raw("Block type: CCV");

== Input argument

/ physical pins: 4 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Current-controlled voltage source: v\_pn \= gain i\_cp (the sense branch cp-cn is a short).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("CCV");], 
  [Label], [CCV], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('CCV', 'Electrical', 'electrical', 'physicalIsland', ...
    'ccvs', {{'p', 'a'}, {'n', 'b'}, {'cp', 'c'}, {'cn', 'd'}}, ...
    {{'gain', 'gain', 1, 'ohm'}}, '', '', ...
    'Current-controlled voltage source: v_pn = gain i_cp (the sense branch cp-cn is a short).');
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
