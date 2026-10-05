# symvar

Determine the variables in an expression.

## 📝 Syntax

- v = symvar(expr)

## 📥 Input argument

- expr - Expression as text (character vector, string scalar) or a function handle.

## 📤 Output argument

- v - Column cell array of variable names.

## 📄 Description


<b>symvar</b> returns the names of the variables used in <b>expr</b>, sorted alphabetically and without duplicates.

Identifiers that resolve to a function or a builtin (including the special values <b>pi</b>, <b>i</b>, <b>j</b>, <b>eps</b>, <b>Inf</b> and <b>NaN</b>), language keywords and field access names are not reported as variables.

## 💡 Example



```matlab
v = symvar('sin(x) + a*y')
```


## 🔗 See also

[vectorize](vectorize.md), [func2str](../function_handle/func2str.md), [iskeyword](../interpreter/iskeyword.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
