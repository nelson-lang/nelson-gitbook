# array2timetable

Convert homogeneous array to timetable.

## 📝 Syntax

- TT = array2timetable(A, 'RowTimes', rowTimes)

## 📥 Input argument

- A - Input array.
- rowTimes - datetime or duration vector.

## 📤 Output argument

- TT - Timetable object.

## 📄 Description


<b>array2timetable</b> converts the columns of <b>A</b> to variables in a timetable. 

Use <b>'VariableNames'</b> to provide variable names for the output timetable.

## 💡 Example



```matlab
t = datetime(2024, 1, 1) + days(0:2)';
A = [1 10; 2 20; 3 30];
TT = array2timetable(A, 'RowTimes', t)
```


## 🔗 See also

[array2table](../../table/1_create_convert_tables/array2table.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
