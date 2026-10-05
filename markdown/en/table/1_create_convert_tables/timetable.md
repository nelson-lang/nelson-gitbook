# timetable

Create timetable from variables and row times.

## 📝 Syntax

- TT = timetable(rowTimes, var1, ..., varN)
- TT = timetable(var1, ..., varN, 'RowTimes', rowTimes)
- TT = timetable('Size', sz, 'VariableTypes', types)

## 📥 Input argument

- rowTimes - datetime or duration vector used as row times.
- var1, ..., varN - Variables with one row per row time.

## 📤 Output argument

- TT - Timetable object.

## 📄 Description


<b>timetable</b> creates a timetable, a tabular object whose rows are identified by times. 

Row times can be provided as the first input or with the <b>'RowTimes'</b> name-value argument. 

Variable names, dimension names, description, user data, and custom properties are stored in <b>TT.Properties</b>.

## 💡 Example



```matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [10; 20; 30], 'VariableNames', {'A'});
TT.Properties.RowTimes
```


## 🔗 See also

[table](../../table/1_create_convert_tables/table.md), [array2timetable](../../table/1_create_convert_tables/array2timetable.md), [table2timetable](../../table/1_create_convert_tables/table2timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
