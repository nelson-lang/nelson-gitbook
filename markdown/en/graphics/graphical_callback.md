# Managing Callback Interruptions in Nelson

## 📄 Description

You can assign a callback function to a callback property using one of the following methods:

<b>Function handle</b>: Use this approach when your callback does not need extra input arguments.

<b>Cell array</b>: Ideal for situations where your callback requires additional input arguments. The cell array should include the function handle as the first element, followed by the input arguments.

<b>Anonymous function</b>: This method is suitable for simple callback code or when you want to reuse a function that isn't exclusively used as a callback.

<b>Characters vector or scalar string</b> containing commands.

Nelson provides control over whether a callback function can be interrupted during its execution. In some cases, allowing interruptions might be desirable, such as enabling users to stop an animation loop through an interrupting callback. However, in scenarios where the execution order of callbacks is crucial, it might be necessary to prevent interruptions to maintain the intended behavior, such as ensuring smooth responsiveness in applications that respond to pointer movements.

Callback Interruption Behavior:

Callbacks are executed in the order they are queued. When a callback is running and another user action triggers a second callback, this second callback attempts to interrupt the first one. The first callback is referred to as the "running callback," while the second is the "interrupting callback."

In some cases, specific commands within the running callback prompt Nelson to process any pending callbacks in the queue.

When Nelson encounters one of these commands such as <b>drawnow</b>, <b>figure</b>, <b>waitfor</b>, or <b>pause</b> it evaluates whether an interruption should occur.

No Interruption: If the running callback does not include any of these commands, Nelson will complete the running callback before executing the interrupting callback.

Interruption Conditions: If the running callback includes any of these commands, the behavior depends on the Interruptible property of the object that owns the running callback:

If <b>Interruptible</b> is set to <b>'on'</b>, Nelson allows the interruption. The running callback is paused, the interrupting callback is executed, and once it is finished, Nelson resumes the execution of the running callback.

If <b>Interruptible</b> is set to <b>'off'</b>, the interruption is blocked. The <b>BusyAction</b> property of the interrupting callback then dictates the next step:

If <b>BusyAction</b> is <b>'queue'</b>, the interrupting callback will be executed after the running callback completes.

If <b>BusyAction</b> is <b>'cancel'</b>, the interrupting callback is discarded and not executed.

By default, the <b>Interruptible</b> property is <b>'on'</b>, and <b>BusyAction</b> is <b>'queue'</b>.

Notably, certain callbacks specifically <b>DeleteFcn</b>, <b>CloseRequestFcn</b>, and <b>SizeChangedFcn</b> will interrupt the running callback regardless of the Interruptible property's value.

## 💡 Example

uicontrol demo Interruptible

```matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

```

<img src="uicontrol_6.png" align="middle"/>

## 🔗 See also

[uicontrol](../graphics/uicontrol.md), [drawnow](../graphics/drawnow.md), [waitfor](../graphics/waitfor.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
