#import "nelson_help.typ": *

= nflow\_multirate <nflow_gui:nflow_multirate>

Running blocks at different sample rates (multi-rate).

== Syntax

- #raw("Concept page: per-block sample time, sub-rate scheduling, zero-order hold");

== Description

By default every block in a diagram runs at the model's base step (the #strong[sampleTime]; of the diagram). A diagram can be #strong[multi-rate];: some blocks run slower than the base step, updating only on their own sample hits.

 #strong[Per-block sample time];

 Give a discrete block a #strong[SampleTime]; parameter to run it at that rate. When #strong[SampleTime]; is a multiple #strong[N]; of the base step, the block runs its update only every #strong[N]; samples; between hits its output is held (zero-order hold). A block with no #strong[SampleTime];, or one less than or equal to the base step, runs every step exactly as before — multi-rate is a pure opt-in extension, so a single-rate diagram is unchanged.

 This works the same under the fixed-step engine and under a continuous solver (ode1\/ode4\/CVODES): in both cases a slower discrete block sub-rates and holds its output between hits.

 #strong[Example];

 A unit delay driven by a unit-slope ramp tracks the ramp every step at the base rate; at four times the base step it samples every fourth step, producing a coarse staircase. See #strong[Multirate\_Demo.m]; in the module examples.

 #strong[Related blocks];

 The #strong[rateTransition]; block is a dedicated sample-and-hold primitive for crossing between two rates at a signal boundary; a per-block #strong[SampleTime]; sets a block's own rate directly.

 #strong[Current scope];

 Sub-rate scheduling applies to top-level blocks that hold state between updates (their held output follows from the state). A #strong[SampleTime]; that cannot be honored is reported as an error rather than applied silently: one that is not an integer multiple of the base step, one on a stateless feedthrough block, and one on a block nested inside a subsystem (multi-rate covers only top-level blocks). Code generation honors a per-block #strong[SampleTime]; on #strong[unitDelay]; and #strong[difference]; (the generated C\/Rust gates the state advance on the major-step index), and the discrete blocks with their own #strong[Ts]; (zoh, ddelay, dtf, dstateSpace, foh) self-schedule in the generated code; a #strong[SampleTime]; on any other block type is rejected rather than silently ignored. Not yet covered: automatic sample-time propagation across the graph, and output sample-and-hold for stateless feedthrough blocks.


== See also

#nlink(<nflow_blocks:discrete.rateTransition>)[rateTransition];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_engine:sim>)[sim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
