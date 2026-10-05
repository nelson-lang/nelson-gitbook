# timer.get

Get timer property values.

## 📝 Syntax

- value = get(t, 'PropertyName')
- values = get(t)

## 📥 Input argument

- t - Timer object. Use a scalar timer when requesting all properties.
- PropertyName - Name of the property to query.

## 📤 Output argument

- value - Requested property value.
- values - Scalar structure containing the timer property values.

## 📄 Description


<b>get</b> returns the value of a named timer property. Calling <b>get</b> with only a scalar timer returns a structure containing all timer properties, including read-only properties such as <b>Running</b>, <b>TasksExecuted</b>, <b>AveragePeriod</b>, and <b>InstantPeriod</b>.

## 💡 Examples

Query one property and then all properties.

```matlab
t = timer('Name', 'getExample', ...
  'StartDelay', 0.2, ...
  'TimerFcn', @(src, event) disp('done'));
delay = get(t, 'StartDelay')
props = get(t)
delete(t);
```
Read the number of completed tasks after a repeated timer finishes.

```matlab
t = timer('ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 2, ...
  'TimerFcn', @(src, event) disp('tick'));
start(t);
wait(t);
executed = get(t, 'TasksExecuted')
delete(t);
```


## 🔗 See also

[timer](../../time/7_timers/timer.md), [set](../../time/7_timers/timer.set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
