# withinrange

Find timetable rows within a time range.

## 📝 Syntax

- [tf, tfRow] = withinrange(TT, timeSpec)

## 📥 Input argument

- TT - Input timetable.
- timeSpec - Time range specification.

## 📤 Output argument

- tf - Logical scalar.
- tfRow - Logical row selector.

## 📄 Description


<b>withinrange</b> tests whether timetable row times are within a specified time range.

## 💡 Example


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
withinrange(TT, seconds([1; 2]))

```


## 🔗 See also

[containsrange](../../table/8_timetables_events/containsrange.md), [overlapsrange](../../table/8_timetables_events/overlapsrange.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
