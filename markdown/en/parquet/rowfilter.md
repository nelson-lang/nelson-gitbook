# rowfilter

Create a row filter expression.

## 📝 Syntax

- rf = rowfilter(names)
- rf = rowfilter(T)
- rf = rowfilter(info)

## 📥 Input argument

- names - variable names specified as a string array or cell array of character vectors.
- T - a table or timetable whose variable names are used by the filter.
- info - a <b>nelson.io.parquet.ParquetInfo</b> object whose variable names are used by the filter.

## 📤 Output argument

- rf - a <b>nelson.io.RowFilter</b> object.

## 📄 Description

<b>rowfilter</b> creates a filter object that exposes variable names through dot notation.

Use relational operators <b>></b>, <b>>=</b>, <b><</b>, <b><=</b>, <b>==</b>, and <b>~=</b> to create comparisons. Use logical operators <b>&</b>, <b>\|</b>, and <b>~</b> to combine expressions.

The resulting object can be passed to <b>parquetread</b> or <b>parquetDatastore</b> with the <b>RowFilter</b> name-value pair. It can also be applied directly to a table with <b>rf.apply(T)</b>.

## 💡 Examples

```matlab
T = table([1; 2; 3; 4], [10; 20; 30; 40], ...
  'VariableNames', {'Id', 'Value'});
rf = rowfilter(T);
R = (rf.Id >= 2 & rf.Value < 40).apply(T)
```

```matlab
filename = [tempdir(), 'doc_rowfilter.parquet'];
T = table([1; 2; 3; 4], [10; 20; 30; 40], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
info = parquetinfo(filename);
rf = rowfilter(info);
R = parquetread(filename, 'RowFilter', rf.Value >= 30)
```

## 🔗 See also

[nelson.io.RowFilter](../parquet/class_RowFilter.md), [parquetread](../parquet/parquetread.md), [parquetDatastore](../parquet/parquetDatastore.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
