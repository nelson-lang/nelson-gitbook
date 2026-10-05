# overlapsrange

Determine if timetable row times overlap a time range.

## 📝 Syntax

- [tf, tfRow] = overlapsrange(TT, timeSpec)

## 📥 Input argument

- TT - Input timetable.
- timeSpec - Time range specification.

## 📤 Output argument

- tf - Logical scalar.
- tfRow - Logical row selector.

## 📄 Description


<b>overlapsrange</b> tests whether timetable row times overlap the specified time range.

## 💡 Example


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
overlapsrange(TT, seconds([2; 4]))

```


## 🔗 See also

[withinrange](../../table/8_timetables_events/withinrange.md), [containsrange](../../table/8_timetables_events/containsrange.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
