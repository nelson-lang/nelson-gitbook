#import "../nelson_help.typ": *

= BodyRadiation <nflow_blocks:acausal_thermal.BodyRadiation>


#block-icon(image("BodyRadiation.svg"))

Radiation (Stefan-Boltzmann): Q\_flow \= Gr (T\_a^4 - T\_b^4).

== Syntax

- #raw("Block type: BodyRadiation");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Radiation (Stefan-Boltzmann): Q\_flow \= Gr (T\_a^4 - T\_b^4).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Thermal (acausal)], 
  [Type], [#raw("BodyRadiation");], 
  [Label], [BodyRadiation], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('BodyRadiation', 'Thermal', 'thermal', 'physicalIsland', ...
    'radiation', {{'a', 'a'}, {'b', 'b'}}, {{'Gr', 'Gr', 1, 'W/K4'}}, '', '', ...
    'Radiation (Stefan-Boltzmann): Q_flow = Gr (T_a^4 - T_b^4).');
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
