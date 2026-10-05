# sortrows

Sort rows of a table or timetable.

## 📝 Syntax

- B = sortrows(A)
- [B, I] = sortrows(A, vars, direction)

## 📥 Input argument

- A - Input table or timetable.
- vars - Variables or row-time dimension used for sorting.
- direction - Sort direction: 'ascend' (default) or 'descend', or a cell array or string array with one direction per sorting variable.

## 📤 Output argument

- B - Sorted table or timetable.
- I - Sort indices.

## 📄 Description


<b>sortrows</b> sorts table rows by the selected variables, or timetable rows by row times or selected variables.

Rows are compared variable after variable. Each variable is sorted in the order of its own type (numeric, logical, text, categorical, datetime, duration); a variable with several columns is compared column by column. Missing values are placed last in both ascending and descending order. Ties keep their original order.

## 💡 Example


```matlab
TT = timetable(seconds([2; 1]), [20; 10], 'VariableNames', {'A'});
sortrows(TT)
T = table([10; 9; 2], {'a'; 'b'; 'c'});
[B, I] = sortrows(T, {'Var1', 'Var2'}, {'descend', 'ascend'})

```


## 🔗 See also

[issortedrows](../../table/8_timetables_events/issortedrows.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
