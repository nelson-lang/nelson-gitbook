# convertvars

Convert table variables.

## 📝 Syntax

- T2 = convertvars(T, vars, fun)

## 📥 Input argument

- T - Input table.
- vars - Variables to convert.
- fun - Function handle applied to selected variables.

## 📤 Output argument

- T2 - Table with converted variables.

## 📄 Description


<b>convertvars</b> applies a conversion function to selected variables.

## 💡 Example



```matlab
T = table([1; 2], 'VariableNames', {'A'});
R = convertvars(T, 'A', @(x) single(x))
```


## 🔗 See also

[vartype](../../table/1_create_convert_tables/vartype.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
