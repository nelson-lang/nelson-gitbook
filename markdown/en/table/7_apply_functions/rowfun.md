# rowfun

Apply a function to table rows.

## 📝 Syntax

- R = rowfun(fun, T)
- R = rowfun(fun, T, 'InputVariables', vars)

## 📥 Input argument

- fun - Function handle.
- T - Input table.

## 📤 Output argument

- R - Result table, array, or cell array depending on OutputFormat.

## 📄 Description


<b>rowfun</b> applies a function to each row using selected variables as inputs.

## 💡 Example



```matlab
T = table([1; 2], [10; 20], 'VariableNames', {'X', 'Y'});
R = rowfun(@(x, y) x + y, T, 'InputVariables', {'X', 'Y'}, 'OutputVariableNames', 'Sum')
```


## 🔗 See also

[varfun](../../table/7_apply_functions/varfun.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
