#import "../nelson_help.typ": *

= ThermalConductor <nflow_blocks:acausal_thermal.ThermalConductor>


#block-icon(image("ThermalConductor.svg"))

Thermal conductor: Q\_flow \= G (T\_a - T\_b).

== Syntax

- #raw("Block type: ThermalConductor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Thermal conductor: Q\_flow \= G (T\_a - T\_b).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("ThermalConductor");], 
  [Label], [ThermalConductor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ThermalConductor', 'Thermal', 'thermal', 'physicalIsland', ...
    'conductor', {{'a', 'a'}, {'b', 'b'}}, {{'G', 'G', 1, 'W/K'}}, '', '', ...
    'Thermal conductor: Q_flow = G (T_a - T_b).');
``````
]

== See also

#nlink(<nflow_blocks:acausal_thermal.HeatCapacitor>)[HeatCapacitor];, #nlink(<nflow_blocks:acausal_thermal.ThermalResistor>)[ThermalResistor];, #nlink(<nflow_blocks:acausal_thermal.ConvectiveResistor>)[ConvectiveResistor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
