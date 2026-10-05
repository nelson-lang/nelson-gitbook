# start

Start a timer object.

## 📝 Syntax

- start(t)

## 📥 Input argument

- t - Timer object or timer object array.

## 📄 Description


<b>start</b> starts the timer using its <b>StartDelay</b>, <b>ExecutionMode</b>, <b>Period</b>, and <b>TasksToExecute</b> properties. The timer must have a nonempty <b>TimerFcn</b>. 

<b>start</b> returns immediately after the timer is scheduled. Use <b>wait</b> when the current command sequence must block until the timer finishes.

## 💡 Examples

Start a single-shot timer.

```matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('started and fired'));
start(t);
wait(t);
delete(t);
```
Start a repeated timer.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 3, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
delete(t);
```


## 🔗 See also

[timer](../../time/7_timers/timer.md), [startat](../../time/7_timers/startat.md), [stop](../../time/7_timers/stop.md), [wait](../../time/7_timers/wait.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
