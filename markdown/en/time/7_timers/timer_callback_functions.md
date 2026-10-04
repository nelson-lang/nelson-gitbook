# Timer Callback Functions

Define commands that execute when timer events occur.

## 📄 Description

Timer callbacks can be delayed when another callback or a CPU-intensive task is already running.

A timer object has four callback properties. <b>StartFcn</b> runs when the timer starts. <b>TimerFcn</b> runs when the timer fires. <b>StopFcn</b> runs when the timer stops normally or after an error. <b>ErrorFcn</b> runs when a timer callback reports an error.

Set a callback property to one of these values:

| Value                             | Use                                                                                                                                              |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Function handle                   | Use a function that accepts the timer object and an event structure, for example **@myTimerFcn** or **@(src,event)disp(event.Type)**.            |
| Cell array                        | Pass extra arguments after the timer object and event structure. The first cell element is the function handle, followed by the extra arguments. |
| Character vector or string scalar | Evaluate Nelson commands directly. These callbacks do not receive the timer object or event structure as input arguments.                        |

Callback functions specified by function handle or cell array receive the timer object as the first input argument and an event structure as the second input argument. The event structure has a <b>Type</b> field and a <b>Data</b> field. <b>Type</b> is one of <b>StartFcn</b>, <b>TimerFcn</b>, <b>StopFcn</b>, or <b>ErrorFcn</b>. <b>Data.time</b> contains the event time as a serial date number.

For callbacks with application-specific arguments, use a cell array. Nelson calls the function with the timer object, the event structure, and then the extra arguments in the same order as they appear in the cell array.

## 💡 Examples

Display the event type from a timer callback.

```matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp(event.Type));
start(t);
wait(t);
delete(t);
```

Pass an extra argument to a callback by using a cell array.

```matlab
t = timer('TimerFcn', {@dispTimerMessage, 'timer fired'});
start(t);
wait(t);
delete(t);

function dispTimerMessage(src, event, message)
  disp([event.Type, ': ', message]);
end
```

## 🔗 See also

[timer](../../time/timer.md), [start](../../time/start.md), [stop](../../time/stop.md), [wait](../../time/wait.md), [Timer Queuing Conflicts](../../time/handling timer queuing conflicts.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
