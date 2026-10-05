#import "../nelson_help.typ": *

= ConvectiveResistor <nflow_blocks:acausal_thermal.ConvectiveResistor>


#block-icon(image("ConvectiveResistor.svg"))

Convective resistor: Q\_flow \= (T\_a - T\_b) \/ Rc with a signal-driven Rc.

== Syntax

- #raw("Block type: ConvectiveResistor");

== Input argument

/ physical pins: 2 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Convective resistor: Q\_flow \= (T\_a - T\_b) \/ Rc with a signal-driven Rc.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("ConvectiveResistor");], 
  [Label], [ConvectiveResistor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ConvectiveResistor', 'Thermal', 'thermal', 'physicalIsland', ...
    'variableResistor', {{'a', 'a'}, {'b', 'b'}}, {}, 'R', '', ...
    'Convective resistor: Q_flow = (T_a - T_b) / Rc with a signal-driven Rc.');
``````
]

== See also

#nlink(<nflow_blocks:acausal_thermal.HeatCapacitor>)[HeatCapacitor];, #nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor];, #nlink(<nflow_blocks:acausal_thermal.ThermalResistor>)[ThermalResistor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
