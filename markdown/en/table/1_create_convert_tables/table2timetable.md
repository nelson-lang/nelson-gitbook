# table2timetable

Convert table to timetable.

## 📝 Syntax

- TT = table2timetable(T, 'RowTimes', rowTimes)
- TT = table2timetable(T, 'TimeStep', dt)
- TT = table2timetable(T, 'SampleRate', fs)

## 📥 Input argument

- T - Table object.

## 📤 Output argument

- TT - Timetable object.

## 📄 Description


<b>table2timetable</b> converts a table to a timetable and assigns row times to the output rows.

## 💡 Example



```matlab
T = table([1; 2; 3], 'VariableNames', {'A'});
t = datetime(2024, 1, 1) + days(0:2)';
TT = table2timetable(T, 'RowTimes', t)
```


## 🔗 See also

[timetable2table](../../table/1_create_convert_tables/timetable2table.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
