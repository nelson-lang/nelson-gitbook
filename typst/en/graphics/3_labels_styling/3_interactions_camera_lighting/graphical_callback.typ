#import "../../nelson_help.typ": *

= Managing Callback Interruptions in Nelson <graphics:3_labels_styling.3_interactions_camera_lighting.graphical_callback>



== Description

You can assign a callback function to a callback property using one of the following methods:

 #strong[Function handle];: Use this approach when your callback does not need extra input arguments.

 #strong[Cell array];: Ideal for situations where your callback requires additional input arguments. The cell array should include the function handle as the first element, followed by the input arguments.

 #strong[Anonymous function];: This method is suitable for simple callback code or when you want to reuse a function that isn't exclusively used as a callback.

 #strong[Characters vector or scalar string]; containing commands.

 

 Nelson provides control over whether a callback function can be interrupted during its execution. In some cases, allowing interruptions might be desirable, such as enabling users to stop an animation loop through an interrupting callback. However, in scenarios where the execution order of callbacks is crucial, it might be necessary to prevent interruptions to maintain the intended behavior, such as ensuring smooth responsiveness in applications that respond to pointer movements.

 

 Callback Interruption Behavior:

 

 Callbacks are executed in the order they are queued. When a callback is running and another user action triggers a second callback, this second callback attempts to interrupt the first one. The first callback is referred to as the "running callback," while the second is the "interrupting callback."

 

 In some cases, specific commands within the running callback prompt Nelson to process any pending callbacks in the queue.

 When Nelson encounters one of these commands such as #strong[drawnow];, #strong[figure];, #strong[waitfor];, or #strong[pause]; it evaluates whether an interruption should occur.

 

 No Interruption: If the running callback does not include any of these commands, Nelson will complete the running callback before executing the interrupting callback.

 

 Interruption Conditions: If the running callback includes any of these commands, the behavior depends on the Interruptible property of the object that owns the running callback:

 

 If #strong[Interruptible]; is set to #strong['on'];, Nelson allows the interruption. The running callback is paused, the interrupting callback is executed, and once it is finished, Nelson resumes the execution of the running callback.

 If #strong[Interruptible]; is set to #strong['off'];, the interruption is blocked. The #strong[BusyAction]; property of the interrupting callback then dictates the next step:

 If #strong[BusyAction]; is #strong['queue'];, the interrupting callback will be executed after the running callback completes.

 If #strong[BusyAction]; is #strong['cancel'];, the interrupting callback is discarded and not executed.

 By default, the #strong[Interruptible]; property is #strong['on'];, and #strong[BusyAction]; is #strong['queue'];.

 

 Notably, certain callbacks specifically #strong[DeleteFcn];, #strong[CloseRequestFcn];, and #strong[SizeChangedFcn]; will interrupt the running callback regardless of the Interruptible property's value.


== Example

uicontrol demo Interruptible

``````matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

``````


#align(center)[#image("uicontrol_6.png")]

== See also

#nlink(<graphics:2_graphics_objects.3_ui_controls.uicontrol>)[uicontrol];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.drawnow>)[drawnow];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.waitfor>)[waitfor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
