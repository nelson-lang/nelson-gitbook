#import "nelson_help.typ": *

= nflow\_tutorial\_dashboard <nflow_gui:3_nflow_tutorial_dashboard>

Tutorial 3 of 3: add interactive dashboard controls and run in real time.

== Syntax

- #raw("Tutorial: bind a slider, a display, and a gauge, then run and adjust live.");

== Description

This third tutorial adds interactive controls to a running model. You place a Slider, a Display, and a Gauge, bind them to the model, and run in real time so you can change a parameter and watch the response. It continues from the model built in #strong[nflow\_tutorial\_continuous];, but any model with an adjustable parameter and an output signal works.

 #strong[Place the dashboard blocks];

 

+ From the #strong[Dashboard]; group, drag a #strong[Slider]; onto the canvas.
+ Drag a #strong[Display]; next to it.
+ Drag a #strong[Gauge]; next to the Display. Dashboard blocks have no input or output ports. Each one reads or writes a target that you choose in the inspector, so they are placed anywhere on the canvas without wires.

 
#image("nflow_tutorial_dashboard_diagram.png")


 #strong[Bind the controls];

 

+ Select the #strong[Slider];. In the inspector #strong[Binding]; section, set the kind to #strong[Parameter];, then pick a block and one of its adjustable parameters, for example the Gain of the model. Set the slider limits.
+ Select the #strong[Display];. Set the binding kind to #strong[Signal];, then pick a block output and its one-based port.
+ Select the #strong[Gauge];. Bind it to a signal the same way and set its limits. The status under the binding selector reports whether the binding is valid or why it is not. Bindings use stable block identifiers, so renaming or moving a block does not break them. See #strong[nflow\_dashboard]; for every control and display and for the signal, parameter, and variable targets.

 
#image("nflow_tutorial_dashboard_binding.png")


 #strong[Set the execution mode];

 Select nothing to show the Model tab, then open #strong[Simulation]; and set #strong[Execution];. #strong[Real-time]; paces the run to the wall clock, so one second of simulated time takes about one second, which is what you want when adjusting controls by hand. #strong[Fast]; runs as quickly as the machine allows. #strong[Auto]; lets the model decide.

 The execution mode is read when a run starts. Set it before you press #strong[Run];. Changing it while a simulation is running does not affect that run; it applies to the next one. This is different from a dashboard control bound to a parameter, whose change is applied during the run at the next step.

 #strong[Run and interact];

 Press #strong[Run];. While the model runs, drag the Slider to change its bound parameter. The Display and the Gauge update at each major step, and the Scope shows how the response changes. A pointer gesture that starts on a control stays with that control until you release it, so you can drag a slider without moving the block. To move the block instead, drag its body outside the control area.

 #strong[What to try next];

 Add a #strong[Lamp]; or a #strong[Gauge]; with colored ranges to flag a threshold, or a #strong[Push Button]; to switch a parameter between two states. Open the runnable examples below to see a full interactive panel.


== Examples

Open a model with live signal displays and a bound Slider.

``````matlab
open_system([modulepath('nflow_blocks', 'root'), '/examples/dashboard/Dashboard_Runtime_Demo.nflow']);
``````

Open the gallery containing all dashboard blocks.

``````matlab
open_system([modulepath('nflow_blocks', 'root'), '/examples/dashboard/Dashboard_Gallery_Demo.nflow']);
``````


== See also

#nlink(<nflow_gui:nflow_dashboard>)[nflow\_dashboard];, #nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace];, #nlink(<nflow_gui:1_nflow_tutorial_first_model>)[nflow\_tutorial\_first\_model];, #nlink(<nflow_gui:2_nflow_tutorial_continuous>)[nflow\_tutorial\_continuous];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
