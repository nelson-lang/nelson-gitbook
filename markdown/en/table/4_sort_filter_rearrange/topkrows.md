# topkrows

Return top rows of a table or timetable.

## 📝 Syntax

- B = topkrows(A, k)
- [B, I] = topkrows(A, k, vars)

## 📥 Input argument

- A - Input table or timetable.
- k - Number of rows.

## 📤 Output argument

- B - Output table or timetable.
- I - Selected row indices.

## 📄 Description


<b>topkrows</b> returns the first <b>k</b> rows after sorting by row times or selected variables.

## 💡 Example


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 30; 20], 'VariableNames', {'A'});
topkrows(TT, 2, 'A')

```


## 🔗 See also

[timetable](../../table/1_create_convert_tables/timetable.md), [sort](../../data_analysis/sort.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
