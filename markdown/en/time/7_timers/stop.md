# stop

Stop a running timer object.

## 📝 Syntax

- stop(t)

## 📥 Input argument

- t - Timer object or timer object array.

## 📄 Description

<b>stop</b> stops running timers. If a timer has a <b>StopFcn</b>, Nelson executes it when the timer transitions from running to stopped.

Calling <b>stop</b> on a timer that is already stopped leaves the timer stopped.

## 💡 Example

Stop a repeated timer before it reaches its task limit.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TasksToExecute', Inf, ...
  'TimerFcn', @(src, event) disp('tick'), ...
  'StopFcn', @(src, event) disp('stopped'));
start(t);
sleep(0.35);
stop(t);
delete(t);
```

## 🔗 See also

[timer](../../time/timer.md), [start](../../time/start.md), [wait](../../time/wait.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
