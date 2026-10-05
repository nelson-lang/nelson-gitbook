#import "../nelson_help.typ": *

= TrapezoidForce <nflow_blocks:acausal_translational.TrapezoidForce>


#block-icon(image("TrapezoidForce.svg"))

Trapezoidal force on a flange (continuous ramp-up \/ hold \/ ramp-down).

== Syntax

- #raw("Block type: TrapezoidForce");

== Input argument

/ physical pins: 1 undirected physical pin(s); 0 signal input(s).

== Output argument

/ signal ports: 0 signal output(s) (sensor readings).

== Description

Trapezoidal force on a flange (continuous ramp-up \/ hold \/ ramp-down).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Translational (acausal)], 
  [Type], [#raw("TrapezoidForce");], 
  [Label], [TrapezoidForce], 
  [Solver], [Lowered to #raw("mechanicalTranslationalIsland");. Reference solver #raw("dae"); (differential-algebraic); the fixed-step loop and the native explicit solvers (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) are also supported (a jointed multibody island requires #raw("dae");).], 
)
  #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('TrapezoidForce', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force', {{'flange', 'node'}}, ...
    {{'Amplitude', 'Amplitude', 1, 'N'}, {'Rising', 'Rising', 0.2, 's'}, {'Width', 'Width', 0.3, 's'}, ...
     {'Falling', 'Falling', 0.2, 's'}, {'Period', 'Period', 1, 's'}}, ...
    '', '', 'Trapezoidal force on a flange (continuous ramp-up / hold / ramp-down).');
``````
]

== See also

#nlink(<nflow_blocks:acausal_translational.TranslationalEMF>)[TranslationalEMF];, #nlink(<nflow_blocks:acausal_translational.Mass>)[Mass];, #nlink(<nflow_blocks:acausal_translational.SlidingMass>)[SlidingMass];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
