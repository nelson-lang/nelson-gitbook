#import "../nelson_help.typ": *

= TemperatureSensor <nflow_blocks:acausal_thermal.TemperatureSensor>


#block-icon(image("TemperatureSensor.svg"))

Measures the absolute temperature of a port.

== Syntax

- #raw("Block type: TemperatureSensor");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 1 signal output(s) (sensor readings).

== Description

Measures the absolute temperature of a port.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("TemperatureSensor");], 
  [Label], [TemperatureSensor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('TemperatureSensor', 'Thermal', 'thermal', 'physicalIsland', ...
    'potentialSensor', {{'port', 'a'}}, {}, '', 'potential', ...
    'Measures the absolute temperature of a port.');
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
