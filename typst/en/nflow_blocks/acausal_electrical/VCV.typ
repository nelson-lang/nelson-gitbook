#import "../nelson_help.typ": *

= VCV <nflow_blocks:acausal_electrical.VCV>


#block-icon(image("VCV.svg"))

Voltage-controlled voltage source: v\_pn \= gain (v\_cp - v\_cn).

== Syntax

- #raw("Block type: VCV");

== Input argument

/ physical pins: 4 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Voltage-controlled voltage source: v\_pn \= gain (v\_cp - v\_cn).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("VCV");], 
  [Label], [VCV], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('VCV', 'Electrical', 'electrical', 'physicalIsland', ...
    'vcvs', {{'p', 'a'}, {'n', 'b'}, {'cp', 'c'}, {'cn', 'd'}}, ...
    {{'gain', 'gain', 1, '1'}}, '', '', ...
    'Voltage-controlled voltage source: v_pn = gain (v_cp - v_cn).');
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
