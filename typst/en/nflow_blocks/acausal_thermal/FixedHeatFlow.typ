#import "../nelson_help.typ": *

= FixedHeatFlow <nflow_blocks:acausal_thermal.FixedHeatFlow>


#block-icon(image("FixedHeatFlow.svg"))

Constant heat flow Q into the connected port.

== Syntax

- #raw("Block type: FixedHeatFlow");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Constant heat flow Q into the connected port.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("FixedHeatFlow");], 
  [Label], [FixedHeatFlow], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('FixedHeatFlow', 'Thermal', 'thermal', 'physicalIsland', ...
    'isource', {{'port', 'b'}}, {{'Q', 'I', 0, 'W'}}, '', '', ...
    'Constant heat flow Q into the connected port.');
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
