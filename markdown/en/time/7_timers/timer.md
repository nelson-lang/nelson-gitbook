# timer

Create a timer object that runs commands after a delay or at repeated intervals.

## 📝 Syntax

- t = timer()
- t = timer('PropertyName', PropertyValue, ...)

## 📥 Input argument

- PropertyName - Timer property name.
- PropertyValue - Value assigned to the timer property.

## 📤 Output argument

- t - Timer object.

## 📄 Description

<b>timer</b> creates a timer object. A timer object can execute a callback once, after a delay, at a future date, or repeatedly until it completes the requested number of tasks or is stopped.

The callback to execute is stored in the <b>TimerFcn</b> property. The callback can be a function handle, a cell array whose first element is a function handle, a character vector, or a string scalar. Function handle callbacks receive the timer object and an event structure.

Timer objects remain registered after the variable that held them goes out of scope. Use <b>delete</b> when a timer is no longer needed.

Important timer properties are listed below.

| Property         | Description                                                                                            |
| ---------------- | ------------------------------------------------------------------------------------------------------ |
| BusyMode         | Action used when fixed-rate timer callbacks cannot run immediately: **drop**, **queue**, or **error**. |
| ExecutionMode    | Scheduling mode: **singleShot**, **fixedRate**, **fixedDelay**, or **fixedSpacing**.                   |
| Period           | Time in seconds between repeated timer executions.                                                     |
| StartDelay       | Delay in seconds before the first timer execution.                                                     |
| TasksToExecute   | Number of times to execute **TimerFcn**. The default value is **Inf**.                                 |
| TasksExecuted    | Read-only count of completed timer callback executions.                                                |
| Running          | Read-only value, **on** while the timer is active and **off** otherwise.                               |
| ObjectVisibility | Visibility used by **timerfind**. Hidden timers are still returned by **timerfindall**.                |

Use <b>start</b> to start a timer immediately, <b>startat</b> to start it at a specific date and time, <b>stop</b> to stop it, <b>wait</b> to block until it stops, and <b>delete</b> to remove it when it is no longer needed.

## 💡 Examples

Create a single-shot timer that runs after a short delay.

```matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('timer fired'));
start(t);
wait(t);
delete(t);
```

Create a timer that runs three times and reports the execution count.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp(get(src, 'TasksExecuted')));
start(t);
wait(t);
get(t, 'TasksExecuted')
delete(t);
```

## 🔗 See also

[start](../../time/start.md), [startat](../../time/startat.md), [stop](../../time/stop.md), [wait](../../time/wait.md), [timerfind](../../time/timerfind.md), [timerfindall](../../time/timerfindall.md), [Timer Callback Functions](../../time/timer callback functions.md), [Timer Queuing Conflicts](../../time/handling timer queuing conflicts.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
