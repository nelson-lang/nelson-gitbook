# nelson.io.RowFilter

Object that stores a row filter expression.

## 📝 Syntax

- rf = rowfilter(names)
- expr = rf.VariableName operator value
- T = expr.apply(T)

## 📥 Input argument

- names - variable names specified as a string array or cell array of character vectors.
- T - a table or timetable.

## 📤 Output argument

- rf - a <b>nelson.io.RowFilter</b> object.
- expr - a <b>nelson.io.RowFilter</b> object containing a filter expression.

## 📄 Description


<b>nelson.io.RowFilter</b> stores the variable names and expression used to select rows. 

Variable names are accessed with dot notation. Relational and logical operators create a filter expression. The expression is evaluated when <b>apply</b> is called or when the object is used as a <b>RowFilter</b> argument for Parquet reading functions. 

The <b>variables</b> method returns the names referenced by the expression.

## 💡 Example



```matlab
T = table([1; 2; 3; 4], [10; 20; 30; 40], ...
  'VariableNames', {'Id', 'Value'});
rf = rowfilter({'Id', 'Value'});
expr = rf.Id > 1 & rf.Value <= 30;
expr.variables()
R = expr.apply(T)
```


## 🔗 See also

[rowfilter](../parquet/rowfilter.md), [parquetread](../parquet/parquetread.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
