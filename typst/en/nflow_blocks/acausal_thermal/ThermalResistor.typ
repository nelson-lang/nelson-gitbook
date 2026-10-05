#import "../nelson_help.typ": *

= ThermalResistor <nflow_blocks:acausal_thermal.ThermalResistor>


#block-icon(image("ThermalResistor.svg"))

Thermal resistor: Q\_flow \= (T\_a - T\_b) \/ R.

== Syntax

- #raw("Block type: ThermalResistor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Thermal resistor: Q\_flow \= (T\_a - T\_b) \/ R.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("ThermalResistor");], 
  [Label], [ThermalResistor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ThermalResistor', 'Thermal', 'thermal', 'physicalIsland', ...
    'resistor', {{'a', 'a'}, {'b', 'b'}}, {{'R', 'R', 1, 'K/W'}}, '', '', ...
    'Thermal resistor: Q_flow = (T_a - T_b) / R.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_thermal.HeatCapacitor>)[HeatCapacitor];, #nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor];, #nlink(<nflow_blocks:acausal_thermal.ConvectiveResistor>)[ConvectiveResistor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
