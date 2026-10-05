# mergevars

Merge table variables.

## 📝 Syntax

- T2 = mergevars(T, vars)
- T2 = mergevars(T, vars, 'NewVariableName', name)

## 📥 Input argument

- T - Input table.
- vars - Variables to merge.

## 📤 Output argument

- T2 - Table with merged variables.

## 📄 Description


<b>mergevars</b> combines selected variables into one table variable.

## 💡 Example



```matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'});
R = mergevars(T, {'A', 'B'}, 'NewVariableName', 'AB')
```


## 🔗 See also

[splitvars](../../table/4_sort_filter_rearrange/splitvars.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
