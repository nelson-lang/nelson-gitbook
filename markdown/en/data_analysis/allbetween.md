# allbetween

Determine whether all array elements are between lower and upper bounds.

## 📝 Syntax

- tf = allbetween(A, lower, upper)
- tf = allbetween(A, lower, upper, intervalType)
- tf = allbetween(..., name, value)

## 📥 Input argument

- A - array or table.
- lower, upper - lower and upper bounds.
- intervalType - 'closed', 'open', 'openleft', 'openright', 'closedleft', or 'closedright'.

## 📤 Output argument

- tf - logical scalar.

## 📄 Description

<b>allbetween</b> returns true if every selected element of <b>A</b> is inside the interval defined by <b>lower</b> and <b>upper</b>.

## 💡 Examples

```matlab
A = [2 3 4];
allbetween(A, 2, 4)
allbetween(A, 2, 4, 'open')
```

```matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
allbetween(T, 2, 4, 'DataVariables', 'A')
allbetween(T, 2, 12, 'DataVariables', {'A', 'B'})
```

## 🔗 See also

[isbetween](../data_analysis/isbetween.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
