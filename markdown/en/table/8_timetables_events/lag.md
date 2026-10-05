# lag

Shift timetable data by rows.

## 📝 Syntax

- TT2 = lag(TT, n)

## 📥 Input argument

- TT - Input timetable.
- n - Integer row shift.

## 📤 Output argument

- TT2 - Shifted timetable.

## 📄 Description


<b>lag</b> shifts timetable variables by <b>n</b> rows while keeping row times unchanged.

## 💡 Example


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
lag(TT)

```


## 🔗 See also

[timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
