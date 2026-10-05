# isregular

Determine if timetable row times are regularly spaced.

## 📝 Syntax

- tf = isregular(TT)

## 📥 Input argument

- TT - Input timetable.

## 📤 Output argument

- tf - Logical scalar.

## 📄 Description


<b>isregular</b> returns true when all adjacent row-time differences are equal.

## 💡 Example


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
isregular(TT)

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
