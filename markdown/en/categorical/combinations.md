# combinations

Generate all combinations of categorical values.

## 📝 Syntax

- T = combinations(A1, A2, ...)

## 📥 Input argument

- A1, A2, ... - Input arrays. Each input is converted to a column before the combinations are formed.

## 📤 Output argument

- T - Table containing one row for each combination of input elements.

## 📄 Description

<b>combinations</b> forms a table containing the Cartesian product of the supplied arrays.

When an input variable has a name, that name is reused as the corresponding table variable name.

## 💡 Example

Combine two categorical arrays.

```matlab
A = categorical({'small','large'}); B = categorical({'red','blue'}); T = combinations(A, B)
```

## 🔗 See also

[categorical](../categorical/categorical.md), [table](../table/table.md), [height](../table/height.md), [width](../table/width.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
