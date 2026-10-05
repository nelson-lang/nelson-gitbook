# vartype

Select table variables by type.

## 📝 Syntax

- S = vartype(typeName)

## 📥 Input argument

- typeName - Class name used to select variables.

## 📤 Output argument

- S - Variable type selector.

## 📄 Description


<b>vartype</b> creates a selector that can be used by table functions such as <b>varfun</b> and <b>convertvars</b>.

## 💡 Example



```matlab
T = table([1; 2], {'a'; 'b'}, 'VariableNames', {'A', 'B'});
R = varfun(@mean, T, 'InputVariables', vartype('double'))
```


## 🔗 See also

[varfun](../../table/7_apply_functions/varfun.md), [convertvars](../../table/1_create_convert_tables/convertvars.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
