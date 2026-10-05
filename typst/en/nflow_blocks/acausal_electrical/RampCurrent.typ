#import "../nelson_help.typ": *

= RampCurrent <nflow_blocks:acausal_electrical.RampCurrent>


#block-icon(image("RampCurrent.svg"))

Ramp current source: i \= Slope (t - StartTime) for t \>\= StartTime, else 0.

== Syntax

- #raw("Block type: RampCurrent");

== Input argument

/ physical pins: 2 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Ramp current source: i \= Slope (t - StartTime) for t \>\= StartTime, else 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Electrical (acausal)], 
  [Type], [#raw("RampCurrent");], 
  [Label], [RampCurrent], 
  [Solver], [Lowered to #raw("physicalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RampCurrent', 'Electrical', 'electrical', 'physicalIsland', ...
    'isource', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Slope', 'slope', 1, 'A/s'}, {'StartTime', 'start', 0, 's'}}, '', '', ...
    'Ramp current source: i = Slope (t - StartTime) for t >= StartTime, else 0.');
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
