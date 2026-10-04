# issortedrows

Determine if timetable rows are sorted.

## 📝 Syntax

- tf = issortedrows(A)

## 📥 Input argument

- A - Input timetable.

## 📤 Output argument

- tf - Logical scalar.

## 📄 Description

<b>issortedrows</b> returns true when timetable rows are sorted by row times.

## 💡 Example

```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
issortedrows(TT)

```

## 🔗 See also

[sortrows](../../table/sortrows.md), [issorted](../../data_analysis/issorted.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
