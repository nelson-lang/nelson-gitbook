# mustBeBetween

Validate that all elements are within a specified range.

## 📝 Syntax

- mustBeBetween(A, lower, upper)
- mustBeBetween(A, lower, upper, intervalType)
- mustBeBetween(..., name, value)
- mustBeBetween(..., argPosition)

## 📥 Input argument

- A - array or table to validate.
- lower, upper - lower and upper bounds.
- intervalType - 'closed', 'open', 'openleft', 'openright', 'closedleft', or 'closedright'.
- name, value - For table inputs, supports 'DataVariables'.
- argPosition - optional positive integer value: position of input argument.

## 📄 Description

<b>mustBeBetween</b> raises an error if any selected element of <b>A</b> is outside the interval defined by <b>lower</b> and <b>upper</b>. The default interval is closed.

## 💡 Examples

```matlab
mustBeBetween([3 4 5], 0, 5)
mustBeBetween([3 4], 0, 5, 'open')
```

```matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
mustBeBetween(T, 2, 4, 'DataVariables', 'A')
```

## 🔗 See also

[allbetween](../data_analysis/allbetween.md), [isbetween](../data_analysis/isbetween.md), [mustBeInRange](../validators/mustBeInRange.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
