#import "../nelson_help.typ": *

= HeatCapacitor <nflow_blocks:acausal_thermal.HeatCapacitor>


#block-icon(image("HeatCapacitor.svg"))

Lumped heat capacity: C dT\/dt \= Q\_flow (port referenced to 0).

== Syntax

- #raw("Block type: HeatCapacitor");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Lumped heat capacity: C dT\/dt \= Q\_flow (port referenced to 0).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("HeatCapacitor");], 
  [Label], [HeatCapacitor], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('HeatCapacitor', 'Thermal', 'thermal', 'physicalIsland', ...
    'capacitor', {{'port', 'a'}}, ...
    {{'C', 'C', 1, 'J/K'}, {'T0', 'ic', 293.15, 'K'}}, '', '', ...
    'Lumped heat capacity: C dT/dt = Q_flow (port referenced to 0).');
``````
]

== See also

#nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor];, #nlink(<nflow_blocks:acausal_thermal.ThermalResistor>)[ThermalResistor];, #nlink(<nflow_blocks:acausal_thermal.ConvectiveResistor>)[ConvectiveResistor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
