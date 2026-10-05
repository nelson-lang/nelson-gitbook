#import "../nelson_help.typ": *

= PrescribedHeatFlow <nflow_blocks:acausal_thermal.PrescribedHeatFlow>


#block-icon(image("PrescribedHeatFlow.svg"))

Heat flow into the port driven by the input signal.

== Syntax

- #raw("Block type: PrescribedHeatFlow");

== Input argument

/ physical pins: 1 undirected physical pin(s); 1 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Heat flow into the port driven by the input signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("PrescribedHeatFlow");], 
  [Label], [PrescribedHeatFlow], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('PrescribedHeatFlow', 'Thermal', 'thermal', 'physicalIsland', ...
    'isource', {{'port', 'b'}}, {}, 'I', '', ...
    'Heat flow into the port driven by the input signal.');
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
