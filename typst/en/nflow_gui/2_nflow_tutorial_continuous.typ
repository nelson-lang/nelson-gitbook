#import "nelson_help.typ": *

= nflow\_tutorial\_continuous <nflow_gui:2_nflow_tutorial_continuous>

Tutorial 2 of 3: simulate a continuous system and choose a solver.

== Syntax

- #raw("Tutorial: build a first-order system with feedback, then select a solver.");

== Description

This second tutorial builds a continuous system and shows how the solver changes the way it is integrated. The model is a first-order lag: a step input drives a state that approaches the input with time constant tau. The equation is dx\/dt \= (u - x) \/ tau, which you build with a Sum, a Gain, and an Integrator wired in a feedback loop. It assumes you have done #strong[nflow\_tutorial\_first\_model];.

 #strong[Place the blocks];

 

+ From the #strong[Source]; group, drag a #strong[Step]; block onto the canvas.
+ From the #strong[Math]; group, drag a #strong[Sum]; block and a #strong[Gain]; block.
+ From the #strong[Continuous]; group, drag an #strong[Integrator]; block.
+ From the #strong[Sinks]; group, drag a #strong[Scope]; block. #strong[Set the block parameters];

 Select the #strong[Sum]; block and set its signs to one plus and one minus, so it computes the input minus the fed-back state. Select the #strong[Gain]; block and set #strong[Gain]; to 1 \/ tau; for tau \= 0.5 s, set it to 2. Leave the #strong[Integrator]; at an initial condition of 0.

 #strong[Connect the blocks];

 

+ Wire the #strong[Step]; output to the plus input of the #strong[Sum];.
+ Wire the #strong[Sum]; output to the #strong[Gain];, and the #strong[Gain]; output to the #strong[Integrator];.
+ Wire the #strong[Integrator]; output to the #strong[Scope];, and also back to the minus input of the #strong[Sum]; to close the loop. The wire from the Integrator back to the Sum is the feedback path. It is what makes the state settle instead of growing without bound.

 
#image("nflow_tutorial_continuous_diagram.png")


 #strong[Run with the default engine];

 Set #strong[Runtime (s)]; to about 5 in the Model tab and press #strong[Run];. With no solver selected, nflow uses the fixed-step discrete engine, and each continuous block integrates with a per-block Euler step at the model #strong[Sample Time (s)];. The Scope shows the state rising toward the step value along an exponential curve.

 #strong[Choose a solver];

 Open the Model tab and set the #strong[Solver];. The default (discrete) keeps the fixed-step engine. Select #strong[ode4]; for a fixed-step fourth-order Runge-Kutta integration, which is more accurate than Euler at the same step. Select #strong[ode45]; for an adaptive step controlled by the tolerances. When an adaptive solver is selected, set #strong[Relative tolerance]; and #strong[Absolute tolerance];, and an optional #strong[Max step (0 \= auto)]; ceiling. Tighter tolerances give a more accurate trajectory at the cost of more sub-steps. See #strong[nflow\_solvers]; for the full list and for how each solver maps to generated C and Rust code.

 
#image("nflow_tutorial_continuous_solver.png")


 #strong[Compare the step size];

 Lower the #strong[Sample Time (s)]; and run again with the discrete engine to see the Euler result approach the ode4 result. This is the trade-off a solver manages for you: accuracy against the number of steps.

 #strong[What to try next];

 Add a second Integrator and a feedback gain to make a second-order system such as a mass-spring-damper, then continue with #strong[nflow\_tutorial\_dashboard]; to drive the model with live controls while it runs.


== Example

Open a continuous model and try different solvers on it.

``````matlab
open_system([modulepath('nflow_blocks', 'root'), '/examples/causal/Second_Order_Responses_Demo.nflow']);
``````


== See also

#nlink(<nflow_gui:nflow_solvers>)[nflow\_solvers];, #nlink(<nflow_gui:nflow_multirate>)[nflow\_multirate];, #nlink(<nflow_gui:1_nflow_tutorial_first_model>)[nflow\_tutorial\_first\_model];, #nlink(<nflow_gui:3_nflow_tutorial_dashboard>)[nflow\_tutorial\_dashboard];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
