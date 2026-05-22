# isbetween

Determine array elements between lower and upper bounds.

## 📝 Syntax

- TF = isbetween(A, lower, upper)
- TF = isbetween(A, lower, upper, intervalType)
- TF = isbetween(..., name, value)

## 📥 Input argument

- A - array or table.
- lower, upper - lower and upper bounds.
- intervalType - 'closed', 'open', 'openleft', 'openright', 'closedleft', or 'closedright'.
- name, value - For table inputs, supports 'DataVariables' and 'OutputFormat'.

## 📤 Output argument

- TF - logical array or logical table.

## 📄 Description

<b>isbetween</b> returns true where <b>A</b> is inside the interval defined by <b>lower</b> and <b>upper</b>. The default interval is closed.

## 💡 Examples

```matlab
A = [1 2 3 4 5];
isbetween(A, 2, 4)
isbetween(A, 2, 4, 'open')
```

```matlab
T = table([1; 2; 3], [4; 5; 6], 'VariableNames', {'A', 'B'});
isbetween(T, 2, 5)
isbetween(T, 2, 5, 'DataVariables', 'B', 'OutputFormat', 'tabular')
```

## 🔗 See also

[allbetween](../data_analysis/allbetween.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
