# timerange

Time range for timetable row subscripting.

## 📝 Syntax

- S = timerange(startTime, endTime)
- S = timerange(startTime, endTime, intervalType)
- S = timerange(timePeriod, datetimeUnit)

## 📥 Input argument

- startTime, endTime - Datetime, duration, or text scalar limits.
- intervalType - 'openright', 'closedleft', 'openleft', 'closedright', 'open', or 'closed'.
- datetimeUnit - Calendar unit used to span a full period.

## 📤 Output argument

- S - Timetable row subscript.

## 📄 Description

<b>timerange</b> creates a row subscript for timetables. The default interval is half-open: it includes the start time and excludes the end time.

Text limits <b>'-inf'</b> and <b>'inf'</b> create one-sided ranges.

## 💡 Example

```matlab
TT = timetable(seconds((1:5)'), (10:10:50)', 'VariableNames', {'A'});
TT(timerange(seconds(2), seconds(4), 'closed'), :)
```

## 🔗 See also

[timetable](../../table/timetable.md), [withtol](../../table/withtol.md), [retime](../../table/retime.md), [synchronize](../../table/synchronize.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
