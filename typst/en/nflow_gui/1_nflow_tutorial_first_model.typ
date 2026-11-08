#import "nelson_help.typ": *

= nflow\_tutorial\_first\_model <nflow_gui:1_nflow_tutorial_first_model>

Tutorial 1 of 3: build, wire, and run a first nflow model.

== Syntax

- #raw("Tutorial: place three blocks, connect them, run, and read the scope.");

== Description

This is the first of three short tutorials. You build a model with three blocks, a Sine source, a Gain, and a Scope, then run it and read the result. The model has no feedback and no dynamics, so it is a good way to learn the editor itself: placing blocks, drawing wires, editing parameters, and running a simulation.

 #strong[Open the editor];

 Call #strong[nflow()]; from the Nelson command line to open an empty model. The block library is on the left, the diagram canvas is in the center, and the inspector is on the right. Select a block to see its parameters in the inspector, or select nothing to see the Model tab with the simulation settings.

 #strong[Place the blocks];

 

+ In the library, open the #strong[Source]; group and drag a #strong[Sine]; block onto the canvas.
+ Open the #strong[Math]; group and drag a #strong[Gain]; block to the right of the Sine block.
+ Open the #strong[Sinks]; group and drag a #strong[Scope]; block to the right of the Gain block. Leave room between the blocks so the wires have space to route.

 #strong[Connect the blocks];

 

+ Move the pointer over the output port on the right of the Sine block, then drag to the input port on the left of the Gain block. Release to create the wire.
+ Draw a second wire the same way, from the Gain output to the Scope input. When #strong[autoRoute]; is on, the editor keeps the wires orthogonal and clear as you move blocks. See #strong[nflow\_wire\_editing]; for manual routing, corners, and junctions.

 #strong[Set the block parameters];

 Select the #strong[Gain]; block and set #strong[Gain]; to 2 in the inspector. Select the #strong[Sine]; block to set its amplitude and frequency, or keep the defaults. Each change is applied to the block as you type.

 #strong[Set the run duration];

 Select nothing to show the #strong[Model]; tab, then open #strong[Simulation];. Set #strong[Runtime (s)]; to the length of the run, for example 10. Leave #strong[Sample Time (s)]; at its default for this model.

 #strong[Run the model];

 Press #strong[Run]; in the toolbar above the diagram, or use the #strong[Simulation]; menu. The Scope fills while the model runs. #strong[Stop]; ends the run and keeps the results already computed. #strong[Reset]; returns time to zero and clears the displayed results.

 #strong[Read the scope];

 The Scope shows the amplified sine wave. Select the Scope and use the inspector to set the time and value ranges (#strong[t min];, #strong[t max];, #strong[y min];, #strong[y max];), to show tick labels, and to set the trace color and axis labels. Leave a range field empty to let the Scope fit the data.

 
#image("nflow_tutorial_first_model_diagram.png")


 #strong[What to try next];

 Replace the Sine with a #strong[Step]; or a #strong[Pulse]; from the Source group to see how the output follows a different input. Then continue with #strong[nflow\_tutorial\_continuous]; to add an integrator and choose a solver.


== See also

#nlink(<nflow_gui:nflow>)[nflow];, #nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace];, #nlink(<nflow_gui:nflow_wire_editing>)[nflow\_wire\_editing];, #nlink(<nflow_gui:2_nflow_tutorial_continuous>)[nflow\_tutorial\_continuous];, #nlink(<nflow_gui:3_nflow_tutorial_dashboard>)[nflow\_tutorial\_dashboard];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
