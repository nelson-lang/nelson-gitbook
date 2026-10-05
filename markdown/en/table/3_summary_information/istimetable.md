# istimetable

Determine if input is a timetable.

## 📝 Syntax

- tf = istimetable(A)

## 📥 Input argument

- A - Input array.

## 📤 Output argument

- tf - Logical scalar.

## 📄 Description


<b>istimetable(A)</b> returns true when <b>A</b> is a timetable.

## 💡 Example



```matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2]);
istimetable(TT)
```


## 🔗 See also

[timetable](../../table/1_create_convert_tables/timetable.md), [istabular](../../table/3_summary_information/istabular.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
