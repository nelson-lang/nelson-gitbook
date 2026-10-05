# timer.delete

Stop and invalidate timer objects.

## 📝 Syntax

- delete(t)

## 📥 Input argument

- t - Timer object or timer object array.

## 📄 Description


<b>delete</b> stops timer objects and invalidates their handles. After deletion, <b>isvalid</b> returns false for those handles. 

Delete timers when they are no longer needed. A deleted timer cannot be restarted.

## 💡 Examples

Delete a timer after it has finished running.

```matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp('done'));
start(t);
wait(t);
delete(t);
isvalid(t)
```
Delete a running timer. The timer is stopped before the handle is invalidated.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.2, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
delete(t);
isvalid(t)
```


## 🔗 See also

[timer](../../time/7_timers/timer.md), [isvalid](../../time/7_timers/timer.isvalid.md), [stop](../../time/7_timers/stop.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
