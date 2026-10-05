# varfun

Apply a function to table variables.

## 📝 Syntax

- R = varfun(fun, T)
- R = varfun(fun, T, 'InputVariables', vars)

## 📥 Input argument

- fun - Function handle.
- T - Input table.

## 📤 Output argument

- R - Result table, array, or cell array depending on OutputFormat.

## 📄 Description


<b>varfun</b> applies a function independently to selected variables.

## 💡 Example



```matlab
T = table([1; 2; 4], [10; 20; 30], 'VariableNames', {'X', 'Y'});
R = varfun(@mean, T)
```


## 🔗 See also

[rowfun](../../table/7_apply_functions/rowfun.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
