# timetable2table

Convert timetable to table.

## 📝 Syntax

- T = timetable2table(TT)
- T = timetable2table(TT, 'ConvertRowTimes', tf)

## 📥 Input argument

- TT - Timetable object.

## 📤 Output argument

- T - Table object.

## 📄 Description

<b>timetable2table</b> converts a timetable to a table.

When <b>'ConvertRowTimes'</b> is true, row times are inserted as the first table variable.

## 💡 Example

```matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2], 'VariableNames', {'A'});
T = timetable2table(TT, 'ConvertRowTimes', true)
```

## 🔗 See also

[table2timetable](../../table/table2timetable.md), [table](../../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
