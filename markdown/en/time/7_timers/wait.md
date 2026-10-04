# wait

Wait for timer objects to stop.

## 📝 Syntax

- wait(t)

## 📥 Input argument

- t - Timer object or timer object array.

## 📄 Description

<b>wait</b> blocks until each timer in <b>t</b> stops. While it is waiting, Nelson continues processing timer callbacks so scheduled callbacks can complete.

Use <b>wait</b> in scripts and tests when later commands depend on timer callbacks having completed.

## 💡 Example

Wait until a repeated timer finishes all requested tasks.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
get(t, 'Running')
get(t, 'TasksExecuted')
delete(t);
```

## 🔗 See also

[timer](../../time/timer.md), [start](../../time/start.md), [stop](../../time/stop.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
