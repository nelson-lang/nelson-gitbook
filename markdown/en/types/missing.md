# missing

Return a missing value.

## 📝 Syntax

- m = missing()

## 📤 Output argument

- m - a missing value for use in arrays and tables

## 📄 Description

<b>missing</b> returns a special value to represent missing (undefined data). When assigned into an array or table, the <b>missing</b> value is automatically converted into the standard missing value used by the array’s data type.

## 💡 Example

```matlab

A = missing()
A = double([1, 2, missing()])
B = string(["foo", missing()])
C = struct("Name", "Alice", "Age", missing())

```

## 🔗 See also

[ismissing](../data_analysis/ismissing.md), [missing](../types/missing.md), [NaN](../constructors_functions/NaN.md), [string](../string/string.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
