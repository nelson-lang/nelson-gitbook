#import "../nelson_help.typ": *

= Convection <nflow_blocks:acausal_thermal.Convection>


#block-icon(image("Convection.svg"))

Convection: Q\_flow \= Gc (T\_a - T\_b) with a signal-driven coefficient Gc.

== Syntax

- #raw("Block type: Convection");

== Input argument

/ physical pins: 2 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Convection: Q\_flow \= Gc (T\_a - T\_b) with a signal-driven coefficient Gc.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("Convection");], 
  [Label], [Convection], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Convection', 'Thermal', 'thermal', 'physicalIsland', ...
    'variableConductor', {{'a', 'a'}, {'b', 'b'}}, {}, 'G', '', ...
    'Convection: Q_flow = Gc (T_a - T_b) with a signal-driven coefficient Gc.');
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
