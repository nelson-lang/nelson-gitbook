# startat

Start a timer at a specified date and time.

## 📝 Syntax

- startat(t, firingTime)
- startat(t, year, month, day)
- startat(t, year, month, day, hour, minute, second)

## 📥 Input argument

- t - Timer object or timer object array.
- firingTime - Start time as a serial date number, date vector, datetime value, character vector, or string scalar.
- year, month, day, hour, minute, second - Date and time components. The hour, minute, and second inputs are optional.

## 📄 Description

<b>startat</b> starts the timer at a future date and time. The start time must be in the future and no more than 25 days from the current time.

For a timer array, the start time can be scalar or can contain one start time for each timer in the array.

## 💡 Examples

Start a timer approximately two seconds from now.

```matlab
t = timer('TimerFcn', @(src, event) disp('future timer fired'));
startat(t, now() + 2 / 86400);
wait(t);
delete(t);
```

Use date and time components to schedule a timer.

```matlab
t = timer('TimerFcn', @(src, event) disp('scheduled'));
v = datevec(now() + 2 / 86400);
startat(t, v(1), v(2), v(3), v(4), v(5), v(6));
wait(t);
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
