# timerfindall

Find all timer objects that match property criteria, including hidden timers.

## 📝 Syntax

- out = timerfindall()
- out = timerfindall('PropertyName', PropertyValue, ...)
- out = timerfindall(t, 'PropertyName', PropertyValue, ...)
- out = timerfindall(values)

## 📥 Input argument

- t - Timer object array used as the search source.
- PropertyName, PropertyValue - Property criteria. Returned timers must match all requested values.
- values - Scalar structure whose fields contain property criteria.

## 📤 Output argument

- out - Array of matching timer objects, including objects whose <b>ObjectVisibility</b> property is <b>off</b>.

## 📄 Description

<b>timerfindall</b> returns timer objects that match all specified property criteria. Unlike <b>timerfind</b>, it includes hidden timers.

It can also return timer objects whose original variable has gone out of scope, until those timers are deleted.

## 💡 Examples

Find a hidden timer by tag.

```matlab
t = timer('ObjectVisibility', 'off', ...
  'Tag', 'demo-hidden', ...
  'TimerFcn', @(src, event) disp('hidden'));
visibleOnly = timerfind('Tag', 'demo-hidden')
includingHidden = timerfindall('Tag', 'demo-hidden')
delete(t);
```

Use a criteria structure.

```matlab
t = timer('Name', 'criteriaTimer', ...
  'Tag', 'criteria', ...
  'TimerFcn', @(src, event) disp('criteria'));
criteria = struct('Name', 'criteriaTimer', 'Tag', 'criteria');
found = timerfindall(criteria)
delete(t);
```

## 🔗 See also

[timer](../../time/timer.md), [timerfind](../../time/timerfind.md), [get](../../time/timer.get.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
