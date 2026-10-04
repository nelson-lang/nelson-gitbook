# timer.set

Set timer property values.

## 📝 Syntax

- set(t, 'PropertyName', PropertyValue, ...)
- set(t, values)
- t.PropertyName = PropertyValue

## 📥 Input argument

- t - Timer object or timer object array.
- PropertyName - Name of a writable timer property.
- PropertyValue - New value for the property.
- values - Scalar structure whose fields are timer property names. Read-only fields are ignored.

## 📄 Description

<b>set</b> changes writable timer properties. Writable properties include <b>BusyMode</b>, <b>ErrorFcn</b>, <b>ExecutionMode</b>, <b>Name</b>, <b>ObjectVisibility</b>, <b>Period</b>, <b>StartDelay</b>, <b>StartFcn</b>, <b>StopFcn</b>, <b>Tag</b>, <b>TasksToExecute</b>, <b>TimerFcn</b>, and <b>UserData</b>.

Do not change scheduling properties such as <b>BusyMode</b>, <b>ExecutionMode</b>, <b>Period</b>, or <b>StartDelay</b> while a timer is running.

## 💡 Examples

Configure a timer with property name and value pairs.

```matlab
t = timer();
set(t, 'Name', 'setExample', ...
  'ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 2, ...
  'TimerFcn', @(src, event) disp(get(src, 'Name')));
start(t);
wait(t);
delete(t);
```

Set multiple properties from a structure.

```matlab
t = timer('TimerFcn', @(src, event) disp('done'));
values = struct();
values.Tag = 'batch';
values.StartDelay = 0.1;
set(t, values);
get(t, 'Tag')
delete(t);
```

## 🔗 See also

[timer](../../time/timer.md), [get](../../time/timer.get.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
