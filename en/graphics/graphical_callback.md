# Managing Callback Interruptions in Nelson

## Description

  <p>You can assign a callback function to a callback property using one of the following methods:</p>
  <p><b>Function handle</b>: Use this approach when your callback does not need extra input arguments.</p>
  <p><b>Cell array</b>: Ideal for situations where your callback requires additional input arguments. The cell array should include the function handle as the first element, followed by the input arguments.</p>
  <p><b>Anonymous function</b>: This method is suitable for simple callback code or when you want to reuse a function that isn't exclusively used as a callback.</p>
  <p><b>Characters vector or scalar string</b> containing commands.</p>
  <p/>
  <p>Nelson provides control over whether a callback function can be interrupted during its execution. In some cases, allowing interruptions might be desirable, such as enabling users to stop an animation loop through an interrupting callback. However, in scenarios where the execution order of callbacks is crucial, it might be necessary to prevent interruptions to maintain the intended behavior, such as ensuring smooth responsiveness in applications that respond to pointer movements.</p>
  <p/>
  <p>Callback Interruption Behavior:</p>
  <p/>
  <p>Callbacks are executed in the order they are queued. When a callback is running and another user action triggers a second callback, this second callback attempts to interrupt the first one. The first callback is referred to as the "running callback," while the second is the "interrupting callback."</p>
  <p/>
  <p>In some cases, specific commands within the running callback prompt Nelson to process any pending callbacks in the queue.</p>
  <p>When Nelson encounters one of these commands such as <b>drawnow</b>, <b>figure</b>, <b>waitfor</b>, or <b>pause</b> it evaluates whether an interruption should occur.</p>
  <p/>
  <p>No Interruption: If the running callback does not include any of these commands, Nelson will complete the running callback before executing the interrupting callback.</p>
  <p/>
  <p>Interruption Conditions: If the running callback includes any of these commands, the behavior depends on the Interruptible property of the object that owns the running callback:</p>
  <p/>
  <p>If <b>Interruptible</b> is set to <b>'on'</b>, Nelson allows the interruption. The running callback is paused, the interrupting callback is executed, and once it is finished, Nelson resumes the execution of the running callback.</p>
  <p>If <b>Interruptible</b> is set to <b>'off'</b>, the interruption is blocked. The <b>BusyAction</b> property of the interrupting callback then dictates the next step:</p>
  <p>If <b>BusyAction</b> is <b>'queue'</b>, the interrupting callback will be executed after the running callback completes.</p>
  <p>If <b>BusyAction</b> is <b>'cancel'</b>, the interrupting callback is discarded and not executed.</p>
  <p>By default, the <b>Interruptible</b> property is <b>'on'</b>, and <b>BusyAction</b> is <b>'queue'</b>.</p>
  <p/>
  <p>Notably, certain callbacks specifically <b>DeleteFcn</b>, <b>CloseRequestFcn</b>, and <b>SizeChangedFcn</b> will interrupt the running callback regardless of the Interruptible property's value.</p>

## Example

uicontrol demo Interruptible

```matlab
addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible
```

<img src="uicontrol_6_E87E65E2.png" align="middle"/>

## See also

[uicontrol](uicontrol.md), [drawnow](drawnow.md), [waitfor](waitfor.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET