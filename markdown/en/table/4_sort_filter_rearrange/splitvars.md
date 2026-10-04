# splitvars

Split multicolumn table variables.

## 📝 Syntax

- T2 = splitvars(T, vars)
- T2 = splitvars(T, vars, 'NewVariableNames', names)

## 📥 Input argument

- T - Input table.
- vars - Variables to split.

## 📤 Output argument

- T2 - Table with split variables.

## 📄 Description

<b>splitvars</b> replaces a multicolumn variable with separate table variables.

## 💡 Example

```matlab
T = table([1 3; 2 4], 'VariableNames', {'AB'});
R = splitvars(T, 'AB', 'NewVariableNames', {'A', 'B'})
```

## 🔗 See also

[mergevars](../../table/mergevars.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
