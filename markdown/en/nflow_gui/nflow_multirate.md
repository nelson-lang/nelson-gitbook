# nflow\_multirate

Running blocks at different sample rates (multi-rate).

## 📝 Syntax

- Concept page: per-block sample time, sub-rate scheduling, zero-order hold

## 📄 Description


By default every block in a diagram runs at the model's base step (the <b>sampleTime</b> of the diagram). A diagram can be <b>multi-rate</b>: some blocks run slower than the base step, updating only on their own sample hits. 

<b>Per-block sample time</b> 

Give a discrete block a <b>SampleTime</b> parameter to run it at that rate. When <b>SampleTime</b> is a multiple <b>N</b> of the base step, the block runs its update only every <b>N</b> samples; between hits its output is held (zero-order hold). A block with no <b>SampleTime</b>, or one less than or equal to the base step, runs every step exactly as before — multi-rate is a pure opt-in extension, so a single-rate diagram is unchanged. 

This works the same under the fixed-step engine and under a continuous solver (ode1/ode4/CVODES): in both cases a slower discrete block sub-rates and holds its output between hits. 

<b>Example</b> 

A unit delay driven by a unit-slope ramp tracks the ramp every step at the base rate; at four times the base step it samples every fourth step, producing a coarse staircase. See <b>Multirate\_Demo.m</b> in the module examples. 

<b>Related blocks</b> 

The <b>rateTransition</b> block is a dedicated sample-and-hold primitive for crossing between two rates at a signal boundary; a per-block <b>SampleTime</b> sets a block's own rate directly. 

<b>Current scope</b> 

Sub-rate scheduling applies to top-level blocks that hold state between updates (their held output follows from the state). A <b>SampleTime</b> that cannot be honored is reported as an error rather than applied silently: one that is not an integer multiple of the base step, one on a stateless feedthrough block, and one on a block nested inside a subsystem (multi-rate covers only top-level blocks). Code generation honors a per-block <b>SampleTime</b> on <b>unitDelay</b> and <b>difference</b> (the generated C/Rust gates the state advance on the major-step index), and the discrete blocks with their own <b>Ts</b> (zoh, ddelay, dtf, dstateSpace, foh) self-schedule in the generated code; a <b>SampleTime</b> on any other block type is rejected rather than silently ignored. Not yet covered: automatic sample-time propagation across the graph, and output sample-and-hold for stateless feedthrough blocks.


## 🔗 See also

[rateTransition](../nflow_blocks/discrete/rateTransition.md), [unitDelay](../nflow_blocks/discrete/unitDelay.md), [sim](../nflow_engine/sim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
